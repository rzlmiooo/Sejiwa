-- MySQL Data Migration for Sejiwa
SET FOREIGN_KEY_CHECKS = 0;

-- Data for assessment_answers
INSERT INTO `assessment_answers` (`id`, `student_id`, `question_code`, `submitted_at`, `intensity`) VALUES 
(10, 10, 'Q01', '2026-05-21 07:10:22', NULL),
(11, 10, 'Q13', '2026-05-21 07:24:20', NULL),
(12, 18, 'Q01', '2026-07-08 16:08:40', NULL),
(13, 17, 'Q15', '2026-07-15 12:57:56', NULL),
(14, 17, 'Q01', '2026-07-15 13:06:15', NULL),
(15, 17, 'Q01', '2026-07-15 13:06:21', NULL),
(16, 17, 'Q01', '2026-07-15 13:06:30', NULL),
(17, 17, 'Q01', '2026-07-15 13:06:40', NULL);

-- Data for assessment_questions
INSERT INTO `assessment_questions` (`id`, `code`, `label`, `quote`) VALUES 
(1, 'Q01', 'Kurang berminat atau bergairah dalam melakukan apapun', 'Setiap langkah kecil adalah sebuah kemajuan. Mulailah dari hal yang sederhana hari ini.'),
(2, 'Q02', 'Merasa murung, sedih, atau putus asa', 'Tidak apa-apa untuk merasa lelah. Ingatlah bahwa badai pasti berlalu dan pelangi akan muncul.'),
(3, 'Q03', 'Sulit tidur, bangun tengah malam, atau tidur terlalu banyak', 'Tubuhmu butuh istirahat yang cukup. Berikan dirimu waktu untuk tenang dan pulih sepenuhnya.'),
(4, 'Q04', 'Merasa lelah atau kurang bertenaga', 'Tarik napas panjang. Beristirahatlah sejenak, energimu akan kembali perlahan-lahan.'),
(5, 'Q05', 'Kurang nafsu makan atau makan terlalu banyak', 'Rawatlah tubuhmu dengan baik, ia adalah kendaraanmu untuk mencapai hal-hal luar biasa.'),
(6, 'Q06', 'Merasa buruk tentang diri sendiri, merasa gagal, atau mengecewakan keluarga', 'Kamu jauh lebih berharga dari sekadar pencapaianmu. Kegagalan adalah batu loncatan, bukan akhir jalan.'),
(7, 'Q07', 'Sulit berkonsentrasi pada sesuatu, seperti membaca koran atau menonton televisi', 'Fokuskan pikiranmu pada saat ini. Lakukan satu hal pada satu waktu dengan perlahan.'),
(8, 'Q08', 'Bergerak atau berbicara sangat lambat sehingga orang lain memperhatikannya, atau sangat gelisah sehingga tidak bisa diam', 'Temukan ritmemu sendiri. Tidak perlu terburu-buru, yang terpenting adalah kamu terus maju sesuai dengan kecepatanmu.'),
(9, 'Q09', 'Merasa gugup, cemas, atau tegang', 'Kecemasanmu tidak mendefinisikan siapa dirimu. Pejamkan mata dan temukan ketenangan di setiap tarikan napasmu.'),
(10, 'Q10', 'Tidak mampu menghentikan atau mengendalikan kekhawatiran', 'Lepaskan beban atas hal-hal yang tidak bisa kamu kendalikan. Fokuslah pada hal yang bisa kamu lakukan hari ini.'),
(11, 'Q11', 'Terlalu mengkhawatirkan berbagai hal', 'Masa depan masih menjadi misteri, bernapaslah dan fokus buatlah momen saat ini menjadi berharga.'),
(12, 'Q12', 'Sulit bersantai', 'Memberi dirimu jeda untuk bersantai bukanlah kemalasan, melainkan keharusan untuk tetap sehat.'),
(13, 'Q13', 'Sangat gelisah sehingga sulit duduk diam', 'Salurkan kegelisahanmu pada kegiatan yang positif. Kamu akan menemukan kedamaian secara bertahap.'),
(14, 'Q14', 'Mudah kesal atau marah', 'Ambil waktu sejenak untuk menenangkan diri. Kedamaian sejati selalu dimulai dari dalam dirimu.'),
(15, 'Q15', 'Merasa takut seolah-olah sesuatu yang buruk akan terjadi', 'Ketakutan tersebut hanyalah ilusi sementara. Percayalah, kamu jauh lebih berani dan kuat dari yang kamu bayangkan.');

