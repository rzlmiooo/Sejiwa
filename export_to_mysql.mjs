import pg from 'pg';
import fs from 'fs';
import dotenv from 'dotenv';
dotenv.config();
process.env.NODE_TLS_REJECT_UNAUTHORIZED = '0';

const { Client } = pg;

const client = new Client({
  connectionString: process.env.DATABASE_URL,
  ssl: { rejectUnauthorized: false }
});

const escapeString = (str) => {
  if (str === null || str === undefined) return 'NULL';
  if (typeof str === 'boolean') return str ? '1' : '0';
  if (typeof str === 'number') return str;
  if (str instanceof Date) {
      return `'${str.toISOString().replace('T', ' ').substring(0, 19)}'`;
  }
  if (typeof str === 'object') {
      str = JSON.stringify(str);
  }
  // Escape backslashes and single quotes for MySQL
  const escaped = String(str)
      .replace(/\\/g, '\\\\')
      .replace(/'/g, "\\'")
      .replace(/\n/g, '\\n')
      .replace(/\r/g, '\\r');
  return `'${escaped}'`;
};

async function exportData() {
  try {
    await client.connect();
    console.log('Connected to PostgreSQL...');

    // Get all tables in public schema
    const res = await client.query(`
      SELECT table_name 
      FROM information_schema.tables 
      WHERE table_schema = 'public' 
      AND table_type = 'BASE TABLE'
    `);

    const tables = res.rows.map(row => row.table_name);
    console.log(`Found ${tables.length} tables: ${tables.join(', ')}`);

    let sqlDump = `-- MySQL Data Migration for Sejiwa\n`;
    sqlDump += `SET FOREIGN_KEY_CHECKS = 0;\n\n`;

    for (const table of tables) {
      console.log(`Exporting table: ${table}`);
      const dataRes = await client.query(`SELECT * FROM "${table}"`);
      
      if (dataRes.rows.length === 0) {
          sqlDump += `-- Table ${table} is empty\n\n`;
          continue;
      }

      sqlDump += `-- Data for ${table}\n`;
      const columns = Object.keys(dataRes.rows[0]);
      
      // Batch inserts (e.g. 100 rows per INSERT statement to keep file clean)
      const batchSize = 100;
      for (let i = 0; i < dataRes.rows.length; i += batchSize) {
          const batch = dataRes.rows.slice(i, i + batchSize);
          let insertQuery = `INSERT INTO \`${table}\` (\`${columns.join('`, `')}\`) VALUES \n`;
          
          const values = batch.map(row => {
              return `(${columns.map(col => escapeString(row[col])).join(', ')})`;
          });

          insertQuery += values.join(',\n') + ';\n';
          sqlDump += insertQuery;
      }
      sqlDump += '\n';
    }

    sqlDump += `SET FOREIGN_KEY_CHECKS = 1;\n`;

    fs.writeFileSync('sejiwa_mysql.sql', sqlDump);
    console.log('Export complete! File saved as sejiwa_mysql.sql');
  } catch (err) {
    console.error('Error exporting data:', err);
  } finally {
    await client.end();
  }
}

exportData();
