Microsoft Windows [Version 10.0.22000.1219]
(c) Microsoft Corporation. All rights reserved.

C:\Users\LENOVO>cd "C:\Program Files\PostgreSQL\14\bin"

C:\Program Files\PostgreSQL\14\bin>psql -U postgres -h localhost
Password for user postgres:
psql (14.6)
WARNING: Console code page (437) differs from Windows code page (1252)
         8-bit characters might not work correctly. See psql reference
         page "Notes for Windows users" for details.
Type "help" for help.

postgres=# \list
                                              List of databases
    Name     |  Owner   | Encoding |        Collate         |         Ctype          |   Access privileges
-------------+----------+----------+------------------------+------------------------+-----------------------
 informatika | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 postgres    | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakaadd    | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakad      | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakadd     | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakaddd    | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siswa       | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 template0   | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 | =c/postgres          +
             |          |          |                        |                        | postgres=CTc/postgres
 template1   | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 | =c/postgres          +
             |          |          |                        |                        | postgres=CTc/postgres
(9 rows)


postgres=# create database siaakad;
CREATE DATABASE
postgres=# \list
                                              List of databases
    Name     |  Owner   | Encoding |        Collate         |         Ctype          |   Access privileges
-------------+----------+----------+------------------------+------------------------+-----------------------
 informatika | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 postgres    | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siaakad     | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakaadd    | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakad      | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakadd     | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakaddd    | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siswa       | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 template0   | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 | =c/postgres          +
             |          |          |                        |                        | postgres=CTc/postgres
 template1   | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 | =c/postgres          +
             |          |          |                        |                        | postgres=CTc/postgres
(10 rows)


postgres=# \c siaakad;
You are now connected to database "siaakad" as user "postgres".
siaakad=# create table mahasiswa(nim varchar(30) not null primary key,nama varchar (50),prodi varchar(50));
CREATE TABLE
siaakad=# \d mahasiswa;
                    Table "public.mahasiswa"
 Column |         Type          | Collation | Nullable | Default
--------+-----------------------+-----------+----------+---------
 nim    | character varying(30) |           | not null |
 nama   | character varying(50) |           |          |
 prodi  | character varying(50) |           |          |
Indexes:
    "mahasiswa_pkey" PRIMARY KEY, btree (nim)


siaakad=# create table dosen(nidn int not null primary key,nama varchar (50), program_studi varchar(50));
CREATE TABLE
siaakad=# \d dosen;
                          Table "public.dosen"
    Column     |         Type          | Collation | Nullable | Default
---------------+-----------------------+-----------+----------+---------
 nidn          | integer               |           | not null |
 nama          | character varying(50) |           |          |
 program_studi | character varying(50) |           |          |
Indexes:
    "dosen_pkey" PRIMARY KEY, btree (nidn)


siaakad=# create table kuliah(kode_makul varchar(30) not null primary key,nama_makul varchar (50), sks int,semeter int);
CREATE TABLE
siaakad=# \d kuliah;
                        Table "public.kuliah"
   Column   |         Type          | Collation | Nullable | Default
------------+-----------------------+-----------+----------+---------
 kode_makul | character varying(30) |           | not null |
 nama_makul | character varying(50) |           |          |
 sks        | integer               |           |          |
 semeter    | integer               |           |          |
Indexes:
    "kuliah_pkey" PRIMARY KEY, btree (kode_makul)


siaakad=# \d mahasiswa;
                    Table "public.mahasiswa"
 Column |         Type          | Collation | Nullable | Default
--------+-----------------------+-----------+----------+---------
 nim    | character varying(30) |           | not null |
 nama   | character varying(50) |           |          |
 prodi  | character varying(50) |           |          |
Indexes:
    "mahasiswa_pkey" PRIMARY KEY, btree (nim)


siaakad=# insert into mahasiswa (nim,nama,prodi) values ('D0221095','fitrah','informatika'),('D0221361','ipah','informatika'),('D0221358','dini','informatika');
INSERT 0 3
siaakad=# select * from mahasiswa;
   nim    |  nama  |    prodi