-- Data for assessment_recommendations
INSERT INTO `assessment_recommendations` (`id`, `recommendation_id`, `question_id`, `weight`) VALUES 
(1, 1, 3, 5),
(2, 2, 9, 5),
(3, 2, 11, 4),
(4, 2, 15, 5),
(5, 3, 1, 5),
(6, 3, 2, 4),
(7, 4, 12, 5),
(8, 4, 13, 4),
(9, 5, 4, 4),
(10, 5, 7, 3);

-- Data for bookings
INSERT INTO `bookings` (`id`, `schedule_id`, `student_id`, `counselor_id`, `status`, `created_at`) VALUES 
(4, 14, 10, 11, 'confirm', '2026-05-21 10:41:25'),
(6, 14, 12, 11, 'confirm', '2026-05-25 01:30:39'),
(5, 14, 10, 11, 'confirm', '2026-05-25 01:38:12'),
(7, 14, 10, 11, 'pending', '2026-05-25 01:59:13'),
(8, 14, 18, 11, 'pending', '2026-07-08 16:04:14'),
(9, 16, 17, 14, 'confirm', '2026-07-15 14:23:57'),
(10, 16, 17, 14, 'rejected', '2026-07-15 14:24:44');

-- Table consultations is empty

-- Table messages is empty

-- Data for recommendations
INSERT INTO `recommendations` (`id`, `type`, `title`, `content_url`) VALUES 
(1, 'artikel', 'Cara Mengatasi Insomnia dengan Mudah', 'https://sejiwa.id/artikel/mengatasi-insomnia'),
(2, 'video', 'Meditasi 10 Menit untuk Mengurangi Kecemasan', 'https://youtube.com/watch?v=dummy1'),
(3, 'video', 'Menemukan Kembali Motivasi Diri', 'https://spotify.com/episode/dummy2'),
(4, 'poster', 'Latihan Relaksasi Otot Progresif', 'https://sejiwa.id/aktivitas/relaksasi-otot'),
(5, 'artikel', 'Mengenal Tanda-Tanda Burnout di Tempat Kerja atau Kampus', 'https://sejiwa.id/artikel/mengenal-burnout'),
(6, 'Artikel', 'Cara Mengatasi Insomnia dengan Mudah', 'https://sejiwa.id/artikel/mengatasi-insomnia'),
(7, 'Video', 'Meditasi 10 Menit untuk Mengurangi Kecemasan', 'https://youtube.com/watch?v=dummy1'),
(8, 'Podcast', 'Menemukan Kembali Motivasi Diri', 'https://spotify.com/episode/dummy2'),
(9, 'Aktivitas', 'Latihan Relaksasi Otot Progresif', 'https://sejiwa.id/aktivitas/relaksasi-otot'),
(10, 'Artikel', 'Mengenal Tanda-Tanda Burnout di Tempat Kerja atau Kampus', 'https://sejiwa.id/artikel/mengenal-burnout');

-- Data for rooms
INSERT INTO `rooms` (`id`, `title`, `student_id`, `counselor_id`, `created_at`) VALUES 
(3, 'Joss', 10, 11, '2026-05-21 10:41:41'),
(4, 'Gelisah', 10, 11, '2026-05-21 11:21:36'),
(5, '', 18, 11, '2026-07-08 16:04:26'),
(6, 'cihuy', 17, 14, '2026-07-15 13:59:00');

-- Data for schedules
INSERT INTO `schedules` (`id`, `date`, `time`, `is_available`, `counselor_id`) VALUES 
(14, '2026-05-23 17:00:00', '09:00:00', 1, 11),
(15, '2026-05-24 17:00:00', '10:00:00', 1, 11),
(16, '2026-05-23 17:00:00', '09:00:00', 0, 14);

-- Table sessions is empty

