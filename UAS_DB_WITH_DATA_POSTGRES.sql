set search_path = 'student_service';
select * from tb_mhs;
INSERT INTO tb_jabatan (id, nama_jabatan, is_deleted) VALUES
                                                        (1, 'Office Gil', false),
                                                        (2, 'Dosen', false),
                                                        (3, 'Dosen Honorer', false),
                                                        (4, 'Jbatan 1', true),
                                                        (5, 'Office Boy', false),
                                                        (6, 'Program Studi', false);

INSERT INTO tb_jurusan ( id ,  nama_jurusan ,  nama_prodi ,  is_deleted ) VALUES
                                                                            (1, 'Akuntansi', 'Alfred', false),
                                                                            (2, 'Management', 'Amir Syah', false),
                                                                            (3, 'Bisnis', 'Alfred', false),
                                                                            (4, 'Teknologi Informatika', 'Pak Ahmad Budi', false),
                                                                            (5, 'Sistem Informatika', 'Pak Ahmad Budi', false);

truncate tb_login;
INSERT INTO  tb_login  ( id ,  name ,  username ,  user_id ,  password ) VALUES
  (1, 'Admin', 'Admin', 55170368, '123');


INSERT INTO  tb_matkul  ( id ,  nama_matkul ,  dosen ,  ruang ,  jurusan ,  is_deleted ) VALUES
                                                                                           (1, 'Pemrograman Java', 'Pak Badrul', 'B-2', '', true),
                                                                                           (2, 'Interaksi Manusia Komputer', 'Pak Ahmad Budi', '2.C', '', true),
                                                                                           (3, 'Pelajaran APA SAja44', 'Amir Syah', 'B-2', '', true),
                                                                                           (4, 'Pelajaran APA SAja24', 'Amir Syah', 'B-2', '', true),
                                                                                           (5, 'Pemrograman Java', 'Pak Badrul', 'B-2', 'Teknologi Informatika', false),
                                                                                           (6, 'Interaksi Manusia Komputer', 'Pak Ahmad Budi', 'B-2', 'Teknologi Informatika', false);

INSERT INTO  tb_mhs  ( id ,  nama ,  nik ,  jurusan ,  tahun_akademik ) VALUES
                                                                          (1, 'Alexander Gracetantiono', '217001', 'Akuntansi', '17'),
                                                                          (2, 'Joshua Pernandi E.', '218002', 'Akuntansi', '18'),
                                                                          (3, 'Kiko Enak', '218003', 'Akuntansi', '18'),
                                                                          (4, 'John Cena', '420004', 'Sistem Informasi', '20'),
                                                                          (5, 'Michellin ', '019005', 'Teknologi Informatika', '17'),
                                                                          (6, 'Endriko Juan', '519006', 'Sistem Informatika', '19'),
                                                                          (7, 'Siddharta Prajna', '318007', 'Bisnis', '20');


INSERT INTO  tb_nilai  ( id ,  matkul ,  nik ,  nama ,  uas ,  uts ,  harian ,  rerata ,  grade ,  is_deleted ) VALUES
                                                                                                                  (2, 'Pemrograman Java', '217001', 'Alexander Gracetantiono', 90, 75, 90, 90, 'A-', false),
                                                                                                                  (3, 'Interaksi Manusia Komputer', '318007', 'Siddharta Prajna', 90, 80, 80, 80, 'A-', true),
                                                                                                                  (4, 'Interaksi Manusia Komputer', '519006', 'Endriko Juan', 80, 80, 80, 80, 'A-', false),
                                                                                                                  (5, 'Pemrograman Java', '420004', 'John Cena', 35, 35, 35, 35, 'D', true);


INSERT INTO  tb_ruang  ( id ,  ruang_id ,  staff ,  is_deleted ) VALUES
                                                                   (1, 'B-2', 'Amir Syah', false),
                                                                   (2, '2.C', 'Amir Syah', false),
                                                                   (3, 'Basement-1', 'Amir Syah', false),
                                                                   (4, 'C-2', 'Amir Syah', false),
                                                                   (5, 'D-2', 'Amir Syah', false);

INSERT INTO  tb_staff  ( id ,  nama ,  jabatan ,  tahun_masuk  ) VALUES
                                                                   ('2175', 'Pak Badrul', 'Dosen', '17'),
                                                                   ('2191', 'Dr.Albert Enstein', 'Dosen', '18'),
                                                                   ('2192', 'DR Jokowow', 'Dosen', '19'),
                                                                   ('3193', 'Alfred', 'Dosen Honorer', '19'),
                                                                   ('5194', 'Amir Syah', 'Office Boy', '19'),
                                                                   ('6176', 'Pak Ahmad Budi', 'Program Studi', '17');