----------+--------+-------------
 D0221095 | fitrah | informatika
 D0221361 | ipah   | informatika
 D0221358 | dini   | informatika
(3 rows)


siaakad=# insert into dosen (nidn,nama,program_studi) values (0015018805,'Dr. Eng. musdalifah, ST., M.Eng.','sipil'),(0017038904,'Dr. Eng. nurul inayah, S.Si., MT.','informatika'),(0031077904,'masnia, S.Kom., M.M','informatika');
INSERT 0 3
siaakad=# select * from dosen;
   nidn   |               nama                | program_studi
----------+-----------------------------------+---------------
 15018805 | Dr. Eng. musdalifah, ST., M.Eng.  | sipil
 17038904 | Dr. Eng. nurul inayah, S.Si., MT. | informatika
 31077904 | masnia, S.Kom., M.M               | informatika
(3 rows)


siaakad=# \d kuliah;
                        Table "public.kuliah"
   Column   |         Type          | Collation | Nullable | Default
------------+-----------------------+-----------+----------+---------
 kode_makul | character varying(30) |           | not null |
 nama_makul | character varying(50) |           |          |
 sks        | integer               |           |          |
 semeter    | integer               |           |          |
Indexes:
    "kuliah_pkey" PRIMARY KEY, btree (kode_makul)


siaakad=# insert into kuliah (kode_makul,nama_makul,sks,semeter) values ('INF183219','Aplikasi Komputer',2,3),('INF173319','Pengembangan Multimedia',3,3),('INF123319','Basis Data I',2,3);
INSERT 0 3
siaakad=# select * from kuliah;
 kode_makul |       nama_makul        | sks | semeter
------------+-------------------------+-----+---------
 INF183219  | Aplikasi Komputer       |   2 |       3
 INF173319  | Pengembangan Multimedia |   3 |       3
 INF123319  | Basis Data I            |   2 |       3
(3 rows)


siaakad=# select * from mahasiswa;
   nim    |  nama  |    prodi
----------+--------+-------------
 D0221095 | fitrah | informatika
 D0221361 | ipah   | informatika
 D0221358 | dini   | informatika
(3 rows)


siaakad=# update mahasiswa set nama='ida musdalifah' where nim = 'D0221358';
UPDATE 1
siaakad=# select * from mahasiswa;
   nim    |      nama      |    prodi
----------+----------------+-------------
 D0221095 | fitrah         | informatika
 D0221361 | ipah           | informatika
 D0221358 | ida musdalifah | informatika
(3 rows)


siaakad=# select * from dosen;
   nidn   |               nama                | program_studi
----------+-----------------------------------+---------------
 15018805 | Dr. Eng. musdalifah, ST., M.Eng.  | sipil
 17038904 | Dr. Eng. nurul inayah, S.Si., MT. | informatika
 31077904 | masnia, S.Kom., M.M               | informatika
(3 rows)


siaakad=# update dosen set nama='masnia' where nidn =  31077904;
UPDATE 1
siaakad=# select * from dosen;
   nidn   |               nama                | program_studi
----------+-----------------------------------+---------------
 15018805 | Dr. Eng. musdalifah, ST., M.Eng.  | sipil
 17038904 | Dr. Eng. nurul inayah, S.Si., MT. | informatika
 31077904 | masnia                            | informatika
(3 rows)


siaakad=# select * from kuliah;
 kode_makul |       nama_makul        | sks | semeter
------------+-------------------------+-----+---------
 INF183219  | Aplikasi Komputer       |   2 |       3
 INF173319  | Pengembangan Multimedia |   3 |       3
 INF123319  | Basis Data I            |   2 |       3
(3 rows)


siaakad=#  update kuliah set sks=3 where kode_makul='INF173319';
UPDATE 1
siaakad=# select * from kuliah;
 kode_makul |       nama_makul        | sks | semeter
------------+-------------------------+-----+---------
 INF183219  | Aplikasi Komputer       |   2 |       3
 INF123319  | Basis Data I            |   2 |       3
 INF173319  | Pengembangan Multimedia |   3 |       3
(3 rows)


siaakad=#