-- Data for users
INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`, `profile_picture`, `created_at`, `updated_at`) VALUES 
(14, 'Fira Fari', 'fira@gmail.com', '$2b$10$wqL/jOE1NZ4X9VU8L9BlPONyqSbWSOWhLJgeRef7jAOlHtE2ekphm', 'konselor', 'https://res.cloudinary.com/dinw0wb0b/image/upload/v1784125191/zqa6el6bm3j4uqidh2ui.jpg', '2026-06-09 03:36:46', '2026-06-09 03:36:46'),
(11, 'Yuli Konselor', 'yuli@gmail.com', '$2b$10$8Jydb4ad9D3eS4.trMbxVO21unSqZg47eZdN4hOguCkZT1JO2zG2O', 'konselor', 'https://res.cloudinary.com/dinw0wb0b/image/upload/v1779338591/oigmwmaavdxo3f8qlbqa.jpg', '2026-05-21 04:36:56', '2026-05-21 04:36:56'),
(19, 'tata', 'jnnhmj326@gmail.com', '$2b$10$f6sxgqijBv0ZjIO.8YjeK..c3s0RKU4/pNWjcdWJee1Zss3giiuwu', 'pelajar', 'https://res.cloudinary.com/dinw0wb0b/image/upload/v1784209096/hi3gzekbaosw3lkcsx63.jpg', '2026-07-16 13:38:22', '2026-07-16 13:38:22'),
(10, 'Goyim', 'goyim@gmail.com', '$2b$10$tzq.tmQx/ZZ3nu.QtbFTRe/lovfJwuw5712CxiFRskzNvq5c990V.', 'pelajar', 'https://res.cloudinary.com/dinw0wb0b/image/upload/v1779339152/zucyijcozmkge2fihoi8.png', '2026-05-21 03:42:32', '2026-05-21 03:42:32'),
(12, 'ramdhhhhannn', 'ramadanryan855@gmail.com', '$2b$10$BKD/ZN6k.Ip2wcPXOy2zcu4d2oD64UkYofac6RABB/OvL9b6U39qa', 'pelajar', 'https://res.cloudinary.com/dinw0wb0b/image/upload/v1779505162/wonbmgagxzacceaprs14.jpg', '2026-05-23 02:59:50', '2026-05-23 02:59:50'),
(15, 'Ratna.Mrw', 'ratna.brau63@gmail.com', '$2b$10$cMfb9R6er1Tbi6TV.4hgPej2vw6LWnyJJB/vvCxVRZWT7aFdN1C1m', 'konselor', 'https://res.cloudinary.com/dinw0wb0b/image/upload/v1781588425/czm0rjkuokbwwpdtplwq.jpg', '2026-06-16 05:40:34', '2026-06-16 05:40:34'),
(16, 'Aliakbar', 'ikhtiaraliakbr005@gmail.com', '$2b$10$LfKDFV7FzVlmBeRkU8S9/eQ/IkqrBPREqOhkBnaIlkBwjRP8znRgu', 'pelajar', 'https://res.cloudinary.com/dinw0wb0b/image/upload/v1781756891/idkv7jm4vspygk0xrclt.jpg', '2026-06-18 04:28:16', '2026-06-18 04:28:16'),
(18, 'Diniiayuu', 'diniayu0303@gmail.com', '$2b$10$Jp6f2EMJhZL0Kd.89M3uN.AockRBvTPG1LHmJ8ISrl766e65d1KOO', 'pelajar', 'https://res.cloudinary.com/dinw0wb0b/image/upload/v1783526570/r2j8klvmryadrxdajsvx.jpg', '2026-07-08 16:01:22', '2026-07-08 16:01:22'),
(13, 'admin', 'admin@gmail.com', '$2b$10$WbdCqhQoPuUWwAVqNl06MOxRCSFdjy4FaZ6gh9rJpz9QybwR4PkXC', 'admin', 'https://res.cloudinary.com/dinw0wb0b/image/upload/v1780548050/z33boimkiiikhew6ljlh.jpg', '2026-06-04 04:44:58', '2026-06-04 04:44:58'),
(17, 'Koyun', 'zrrizall10@gmail.com', '$2b$10$FJ.iQgHHtk32xTzpbRXd5uXTP.6iWS8fhdciscNRwJ5v0O.26bFny', 'pelajar', 'https://res.cloudinary.com/dinw0wb0b/image/upload/v1784118116/iuuuj2i4knctnxjpcoju.jpg', '2026-07-03 06:03:42', '2026-07-03 06:03:42');

SET FOREIGN_KEY_CHECKS = 1;
