-- Dummy data untuk tabel recommendations
INSERT INTO recommendations (type, title, content_url) VALUES
('Artikel', 'Cara Mengatasi Insomnia dengan Mudah', 'https://sejiwa.id/artikel/mengatasi-insomnia'),
('Video', 'Meditasi 10 Menit untuk Mengurangi Kecemasan', 'https://youtube.com/watch?v=dummy1'),
('Podcast', 'Menemukan Kembali Motivasi Diri', 'https://spotify.com/episode/dummy2'),
('Aktivitas', 'Latihan Relaksasi Otot Progresif', 'https://sejiwa.id/aktivitas/relaksasi-otot'),
('Artikel', 'Mengenal Tanda-Tanda Burnout di Tempat Kerja atau Kampus', 'https://sejiwa.id/artikel/mengenal-burnout');

-- Dummy data untuk tabel assessment_recommendations
-- Asumsi: ID pertanyaan 1-15 (Q01-Q15) dan ID rekomendasi 1-5 seperti yang diinsert di atas
INSERT INTO assessment_recommendations (recommendation_id, question_id, weight) VALUES
(1, 3, 5),  -- Rekomendasi 1 (Insomnia) untuk Pertanyaan 3 (Sulit tidur), bobot 5
(2, 9, 5),  -- Rekomendasi 2 (Meditasi Kecemasan) untuk Pertanyaan 9 (Merasa gugup/cemas), bobot 5
(2, 11, 4), -- Rekomendasi 2 (Meditasi Kecemasan) untuk Pertanyaan 11 (Terlalu mengkhawatirkan hal), bobot 4
(2, 15, 5), -- Rekomendasi 2 (Meditasi Kecemasan) untuk Pertanyaan 15 (Takut sesuatu buruk terjadi), bobot 5
(3, 1, 5),  -- Rekomendasi 3 (Motivasi) untuk Pertanyaan 1 (Kurang berminat/bergairah), bobot 5
(3, 2, 4),  -- Rekomendasi 3 (Motivasi) untuk Pertanyaan 2 (Merasa murung/sedih), bobot 4
(4, 12, 5), -- Rekomendasi 4 (Relaksasi) untuk Pertanyaan 12 (Sulit bersantai), bobot 5
(4, 13, 4), -- Rekomendasi 4 (Relaksasi) untuk Pertanyaan 13 (Sangat gelisah/sulit duduk diam), bobot 4
(5, 4, 4),  -- Rekomendasi 5 (Burnout) untuk Pertanyaan 4 (Merasa lelah/kurang tenaga), bobot 4
(5, 7, 3);  -- Rekomendasi 5 (Burnout) untuk Pertanyaan 7 (Sulit berkonsentrasi), bobot 3
