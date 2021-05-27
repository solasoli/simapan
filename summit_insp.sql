-- MySQL dump 10.16  Distrib 10.1.47-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: summit_insp
-- ------------------------------------------------------
-- Server version	10.1.47-MariaDB-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `acl_menu`
--

DROP TABLE IF EXISTS `acl_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_parent` int(11) NOT NULL,
  `have_child` tinyint(1) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_menu`
--

LOCK TABLES `acl_menu` WRITE;
/*!40000 ALTER TABLE `acl_menu` DISABLE KEYS */;
INSERT INTO `acl_menu` VALUES (1,0,1,1,0,'Master','#','mst','2020-11-10 13:08:43',1,'2020-11-10 13:08:43',1,NULL,0,0),(2,1,0,2,0,'Perangkat Daerah','/mst/skpd','mst_skpd','2020-11-10 13:09:18',1,'2020-11-10 13:09:18',1,NULL,0,0),(3,1,0,2,0,'Data Pegawai','/mst/pegawai','mst_pegawai','2020-11-10 13:09:43',1,'2020-11-10 13:09:43',1,NULL,0,0),(4,1,0,2,0,'Struktur Organigram','/mst/struktur','mst_struktur','2020-11-10 13:10:40',1,'2020-11-10 13:10:40',1,NULL,0,0),(5,1,0,2,0,'Jenis Kegiatan','/mst/kegiatan','mst_kegiatan','2020-11-10 13:10:55',1,'2020-11-10 13:10:55',1,NULL,0,0),(7,0,1,1,0,'Surat Perintah','#','sp','2020-11-10 14:01:30',1,'2020-11-10 14:01:30',1,NULL,0,0),(8,7,0,2,0,'Buat Surat Perintah','/pkpt/surat_perintah','sp_surat_perintah','2020-11-10 14:02:01',1,'2020-11-10 14:03:17',1,NULL,0,0),(9,7,0,2,0,'Penomeran Surat','/pkpt/surat_perintah/nomer','sp_penomeran_surat','2020-11-10 16:04:00',1,'2020-11-10 16:04:00',1,NULL,0,0),(10,7,0,2,0,'Kalender Kerja','/pkpt/surat_perintah/kalendar','sp_kalender_kerja','2020-11-10 16:04:45',1,'2020-11-10 16:04:45',1,NULL,0,0),(11,0,1,1,0,'Pemeriksaan','#','pemeriksaan','2020-11-10 16:05:40',1,'2020-11-10 16:05:40',1,NULL,0,0),(12,11,0,2,0,'Penentuan Tujuan Pemeriksaan','/pemeriksaan/sasaran-tujuan','sasaran_tujuan','2020-11-10 16:07:03',1,'2020-11-10 16:07:03',1,NULL,0,0),(13,11,0,2,0,'Program Kerja Pemeriksaan','/pemeriksaan/program-kerja-audit','program_kerja_audit','2020-11-10 16:07:42',1,'2020-11-10 16:07:42',1,NULL,0,0),(14,11,0,2,0,'Pelaksanaan Pemeriksaan','/pemeriksaan/audit','audit','2020-11-10 16:09:03',1,'2020-11-10 16:09:03',1,NULL,0,0),(15,11,0,2,0,'Laporan NHP','/pemeriksaan/laporan_nhp','laporan_nhp','2020-11-10 16:09:40',1,'2020-11-10 16:11:08',1,NULL,0,0),(16,11,0,2,0,'Laporan LHP','/pemeriksaan/laporan_lhp','laporan_lhp','2020-11-10 16:10:29',1,'2020-11-10 16:10:29',1,NULL,0,0),(17,0,1,1,0,'Tindak Lanjut','#','tinjut','2020-11-10 16:12:09',1,'2020-11-10 16:13:27',1,NULL,0,0),(18,17,0,2,0,'Matrik Tindak Lanjut','/tindak_lanjut/matrik','tindak_lanjut_matrik','2020-11-10 16:13:12',1,'2020-11-10 16:13:12',1,NULL,0,0),(20,0,1,1,0,'Angka Kredit','#','angkre','2020-11-10 16:16:49',1,'2020-11-10 16:17:02',1,NULL,0,0),(21,20,0,2,0,'Perhitungan Angka Kredit','/angka-kredit/perhitungan-angka-kredit','perhitungan_angka_kredit','2020-11-10 16:18:08',1,'2020-11-10 16:18:08',1,NULL,0,0),(22,0,0,1,0,'Upload Kode Bank','/upload_kode_rekening','upload_kode_bank','2020-11-10 16:25:41',1,'2020-11-10 16:25:41',1,NULL,0,0),(23,0,1,1,0,'RKA','#','rka','2020-11-10 16:26:16',1,'2020-11-10 16:26:16',1,NULL,0,0),(24,23,0,2,0,'rka','/rka','rka_rka','2020-11-10 16:26:41',1,'2020-11-10 16:26:41',1,NULL,0,0),(25,11,0,2,0,'Penomeran LHP','/pemeriksaan/laporan_lhp/penomeran_lhp','nomer_lhp','2020-11-10 16:04:00',1,'2020-11-10 16:04:00',1,NULL,0,0),(26,20,0,2,0,'Sekretariat Dupak','/angka-kredit/sekretariat-dupak','sekretariat_dupak',NULL,0,NULL,0,NULL,0,0),(27,20,0,2,0,'Tim Penilai','/angka-kredit/tim-penilai','tim_penilai',NULL,0,NULL,0,NULL,0,0),(28,20,0,2,0,'Pejabat Pengusul','/angka-kredit/pejabat-pengusul','pejabat_pengusul',NULL,0,NULL,0,NULL,0,0),(29,20,0,2,0,'Penetapan Dupak','/angka-kredit/penetapan-dupak','penetapan_dupak',NULL,0,NULL,0,NULL,0,0),(31,1,0,2,1,'Program Kerja Pengawasan','/mst/program_kerja','mst_program_kerja',NULL,0,NULL,0,NULL,0,0),(30,1,0,2,0,'Jenis Pengawasan','/mst/jenis_pengawasan','jenis_pengawasan',NULL,0,NULL,0,NULL,0,0);
/*!40000 ALTER TABLE `acl_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_permission`
--

DROP TABLE IF EXISTS `acl_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_menu` int(11) NOT NULL,
  `id_role` int(11) NOT NULL,
  `view` tinyint(1) NOT NULL,
  `add` tinyint(1) NOT NULL,
  `edit` tinyint(1) NOT NULL,
  `delete` tinyint(1) NOT NULL,
  `additional` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_permission`
--

LOCK TABLES `acl_permission` WRITE;
/*!40000 ALTER TABLE `acl_permission` DISABLE KEYS */;
INSERT INTO `acl_permission` VALUES (1,2,3,0,0,0,0,0),(2,3,3,0,0,0,0,0),(3,4,3,0,0,0,0,0),(4,5,3,0,0,0,0,0),(5,6,3,0,0,0,0,0),(6,8,3,1,0,0,0,0),(7,9,3,1,0,0,0,0),(8,10,3,1,0,0,0,0),(9,12,3,1,1,1,1,1),(10,13,3,1,1,1,1,1),(11,14,3,1,1,1,1,1),(12,15,3,1,1,1,1,1),(13,16,3,1,1,1,1,1),(14,18,3,1,1,1,1,1),(15,19,3,0,0,0,0,0),(16,21,3,1,1,1,1,1),(17,22,3,0,0,0,0,0),(18,24,3,0,0,0,0,0),(19,2,2,0,0,0,0,0),(20,3,2,0,0,0,0,0),(21,4,2,0,0,0,0,0),(22,5,2,0,0,0,0,0),(23,6,2,0,0,0,0,0),(24,8,2,1,1,1,1,1),(25,9,2,1,1,1,1,1),(26,10,2,1,1,1,1,1),(27,12,2,1,1,1,1,1),(28,13,2,1,1,1,1,1),(29,14,2,1,1,1,1,1),(30,15,2,1,1,1,1,1),(31,16,2,1,1,1,1,1),(32,25,2,1,1,1,1,1),(33,18,2,1,1,1,1,1),(34,21,2,1,1,1,1,1),(35,26,2,1,1,1,1,1),(36,27,2,1,1,1,1,1),(37,28,2,1,1,1,1,1),(38,29,2,1,1,1,1,1),(39,22,2,0,0,0,0,0),(40,24,2,0,0,0,0,0),(41,25,3,0,0,0,0,0),(42,26,3,0,0,0,0,0),(43,27,3,0,0,0,0,0),(44,28,3,0,0,0,0,0),(45,29,3,0,0,0,0,0),(46,31,2,1,1,1,1,1),(47,30,2,0,0,0,0,0);
/*!40000 ALTER TABLE `acl_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_role`
--

DROP TABLE IF EXISTS `acl_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_role`
--

LOCK TABLES `acl_role` WRITE;
/*!40000 ALTER TABLE `acl_role` DISABLE KEYS */;
INSERT INTO `acl_role` VALUES (1,'Super Administrator',NULL,0,NULL,0,NULL,0,0),(2,'Administrator','2020-11-22 16:32:16',1,'2020-11-22 16:32:16',1,NULL,0,0),(3,'Pegawai','2020-11-29 13:03:48',1,'2020-11-29 13:03:48',1,NULL,0,0);
/*!40000 ALTER TABLE `acl_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adt_audit_berkas`
--

DROP TABLE IF EXISTS `adt_audit_berkas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adt_audit_berkas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_kertas_kerja` int(11) NOT NULL,
  `file_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adt_audit_berkas`
--

LOCK TABLES `adt_audit_berkas` WRITE;
/*!40000 ALTER TABLE `adt_audit_berkas` DISABLE KEYS */;
INSERT INTO `adt_audit_berkas` VALUES (1,1,'117927853_318111346292512_6075964843936418631_n_1606542080.jpg','2020-11-28 05:41:20',1,'2020-11-28 05:41:20',1,NULL,0,0),(2,2,'4. Formulir Perubahan Data OP_1606935991.xls','2020-12-02 19:06:31',1,'2020-12-02 19:06:31',1,NULL,0,0),(3,2,'5. Formulir Perubahan Data Badan_1606935991.xls','2020-12-02 19:06:31',1,'2020-12-02 19:06:31',1,NULL,0,0),(4,2,'6. Formulir Perubahan Data WP Instansi Pemerintah_1606935991.xls','2020-12-02 19:06:31',1,'2020-12-02 19:06:31',1,NULL,0,0),(5,3,'Daftar User E-SKM-Kab.Sukabumi_1606937027.pdf','2020-12-02 19:23:47',7,'2020-12-08 02:01:24',7,NULL,0,1),(6,5,'4. Formulir Perubahan Data OP_1606940481.xls','2020-12-02 20:21:21',8,'2020-12-02 20:21:21',8,NULL,0,0),(7,5,'5. Formulir Perubahan Data Badan_1606940481.xls','2020-12-02 20:21:21',8,'2020-12-02 20:21:21',8,NULL,0,0),(8,5,'6. Formulir Perubahan Data WP Instansi Pemerintah_1606940481.xls','2020-12-02 20:21:21',8,'2020-12-02 20:21:21',8,NULL,0,0),(9,5,'Daftar User E-SKM-Kab.Sukabumi_1606940481.pdf','2020-12-02 20:21:21',8,'2020-12-02 20:21:21',8,NULL,0,0),(10,3,'logoinspektorat_1607392852.png','2020-12-08 02:00:52',7,'2020-12-08 02:03:52',7,NULL,0,1),(11,3,'surat pernyataan tidak masuk daftar hitam_1607392877.jpeg','2020-12-08 02:01:17',7,'2020-12-08 02:03:54',7,NULL,0,1),(12,3,'Screen Shot 2020-12-07 at 4.29.50 PM_1607393094.png','2020-12-08 02:04:54',7,'2020-12-08 02:08:25',7,NULL,0,1),(13,3,'logoinspektorat_1607393100.png','2020-12-08 02:05:00',7,'2020-12-08 02:08:27',7,NULL,0,1),(14,3,'logoinspektorat_1607393335.png','2020-12-08 02:08:55',7,'2020-12-08 02:08:55',7,NULL,0,0),(15,3,'Screen Shot 2020-12-07 at 4.29.50 PM_1607393340.png','2020-12-08 02:09:00',7,'2020-12-08 02:09:00',7,NULL,0,0),(16,7,'Screen Shot 2020-12-07 at 5.39.03 PM_1607394068.png','2020-12-08 02:21:08',8,'2020-12-08 02:21:08',8,NULL,0,0),(17,7,'Screen Shot 2020-12-07 at 5.39.34 PM_1607394073.png','2020-12-08 02:21:13',8,'2020-12-08 02:21:13',8,NULL,0,0),(18,8,'Screen Shot 2020-12-07 at 4.29.50 PM_1607394290.png','2020-12-08 02:24:50',7,'2020-12-08 02:24:50',7,NULL,0,0),(19,8,'logoinspektorat_1607394295.png','2020-12-08 02:24:55',7,'2020-12-08 02:24:55',7,NULL,0,0),(20,9,'Lampiran-2-Kemenparekraf copy_1607548524.docx','2020-12-09 21:15:24',21,'2020-12-09 21:15:24',21,NULL,0,0),(21,10,'Perangkat Daerah (1)_1611130387.xlsx','2021-01-20 08:13:07',7,'2021-01-20 08:13:07',7,NULL,0,0),(22,11,'Perangkat Daerah (1)_1611132125.xlsx','2021-01-20 08:42:05',7,'2021-01-20 08:42:05',7,NULL,0,0),(23,12,'Perangkat Daerah (2)_1611132226.xlsx','2021-01-20 08:43:46',5,'2021-01-20 08:43:46',5,NULL,0,0),(24,11,'WhatsApp Image 2021-01-17 at 19.13.23_1611139026.jpeg','2021-01-20 10:37:06',7,'2021-01-20 10:37:06',7,NULL,0,0);
/*!40000 ALTER TABLE `adt_audit_berkas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adt_audit_kertas_kerja`
--

DROP TABLE IF EXISTS `adt_audit_kertas_kerja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adt_audit_kertas_kerja` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_surat_perintah` int(11) NOT NULL,
  `uraian_singkat` text COLLATE utf8mb4_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `id_status_kertas_kerja` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adt_audit_kertas_kerja`
--

LOCK TABLES `adt_audit_kertas_kerja` WRITE;
/*!40000 ALTER TABLE `adt_audit_kertas_kerja` DISABLE KEYS */;
INSERT INTO `adt_audit_kertas_kerja` VALUES (1,1,'<p>Uraiang SIngkat By Admin</p>','2020-11-28 05:41:09',1,'2020-11-28 05:53:37',1,NULL,0,0,2),(2,6,NULL,'2020-12-02 19:02:40',1,'2020-12-03 03:11:40',13,NULL,0,0,2),(3,6,'<p>Ini isian dari Uraian Singkat</p>','2020-12-02 19:23:31',7,'2020-12-08 02:10:27',7,NULL,0,0,1),(4,6,NULL,'2020-12-02 19:27:12',13,'2020-12-02 19:27:12',13,NULL,0,0,1),(5,6,NULL,'2020-12-02 20:21:08',8,'2020-12-03 04:29:32',13,NULL,0,0,3),(6,6,NULL,'2020-12-02 20:25:01',13,'2020-12-02 20:25:01',13,NULL,0,0,1),(7,8,'<p>Ini isian dari uraian Singkat anggota 2</p>','2020-12-08 02:18:20',8,'2020-12-08 03:07:24',4,NULL,0,0,7),(8,8,'<p>uraian singkat</p>','2020-12-08 02:18:28',7,'2020-12-08 03:07:24',4,NULL,0,0,7),(9,12,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>','2020-12-09 20:27:11',21,'2020-12-09 21:51:02',1,NULL,0,0,7),(10,15,'<p>ini uraian singkatnya......ini uraian singkatnya......ini uraian singkatnya......ini uraian singkatnya......ini uraian singkatnya......ini uraian singkatnya......ini uraian singkatnya......ini uraian singkatnya......ini uraian singkatnya......ini uraian singkatnya......ini uraian singkatnya......ini uraian singkatnya......ini uraian singkatnya......ini uraian singkatnya......ini uraian singkatnya......ini uraian singkatnya......ini uraian singkatnya......ini uraian singkatnya......ini uraian singkatnya......ini uraian singkatnya......ini uraian singkatnya......ini uraian singkatnya......ini uraian singkatnya......ini uraian singkatnya......ini uraian singkatnya......</p>','2021-01-20 08:11:37',7,'2021-01-20 08:14:32',7,NULL,0,0,1),(11,18,'<p>diisi uraian singkat</p>','2021-01-20 08:41:56',7,'2021-01-20 08:53:24',1,NULL,0,0,7),(12,18,'<p>diisi uraian singkatnya</p>','2021-01-20 08:43:40',5,'2021-01-20 08:53:24',1,NULL,0,0,7),(13,18,NULL,'2021-01-20 08:45:51',10,'2021-01-20 08:45:51',10,NULL,0,0,1),(14,23,NULL,'2021-02-08 07:24:29',14,'2021-02-08 08:01:00',1,NULL,0,0,3);
/*!40000 ALTER TABLE `adt_audit_kertas_kerja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adt_audit_kertas_kerja_ikhtisar`
--

DROP TABLE IF EXISTS `adt_audit_kertas_kerja_ikhtisar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adt_audit_kertas_kerja_ikhtisar` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_kertas_kerja` int(11) NOT NULL,
  `judul_kondisi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `uraian_kondisi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kriteria` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sebab` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `akibat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rekomendasi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_compilation` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adt_audit_kertas_kerja_ikhtisar`
--

LOCK TABLES `adt_audit_kertas_kerja_ikhtisar` WRITE;
/*!40000 ALTER TABLE `adt_audit_kertas_kerja_ikhtisar` DISABLE KEYS */;
INSERT INTO `adt_audit_kertas_kerja_ikhtisar` VALUES (1,1,'<p>Judul Kondisi</p>\n','<p>Uraian Kondisi&nbsp;</p>\n','<p>Kriteria</p>\n','<p>Sebab</p>\n','<p>Akibat</p>\n','<p>Rekomendasi</p>\n','2020-11-28 05:42:12',1,'2020-11-28 05:42:12',1,NULL,0,0,0),(2,2,'<p>ini isi dari judul kondisi</p>\n','<p>ini isi dari uraian kondisi</p>\n','<p>ini isi dari kriteria</p>\n','<p>ini isi dari sebab</p>\n','<p>ini isi dari akibat</p>\n','<p>ini isi dari rekomendasi</p>\n','2020-12-02 19:10:05',1,'2020-12-02 19:10:05',1,NULL,0,0,0),(3,3,'<p>ini isi dari judul kondisi</p>\n','<p>ini isi dari uraian kondisi</p>\n','<p>ini isi dari kriteria</p>\n','<p>ini isi dari sebab</p>\n','<p>ini isi dari akibat</p>\n','<p>ini isi dari rekomendasi</p>\n','2020-12-02 19:24:38',7,'2020-12-02 20:31:19',13,'2020-12-08 02:08:32',7,1,1),(4,5,'<p>ini isian dari judul kondisi</p>\n','<p>ini isian dari uraian kondisi</p>\n','<p>ini isian dari kriteria</p>\n','<p>ini isian dari sebab</p>\n','<p>ini isian dari akibat</p>\n','<p>ini isian dari rekomendasi</p>\n','2020-12-02 20:22:11',8,'2020-12-02 20:31:19',13,NULL,0,0,1),(5,5,'<p>ini isian dari judul kondisi</p>\n','<p>ini isian dari uraian kondisi</p>\n','<p>ini isian dari kriteria</p>\n','<p>ini isian dari sebab</p>\n','<p>ini isian dari akibat</p>\n','<p>ini isian dari rekomendasi</p>\n','2020-12-02 20:22:53',8,'2020-12-02 20:31:19',13,NULL,0,0,1),(6,3,'<p>Ini isian dari&nbsp; Judul Kondisi</p>\n','<p>Ini isian dari uraian Kondisi</p>\n','<p>Ini isian dari Kriteria</p>\n','<p>Ini isian dari Sebab</p>\n','<p>Ini isian dari Akibat</p>\n','<p>Ini isian dari Rekomendasi</p>\n','2020-12-08 02:10:27',7,'2020-12-08 02:10:27',7,NULL,0,0,0),(7,7,'<p>Ini isian dari judul kondisi anggota 2</p>\n','<p>Ini isian dari uraian kondisi 2</p>\n','<p>Ini isian dari kriteria anggota 2</p>\n','<p>Ini isian dari sebab anggota 2</p>\n','<p>Ini isian dari akibat anggota 2</p>\n','<p>Ini isian dari rekomendasi angota 2</p>\n','2020-12-08 02:23:24',8,'2020-12-08 02:40:20',13,NULL,0,0,1),(8,7,'<p>Ini isian dari Judul kondisi</p>\n','<p>Ini isian dari uraian kondisi</p>\n','<p>Ini isian dari kriteria</p>\n','<p>Ini isian dari sebab</p>\n','<p>Ini isian dari akibat</p>\n','<p>Ini isian dari rekomenasi</p>\n','2020-12-08 02:23:24',8,'2020-12-08 02:40:20',13,NULL,0,0,1),(9,8,'<p>ini isian dari Judul Kondisi</p>\n','<p>ini isian dari uraian kondisi</p>\n','<p>ini isian dari kriteria</p>\n','<p>ini isian dari sebab</p>\n','<p>ini isian dari akibat</p>\n','<p>ini isian dari rekomendasi</p>\n','2020-12-08 02:25:48',7,'2020-12-08 02:31:54',13,NULL,0,0,1),(10,9,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>\n','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>\n','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>\n','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>\n','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>\n','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>\n','2020-12-09 21:24:45',21,'2020-12-09 21:39:36',1,NULL,0,0,1),(11,10,'<p>ini di isikan judul kondisinya</p>\n','<p>ini di isikan uraian kondisinya</p>\n','<p>ini di isikan kriterianya</p>\n','<p>ini di isikan sebab</p>\n','<p>ini di isikan akibat</p>\n','<p>ini di isikan rekomendasinya</p>\n','2021-01-20 08:14:32',7,'2021-01-20 08:14:32',7,NULL,0,0,0),(12,11,'<p>diisi judul kondisi</p>\n','<p>diisi uraian kondisi</p>\n','<p>diisi kriteria</p>\n','<p>diisi sebab</p>\n','<p>diisi akibat</p>\n','<p>diisi rekomendasi</p>\n','2021-01-20 08:42:57',7,'2021-01-20 08:51:39',1,NULL,0,0,1),(13,12,'<p>diisikan judul kondisi</p>\n','<p>diisikan uraian kondisi</p>\n','<p>diisikan kriteria</p>\n','<p>diisikan sebab</p>\n','<p>diisikan akibat</p>\n','<p>diisikan rekomendasi</p>\n','2021-01-20 08:44:43',5,'2021-01-20 08:51:39',1,NULL,0,0,1),(14,14,'<p>dwadadadawdawd</p>\n','<p>awdawdafawdawdawdaw</p>\n','<p>awdawdafadadsd</p>\n','<p>faawdasdawdawd</p>\n','<p>asfawdasafwdawdaw</p>\n','<p>awdasfawdawdasfawd</p>\n','2021-02-08 08:00:39',14,'2021-02-08 08:00:39',14,NULL,0,0,0);
/*!40000 ALTER TABLE `adt_audit_kertas_kerja_ikhtisar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adt_audit_kertas_kerja_ikhtisar_kode_rekomendasi`
--

DROP TABLE IF EXISTS `adt_audit_kertas_kerja_ikhtisar_kode_rekomendasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adt_audit_kertas_kerja_ikhtisar_kode_rekomendasi` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_kertas_kerja_ikhtisar` int(11) NOT NULL,
  `id_kode_rekomendasi` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adt_audit_kertas_kerja_ikhtisar_kode_rekomendasi`
--

LOCK TABLES `adt_audit_kertas_kerja_ikhtisar_kode_rekomendasi` WRITE;
/*!40000 ALTER TABLE `adt_audit_kertas_kerja_ikhtisar_kode_rekomendasi` DISABLE KEYS */;
INSERT INTO `adt_audit_kertas_kerja_ikhtisar_kode_rekomendasi` VALUES (1,1,1,1,'2020-11-28 05:42:12',1,'2020-11-28 05:42:12',1,NULL,0,0),(2,1,5,2,'2020-11-28 05:42:12',1,'2020-11-28 05:42:12',1,NULL,0,0),(3,2,1,1,'2020-12-02 19:10:05',1,'2020-12-02 19:10:05',1,NULL,0,0),(4,2,2,2,'2020-12-02 19:10:05',1,'2020-12-02 19:10:05',1,NULL,0,0),(5,3,1,1,'2020-12-02 19:24:38',7,'2020-12-02 19:24:38',7,'2020-12-03 04:24:05',7,1),(6,3,2,2,'2020-12-02 19:24:38',7,'2020-12-02 19:24:38',7,'2020-12-03 04:24:05',7,1),(7,4,1,1,'2020-12-02 20:22:11',8,'2020-12-02 20:22:11',8,'2020-12-02 20:22:53',8,1),(8,4,2,2,'2020-12-02 20:22:11',8,'2020-12-02 20:22:11',8,'2020-12-02 20:22:53',8,1),(9,4,1,1,'2020-12-02 20:22:53',8,'2020-12-02 20:22:53',8,'2020-12-03 04:26:53',8,1),(10,4,2,2,'2020-12-02 20:22:53',8,'2020-12-02 20:22:53',8,'2020-12-03 04:26:53',8,1),(11,5,1,1,'2020-12-02 20:22:53',8,'2020-12-02 20:22:53',8,'2020-12-03 04:26:53',8,1),(12,5,2,2,'2020-12-02 20:22:53',8,'2020-12-02 20:22:53',8,'2020-12-03 04:26:53',8,1),(13,3,1,1,'2020-12-03 04:24:05',7,'2020-12-03 04:24:05',7,NULL,0,0),(14,3,2,2,'2020-12-03 04:24:05',7,'2020-12-03 04:24:05',7,NULL,0,0),(15,4,1,1,'2020-12-03 04:26:53',8,'2020-12-03 04:26:53',8,NULL,0,0),(16,4,2,2,'2020-12-03 04:26:53',8,'2020-12-03 04:26:53',8,NULL,0,0),(17,5,1,1,'2020-12-03 04:26:53',8,'2020-12-03 04:26:53',8,NULL,0,0),(18,5,2,2,'2020-12-03 04:26:53',8,'2020-12-03 04:26:53',8,NULL,0,0),(19,6,1,1,'2020-12-08 02:10:27',7,'2020-12-08 02:10:27',7,NULL,0,0),(20,6,2,2,'2020-12-08 02:10:27',7,'2020-12-08 02:10:27',7,NULL,0,0),(21,7,1,1,'2020-12-08 02:23:24',8,'2020-12-08 02:23:24',8,NULL,0,0),(22,7,2,2,'2020-12-08 02:23:24',8,'2020-12-08 02:23:24',8,NULL,0,0),(23,8,1,1,'2020-12-08 02:23:24',8,'2020-12-08 02:23:24',8,NULL,0,0),(24,8,2,2,'2020-12-08 02:23:24',8,'2020-12-08 02:23:24',8,NULL,0,0),(25,9,1,1,'2020-12-08 02:25:48',7,'2020-12-08 02:25:48',7,'2020-12-08 02:31:14',7,1),(26,9,2,2,'2020-12-08 02:25:48',7,'2020-12-08 02:25:48',7,'2020-12-08 02:31:14',7,1),(27,9,1,1,'2020-12-08 02:31:14',7,'2020-12-08 02:31:14',7,NULL,0,0),(28,9,2,2,'2020-12-08 02:31:14',7,'2020-12-08 02:31:14',7,NULL,0,0),(29,10,1,1,'2020-12-09 21:24:45',21,'2020-12-09 21:24:45',21,NULL,0,0),(30,10,3,2,'2020-12-09 21:24:45',21,'2020-12-09 21:24:45',21,NULL,0,0),(31,11,1,1,'2021-01-20 08:14:32',7,'2021-01-20 08:14:32',7,NULL,0,0),(32,11,2,2,'2021-01-20 08:14:32',7,'2021-01-20 08:14:32',7,NULL,0,0),(33,12,1,1,'2021-01-20 08:42:57',7,'2021-01-20 08:42:57',7,NULL,0,0),(34,12,2,2,'2021-01-20 08:42:57',7,'2021-01-20 08:42:57',7,NULL,0,0),(35,13,1,1,'2021-01-20 08:44:43',5,'2021-01-20 08:44:43',5,NULL,0,0),(36,13,2,2,'2021-01-20 08:44:43',5,'2021-01-20 08:44:43',5,NULL,0,0),(37,14,1,1,'2021-02-08 08:00:39',14,'2021-02-08 08:00:39',14,NULL,0,0),(38,14,2,2,'2021-02-08 08:00:39',14,'2021-02-08 08:00:39',14,NULL,0,0);
/*!40000 ALTER TABLE `adt_audit_kertas_kerja_ikhtisar_kode_rekomendasi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adt_audit_kertas_kerja_ikhtisar_kode_temuan`
--

DROP TABLE IF EXISTS `adt_audit_kertas_kerja_ikhtisar_kode_temuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adt_audit_kertas_kerja_ikhtisar_kode_temuan` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_kertas_kerja_ikhtisar` int(11) NOT NULL,
  `id_kode_temuan` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `tipe` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adt_audit_kertas_kerja_ikhtisar_kode_temuan`
--

LOCK TABLES `adt_audit_kertas_kerja_ikhtisar_kode_temuan` WRITE;
/*!40000 ALTER TABLE `adt_audit_kertas_kerja_ikhtisar_kode_temuan` DISABLE KEYS */;
INSERT INTO `adt_audit_kertas_kerja_ikhtisar_kode_temuan` VALUES (1,1,1,1,'judul_kondisi','2020-11-28 05:42:12',1,'2020-11-28 05:42:12',1,NULL,0,0),(2,1,22,2,'judul_kondisi','2020-11-28 05:42:12',1,'2020-11-28 05:42:12',1,NULL,0,0),(3,1,25,3,'judul_kondisi','2020-11-28 05:42:12',1,'2020-11-28 05:42:12',1,NULL,0,0),(4,1,1,1,'uraian_kondisi','2020-11-28 05:42:12',1,'2020-11-28 05:42:12',1,NULL,0,0),(5,1,41,2,'uraian_kondisi','2020-11-28 05:42:12',1,'2020-11-28 05:42:12',1,NULL,0,0),(6,1,44,3,'uraian_kondisi','2020-11-28 05:42:12',1,'2020-11-28 05:42:12',1,NULL,0,0),(7,2,1,1,'judul_kondisi','2020-12-02 19:10:05',1,'2020-12-02 19:10:05',1,NULL,0,0),(8,2,2,2,'judul_kondisi','2020-12-02 19:10:05',1,'2020-12-02 19:10:05',1,NULL,0,0),(9,2,3,3,'judul_kondisi','2020-12-02 19:10:05',1,'2020-12-02 19:10:05',1,NULL,0,0),(10,2,1,1,'uraian_kondisi','2020-12-02 19:10:05',1,'2020-12-02 19:10:05',1,NULL,0,0),(11,2,2,2,'uraian_kondisi','2020-12-02 19:10:05',1,'2020-12-02 19:10:05',1,NULL,0,0),(12,2,3,3,'uraian_kondisi','2020-12-02 19:10:05',1,'2020-12-02 19:10:05',1,NULL,0,0),(13,3,1,1,'judul_kondisi','2020-12-02 19:24:38',7,'2020-12-02 19:24:38',7,'2020-12-03 04:24:05',7,1),(14,3,2,2,'judul_kondisi','2020-12-02 19:24:38',7,'2020-12-02 19:24:38',7,'2020-12-03 04:24:05',7,1),(15,3,3,3,'judul_kondisi','2020-12-02 19:24:38',7,'2020-12-02 19:24:38',7,'2020-12-03 04:24:05',7,1),(16,3,1,1,'uraian_kondisi','2020-12-02 19:24:38',7,'2020-12-02 19:24:38',7,'2020-12-03 04:24:05',7,1),(17,4,1,1,'judul_kondisi','2020-12-02 20:22:11',8,'2020-12-02 20:22:11',8,'2020-12-02 20:22:53',8,1),(18,4,2,2,'judul_kondisi','2020-12-02 20:22:11',8,'2020-12-02 20:22:11',8,'2020-12-02 20:22:53',8,1),(19,4,3,3,'judul_kondisi','2020-12-02 20:22:11',8,'2020-12-02 20:22:11',8,'2020-12-02 20:22:53',8,1),(20,4,1,1,'uraian_kondisi','2020-12-02 20:22:11',8,'2020-12-02 20:22:11',8,'2020-12-02 20:22:53',8,1),(21,4,2,2,'uraian_kondisi','2020-12-02 20:22:11',8,'2020-12-02 20:22:11',8,'2020-12-02 20:22:53',8,1),(22,4,3,3,'uraian_kondisi','2020-12-02 20:22:11',8,'2020-12-02 20:22:11',8,'2020-12-02 20:22:53',8,1),(23,4,1,1,'judul_kondisi','2020-12-02 20:22:53',8,'2020-12-02 20:22:53',8,'2020-12-03 04:26:53',8,1),(24,4,2,2,'judul_kondisi','2020-12-02 20:22:53',8,'2020-12-02 20:22:53',8,'2020-12-03 04:26:53',8,1),(25,4,3,3,'judul_kondisi','2020-12-02 20:22:53',8,'2020-12-02 20:22:53',8,'2020-12-03 04:26:53',8,1),(26,4,1,1,'uraian_kondisi','2020-12-02 20:22:53',8,'2020-12-02 20:22:53',8,'2020-12-03 04:26:53',8,1),(27,4,2,2,'uraian_kondisi','2020-12-02 20:22:53',8,'2020-12-02 20:22:53',8,'2020-12-03 04:26:53',8,1),(28,4,3,3,'uraian_kondisi','2020-12-02 20:22:53',8,'2020-12-02 20:22:53',8,'2020-12-03 04:26:53',8,1),(29,5,1,1,'judul_kondisi','2020-12-02 20:22:53',8,'2020-12-02 20:22:53',8,'2020-12-03 04:26:53',8,1),(30,5,2,2,'judul_kondisi','2020-12-02 20:22:53',8,'2020-12-02 20:22:53',8,'2020-12-03 04:26:53',8,1),(31,5,4,3,'judul_kondisi','2020-12-02 20:22:53',8,'2020-12-02 20:22:53',8,'2020-12-03 04:26:53',8,1),(32,5,1,1,'uraian_kondisi','2020-12-02 20:22:53',8,'2020-12-02 20:22:53',8,'2020-12-03 04:26:53',8,1),(33,5,2,2,'uraian_kondisi','2020-12-02 20:22:53',8,'2020-12-02 20:22:53',8,'2020-12-03 04:26:53',8,1),(34,5,4,3,'uraian_kondisi','2020-12-02 20:22:53',8,'2020-12-02 20:22:53',8,'2020-12-03 04:26:53',8,1),(35,3,1,1,'judul_kondisi','2020-12-03 04:24:05',7,'2020-12-03 04:24:05',7,NULL,0,0),(36,3,2,2,'judul_kondisi','2020-12-03 04:24:05',7,'2020-12-03 04:24:05',7,NULL,0,0),(37,3,3,3,'judul_kondisi','2020-12-03 04:24:05',7,'2020-12-03 04:24:05',7,NULL,0,0),(38,3,1,1,'uraian_kondisi','2020-12-03 04:24:05',7,'2020-12-03 04:24:05',7,NULL,0,0),(39,4,1,1,'judul_kondisi','2020-12-03 04:26:53',8,'2020-12-03 04:26:53',8,NULL,0,0),(40,4,2,2,'judul_kondisi','2020-12-03 04:26:53',8,'2020-12-03 04:26:53',8,NULL,0,0),(41,4,3,3,'judul_kondisi','2020-12-03 04:26:53',8,'2020-12-03 04:26:53',8,NULL,0,0),(42,4,1,1,'uraian_kondisi','2020-12-03 04:26:53',8,'2020-12-03 04:26:53',8,NULL,0,0),(43,4,2,2,'uraian_kondisi','2020-12-03 04:26:53',8,'2020-12-03 04:26:53',8,NULL,0,0),(44,4,3,3,'uraian_kondisi','2020-12-03 04:26:53',8,'2020-12-03 04:26:53',8,NULL,0,0),(45,5,1,1,'judul_kondisi','2020-12-03 04:26:53',8,'2020-12-03 04:26:53',8,NULL,0,0),(46,5,2,2,'judul_kondisi','2020-12-03 04:26:53',8,'2020-12-03 04:26:53',8,NULL,0,0),(47,5,4,3,'judul_kondisi','2020-12-03 04:26:53',8,'2020-12-03 04:26:53',8,NULL,0,0),(48,5,1,1,'uraian_kondisi','2020-12-03 04:26:53',8,'2020-12-03 04:26:53',8,NULL,0,0),(49,5,2,2,'uraian_kondisi','2020-12-03 04:26:53',8,'2020-12-03 04:26:53',8,NULL,0,0),(50,5,4,3,'uraian_kondisi','2020-12-03 04:26:53',8,'2020-12-03 04:26:53',8,NULL,0,0),(51,6,1,1,'judul_kondisi','2020-12-08 02:10:27',7,'2020-12-08 02:10:27',7,NULL,0,0),(52,6,2,2,'judul_kondisi','2020-12-08 02:10:27',7,'2020-12-08 02:10:27',7,NULL,0,0),(53,6,3,3,'judul_kondisi','2020-12-08 02:10:27',7,'2020-12-08 02:10:27',7,NULL,0,0),(54,6,1,1,'uraian_kondisi','2020-12-08 02:10:27',7,'2020-12-08 02:10:27',7,NULL,0,0),(55,6,2,2,'uraian_kondisi','2020-12-08 02:10:27',7,'2020-12-08 02:10:27',7,NULL,0,0),(56,6,3,3,'uraian_kondisi','2020-12-08 02:10:27',7,'2020-12-08 02:10:27',7,NULL,0,0),(57,7,1,1,'judul_kondisi','2020-12-08 02:23:24',8,'2020-12-08 02:23:24',8,NULL,0,0),(58,7,2,2,'judul_kondisi','2020-12-08 02:23:24',8,'2020-12-08 02:23:24',8,NULL,0,0),(59,7,3,3,'judul_kondisi','2020-12-08 02:23:24',8,'2020-12-08 02:23:24',8,NULL,0,0),(60,7,1,1,'uraian_kondisi','2020-12-08 02:23:24',8,'2020-12-08 02:23:24',8,NULL,0,0),(61,7,2,2,'uraian_kondisi','2020-12-08 02:23:24',8,'2020-12-08 02:23:24',8,NULL,0,0),(62,7,3,3,'uraian_kondisi','2020-12-08 02:23:24',8,'2020-12-08 02:23:24',8,NULL,0,0),(63,8,1,1,'judul_kondisi','2020-12-08 02:23:24',8,'2020-12-08 02:23:24',8,NULL,0,0),(64,8,2,2,'judul_kondisi','2020-12-08 02:23:24',8,'2020-12-08 02:23:24',8,NULL,0,0),(65,8,3,3,'judul_kondisi','2020-12-08 02:23:24',8,'2020-12-08 02:23:24',8,NULL,0,0),(66,8,1,1,'uraian_kondisi','2020-12-08 02:23:24',8,'2020-12-08 02:23:24',8,NULL,0,0),(67,8,2,2,'uraian_kondisi','2020-12-08 02:23:24',8,'2020-12-08 02:23:24',8,NULL,0,0),(68,8,3,3,'uraian_kondisi','2020-12-08 02:23:24',8,'2020-12-08 02:23:24',8,NULL,0,0),(69,9,1,1,'judul_kondisi','2020-12-08 02:25:48',7,'2020-12-08 02:25:48',7,'2020-12-08 02:31:14',7,1),(70,9,2,2,'judul_kondisi','2020-12-08 02:25:48',7,'2020-12-08 02:25:48',7,'2020-12-08 02:31:14',7,1),(71,9,3,3,'judul_kondisi','2020-12-08 02:25:48',7,'2020-12-08 02:25:48',7,'2020-12-08 02:31:14',7,1),(72,9,1,1,'uraian_kondisi','2020-12-08 02:25:48',7,'2020-12-08 02:25:48',7,'2020-12-08 02:31:14',7,1),(73,9,2,2,'uraian_kondisi','2020-12-08 02:25:48',7,'2020-12-08 02:25:48',7,'2020-12-08 02:31:14',7,1),(74,9,3,3,'uraian_kondisi','2020-12-08 02:25:48',7,'2020-12-08 02:25:48',7,'2020-12-08 02:31:14',7,1),(75,9,1,1,'judul_kondisi','2020-12-08 02:31:14',7,'2020-12-08 02:31:14',7,NULL,0,0),(76,9,2,2,'judul_kondisi','2020-12-08 02:31:14',7,'2020-12-08 02:31:14',7,NULL,0,0),(77,9,3,3,'judul_kondisi','2020-12-08 02:31:14',7,'2020-12-08 02:31:14',7,NULL,0,0),(78,9,1,1,'uraian_kondisi','2020-12-08 02:31:14',7,'2020-12-08 02:31:14',7,NULL,0,0),(79,9,2,2,'uraian_kondisi','2020-12-08 02:31:14',7,'2020-12-08 02:31:14',7,NULL,0,0),(80,9,3,3,'uraian_kondisi','2020-12-08 02:31:14',7,'2020-12-08 02:31:14',7,NULL,0,0),(81,10,65,1,'judul_kondisi','2020-12-09 21:24:45',21,'2020-12-09 21:24:45',21,NULL,0,0),(82,10,66,2,'judul_kondisi','2020-12-09 21:24:45',21,'2020-12-09 21:24:45',21,NULL,0,0),(83,10,67,3,'judul_kondisi','2020-12-09 21:24:45',21,'2020-12-09 21:24:45',21,NULL,0,0),(84,10,1,1,'uraian_kondisi','2020-12-09 21:24:45',21,'2020-12-09 21:24:45',21,NULL,0,0),(85,10,2,2,'uraian_kondisi','2020-12-09 21:24:45',21,'2020-12-09 21:24:45',21,NULL,0,0),(86,10,3,3,'uraian_kondisi','2020-12-09 21:24:45',21,'2020-12-09 21:24:45',21,NULL,0,0),(87,11,1,1,'judul_kondisi','2021-01-20 08:14:32',7,'2021-01-20 08:14:32',7,NULL,0,0),(88,11,2,2,'judul_kondisi','2021-01-20 08:14:32',7,'2021-01-20 08:14:32',7,NULL,0,0),(89,11,3,3,'judul_kondisi','2021-01-20 08:14:32',7,'2021-01-20 08:14:32',7,NULL,0,0),(90,11,1,1,'uraian_kondisi','2021-01-20 08:14:32',7,'2021-01-20 08:14:32',7,NULL,0,0),(91,11,2,2,'uraian_kondisi','2021-01-20 08:14:32',7,'2021-01-20 08:14:32',7,NULL,0,0),(92,11,3,3,'uraian_kondisi','2021-01-20 08:14:32',7,'2021-01-20 08:14:32',7,NULL,0,0),(93,12,1,1,'judul_kondisi','2021-01-20 08:42:57',7,'2021-01-20 08:42:57',7,NULL,0,0),(94,12,2,2,'judul_kondisi','2021-01-20 08:42:57',7,'2021-01-20 08:42:57',7,NULL,0,0),(95,12,3,3,'judul_kondisi','2021-01-20 08:42:57',7,'2021-01-20 08:42:57',7,NULL,0,0),(96,12,1,1,'uraian_kondisi','2021-01-20 08:42:57',7,'2021-01-20 08:42:57',7,NULL,0,0),(97,12,2,2,'uraian_kondisi','2021-01-20 08:42:57',7,'2021-01-20 08:42:57',7,NULL,0,0),(98,12,3,3,'uraian_kondisi','2021-01-20 08:42:57',7,'2021-01-20 08:42:57',7,NULL,0,0),(99,13,1,1,'judul_kondisi','2021-01-20 08:44:43',5,'2021-01-20 08:44:43',5,NULL,0,0),(100,13,2,2,'judul_kondisi','2021-01-20 08:44:43',5,'2021-01-20 08:44:43',5,NULL,0,0),(101,13,3,3,'judul_kondisi','2021-01-20 08:44:43',5,'2021-01-20 08:44:43',5,NULL,0,0),(102,13,1,1,'uraian_kondisi','2021-01-20 08:44:43',5,'2021-01-20 08:44:43',5,NULL,0,0),(103,13,2,2,'uraian_kondisi','2021-01-20 08:44:43',5,'2021-01-20 08:44:43',5,NULL,0,0),(104,13,3,3,'uraian_kondisi','2021-01-20 08:44:43',5,'2021-01-20 08:44:43',5,NULL,0,0),(105,14,1,1,'judul_kondisi','2021-02-08 08:00:39',14,'2021-02-08 08:00:39',14,NULL,0,0),(106,14,2,2,'judul_kondisi','2021-02-08 08:00:39',14,'2021-02-08 08:00:39',14,NULL,0,0),(107,14,3,3,'judul_kondisi','2021-02-08 08:00:39',14,'2021-02-08 08:00:39',14,NULL,0,0),(108,14,1,1,'uraian_kondisi','2021-02-08 08:00:39',14,'2021-02-08 08:00:39',14,NULL,0,0),(109,14,2,2,'uraian_kondisi','2021-02-08 08:00:39',14,'2021-02-08 08:00:39',14,NULL,0,0),(110,14,3,3,'uraian_kondisi','2021-02-08 08:00:39',14,'2021-02-08 08:00:39',14,NULL,0,0);
/*!40000 ALTER TABLE `adt_audit_kertas_kerja_ikhtisar_kode_temuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adt_audit_kertas_kerja_ikhtisar_review`
--

DROP TABLE IF EXISTS `adt_audit_kertas_kerja_ikhtisar_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adt_audit_kertas_kerja_ikhtisar_review` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_kertas_kerja_ikhtisar` int(11) NOT NULL,
  `judul_kondisi` text COLLATE utf8mb4_unicode_ci,
  `uraian_kondisi` text COLLATE utf8mb4_unicode_ci,
  `kriteria` text COLLATE utf8mb4_unicode_ci,
  `sebab` text COLLATE utf8mb4_unicode_ci,
  `akibat` text COLLATE utf8mb4_unicode_ci,
  `rekomendasi` text COLLATE utf8mb4_unicode_ci,
  `tipe` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adt_audit_kertas_kerja_ikhtisar_review`
--

LOCK TABLES `adt_audit_kertas_kerja_ikhtisar_review` WRITE;
/*!40000 ALTER TABLE `adt_audit_kertas_kerja_ikhtisar_review` DISABLE KEYS */;
INSERT INTO `adt_audit_kertas_kerja_ikhtisar_review` VALUES (1,1,'<p>Judul Kondisi Review</p>\n','','','','<p>Akibat REview</p>\n','','audit','2020-11-28 05:43:51',1,'2020-11-28 05:43:51',1,NULL,0,0),(2,1,'','','','','','','nhp','2020-11-28 05:52:37',1,'2020-11-28 05:52:37',1,NULL,0,0),(3,3,'','','','','','','audit','2020-12-03 03:29:52',13,'2020-12-03 03:29:52',13,NULL,0,1),(4,4,'<p>perbaiki judul kodisi</p>\n','<p>perbaiki uraian kondisi</p>\n','<p>perbaiki</p>\n','','<p>perbaiki</p>\n','','audit','2020-12-03 04:25:46',13,'2020-12-03 04:25:46',13,NULL,0,1),(5,5,'<p>perbaiki bagian ini</p>\n','','','','','','audit','2020-12-03 04:25:46',13,'2020-12-03 04:25:46',13,NULL,0,1),(6,9,'<p>tolong tambahkan lagi isiannya</p>\n','<p>tambahkan lagi</p>\n','<p>perbaiki</p>\n','<p>tambahkan lagi isiannya</p>\n','<p>perbaiki lagi</p>\n','<p>tolong tambahkan lagi</p>\n','audit','2020-12-08 02:29:17',13,'2020-12-08 02:30:35',13,NULL,0,1),(7,7,'<p>perbaiki</p>\n','','','','','','nhp','2020-12-08 02:34:46',11,'2020-12-08 02:36:27',11,NULL,0,1),(8,9,'<p>perbaiki</p>\n','','','','','','nhp','2020-12-08 02:34:46',11,'2020-12-08 02:36:27',11,NULL,0,1),(9,7,'<p>perbaiki</p>\n','','','','','','lhp','2020-12-08 03:05:46',4,'2020-12-08 03:05:46',4,NULL,0,1),(10,8,'','','','','','','lhp','2020-12-08 03:05:46',4,'2020-12-08 03:05:46',4,NULL,0,1),(11,9,'','','','','','','lhp','2020-12-08 03:05:46',4,'2020-12-08 03:05:46',4,NULL,0,1);
/*!40000 ALTER TABLE `adt_audit_kertas_kerja_ikhtisar_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adt_audit_kertas_kerja_ikhtisar_tindak_lanjut`
--

DROP TABLE IF EXISTS `adt_audit_kertas_kerja_ikhtisar_tindak_lanjut`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adt_audit_kertas_kerja_ikhtisar_tindak_lanjut` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_kertas_kerja_ikhtisar` int(11) NOT NULL,
  `tindak_lanjut` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `s` int(11) NOT NULL DEFAULT '0',
  `d` int(11) NOT NULL DEFAULT '0',
  `b` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adt_audit_kertas_kerja_ikhtisar_tindak_lanjut`
--

LOCK TABLES `adt_audit_kertas_kerja_ikhtisar_tindak_lanjut` WRITE;
/*!40000 ALTER TABLE `adt_audit_kertas_kerja_ikhtisar_tindak_lanjut` DISABLE KEYS */;
INSERT INTO `adt_audit_kertas_kerja_ikhtisar_tindak_lanjut` VALUES (1,7,'bla bla bla',0,0,0,'2020-12-08 03:09:19',1,'2020-12-08 03:09:19',1,NULL,0,0),(2,8,'',0,0,0,'2020-12-08 03:25:58',1,'2020-12-08 03:25:58',1,NULL,0,0),(3,9,'',0,0,0,'2020-12-08 03:25:58',1,'2020-12-08 03:25:58',1,NULL,0,0),(4,10,'',1,0,0,'2020-12-09 22:15:07',1,'2020-12-09 22:15:07',1,NULL,0,0);
/*!40000 ALTER TABLE `adt_audit_kertas_kerja_ikhtisar_tindak_lanjut` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adt_audit_kertas_kerja_review`
--

DROP TABLE IF EXISTS `adt_audit_kertas_kerja_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adt_audit_kertas_kerja_review` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_kertas_kerja` int(11) NOT NULL,
  `uraian_singkat` text COLLATE utf8mb4_unicode_ci,
  `tipe` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adt_audit_kertas_kerja_review`
--

LOCK TABLES `adt_audit_kertas_kerja_review` WRITE;
/*!40000 ALTER TABLE `adt_audit_kertas_kerja_review` DISABLE KEYS */;
INSERT INTO `adt_audit_kertas_kerja_review` VALUES (1,1,'<p>Review Hei kamu kata atasn gini</p>','audit','2020-11-28 05:43:51',1,'2020-11-28 05:53:37',1,NULL,0,0),(2,1,'<p>Review</p>','nhp','2020-11-28 05:52:37',1,'2020-11-28 05:52:37',1,NULL,0,0),(3,3,NULL,'audit','2020-12-03 03:29:52',13,'2020-12-03 03:29:52',13,NULL,0,1),(4,5,'<p>perbaiki uraian singkat</p>','audit','2020-12-03 04:25:46',13,'2020-12-03 04:25:46',13,NULL,0,0),(5,8,NULL,'audit','2020-12-08 02:29:17',13,'2020-12-08 02:29:17',13,NULL,0,0);
/*!40000 ALTER TABLE `adt_audit_kertas_kerja_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adt_audit_kertas_kerja_status`
--

DROP TABLE IF EXISTS `adt_audit_kertas_kerja_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adt_audit_kertas_kerja_status` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adt_audit_kertas_kerja_status`
--

LOCK TABLES `adt_audit_kertas_kerja_status` WRITE;
/*!40000 ALTER TABLE `adt_audit_kertas_kerja_status` DISABLE KEYS */;
INSERT INTO `adt_audit_kertas_kerja_status` VALUES (1,'draft','Menunggu Persetujuan Ketua Tim','2020-11-29 05:30:02',NULL,'2020-11-29 05:30:02',NULL,NULL,0,0),(2,'review_audit','Perlu Di Revisi Auditor','2020-11-29 05:30:03',NULL,'2020-11-29 05:30:03',NULL,NULL,0,0),(3,'approved_audit','Sudah Di Setujui Ketua Tim','2020-11-29 05:30:03',NULL,'2020-11-29 05:30:03',NULL,NULL,0,0),(4,'review_nhp','Perlu Di Revisi Ketua Tim','2020-11-29 05:30:03',NULL,'2020-11-29 05:30:03',NULL,NULL,0,0),(5,'approved_nhp','Sudah Di Setujui Pengendali Teknis','2020-11-29 05:30:03',NULL,'2020-11-29 05:30:03',NULL,NULL,0,0),(6,'review_lhp','Perlu Di Revisi Pengendali Teknis','2020-11-29 05:30:03',NULL,'2020-11-29 05:30:03',NULL,NULL,0,0),(7,'approved_lhp','Telah Di Setujui Inspektur','2020-11-29 05:30:03',NULL,'2020-11-29 05:30:03',NULL,NULL,0,0);
/*!40000 ALTER TABLE `adt_audit_kertas_kerja_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `akr_butir_kegiatan`
--

DROP TABLE IF EXISTS `akr_butir_kegiatan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `akr_butir_kegiatan` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_sub_unsur` int(11) NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `angka_kredit` decimal(8,3) NOT NULL,
  `is_all_jenjang` tinyint(4) NOT NULL,
  `id_butir_kegiatan_satuan` int(11) NOT NULL,
  `id_jabatan` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `akr_butir_kegiatan`
--

LOCK TABLES `akr_butir_kegiatan` WRITE;
/*!40000 ALTER TABLE `akr_butir_kegiatan` DISABLE KEYS */;
INSERT INTO `akr_butir_kegiatan` VALUES (1,1,'Sarjana S1/Diploma IV',100.000,1,1,0,NULL,0,NULL,0,NULL,0,0),(2,1,'Diploma III (D3)',60.000,1,1,0,NULL,0,NULL,0,NULL,0,0),(3,2,'Lamanya lebih dari 960 jam',15.000,1,2,0,NULL,0,NULL,0,NULL,0,0),(4,2,'Lamanya antara 641 - 960 jam',9.000,1,2,0,NULL,0,NULL,0,NULL,0,0),(5,2,'Lamanya 481 - 640 jam',6.000,1,2,0,NULL,0,NULL,0,NULL,0,0),(6,2,'Lamanya 161 - 480 jam',3.000,1,2,0,NULL,0,NULL,0,NULL,0,0),(7,2,'Lamanya 81 - 160 jam',2.000,1,2,0,NULL,0,NULL,0,NULL,0,0),(8,2,'Lamanya 30 - 80 jam',1.500,1,2,0,NULL,0,NULL,0,NULL,0,0),(9,3,'Pendidikan dan pelatihan Prajabatan golongan II',1.500,1,2,0,NULL,0,NULL,0,NULL,0,0),(10,4,'Melaksanakan tugas-tugas pengawasan sederhana  dalam audit kinerja',0.004,0,3,1443,NULL,0,NULL,0,NULL,0,0),(11,4,'Melaksanakan tugas-tugas pengawasan dengan kompleksitas rendah  dalam audit kinerja',0.010,0,3,1444,NULL,0,NULL,0,NULL,0,0),(12,4,'Melaksanakan tugas-tugas pengawasan dengan kompleksitas sedang  dalam audit kinerja',0.020,0,3,1445,NULL,0,NULL,0,NULL,0,0),(13,4,'Melaksanakan tugas-tugas pengawasan sederhana  dalam audit atas aspek keuangan tertentu',0.004,0,4,1443,NULL,0,NULL,0,NULL,0,0),(14,4,'Melaksanakan tugas-tugas pengawasan dengan kompleksitas rendah  dalam audit atas aspek keuangan tertentu',0.010,0,4,1444,NULL,0,NULL,0,NULL,0,0),(15,4,'\nMelaksanakan tugas-tugas pengawasan dengan kompleksitas\nsedang  dalam audit atas aspek keuangan tertentu',0.020,0,4,1445,NULL,0,NULL,0,NULL,0,0),(16,4,'Melaksanakan tugas-tugas pengawasan sederhana  dalam audit untuk tujuan tertentu',0.004,0,5,1443,NULL,0,NULL,0,NULL,0,0),(17,4,'Melaksanakan tugas-tugas pengawasan dengan kompleksitas rendah  dalam  audit untuk tujuan tertentu',0.010,0,5,1444,NULL,0,NULL,0,NULL,0,0),(18,4,'Melaksanakan tugas-tugas pengawasan dengan kompleksitas sedang  dalam audit untuk tujuan tertentu',0.020,0,5,1445,NULL,0,NULL,0,NULL,0,0),(19,4,'Melaksanakan tugas-tugas pengawasan sederhana dalam audit khusus/investigasi/berindikasi tindak pidana korupsi',0.004,0,6,1443,NULL,0,NULL,0,NULL,0,0),(20,4,'Melaksanakan tugas-tugas pengawasan dengan kompleksitas rendah dalam audit khusus/investigasi /berindikasi tindak pidana korupsi',0.013,0,6,1444,NULL,0,NULL,0,NULL,0,0),(21,4,'Melaksanakan tugas-tugas pengawasan dengan kompleksitas sedang dalam audit khusus/investigasi/berindikasi tindak pidana korupsi',0.025,0,6,1445,NULL,0,NULL,0,NULL,0,0),(22,4,'Melaksanakan tugas-tugas pengawasan sederhana dalam kegiatan evaluasi',0.004,0,7,1443,NULL,0,NULL,0,NULL,0,0),(23,4,'Melaksanakan tugas-tugas pengawasan dengan kompleksitas rendah dalam kegiatan evaluasi',0.010,0,7,1444,NULL,0,NULL,0,NULL,0,0),(24,4,'Melaksanakan tugas-tugas pengawasan dengan kompleksitas sedang dalam kegiatan evaluasi',0.020,0,7,1445,NULL,0,NULL,0,NULL,0,0),(25,4,'Melaksanakan tugas-tugas pengawasan sederhana dalam kegiatan reviu',0.004,0,8,1443,NULL,0,NULL,0,NULL,0,0),(26,4,'Melaksanakan tugas-tugas pengawasan dengan kompleksitas rendah dalam kegiatan reviu',0.010,0,8,1444,NULL,0,NULL,0,NULL,0,0),(27,4,'Melaksanakan tugas-tugas pengawasan dengan kompleksitas sedang dalam kegiatan reviu',0.020,0,8,1445,NULL,0,NULL,0,NULL,0,0),(28,4,'Melaksanakan tugas-tugas pengawasan sederhana dalam kegiatan pemantaua;',0.004,0,9,1443,NULL,0,NULL,0,NULL,0,0),(29,4,'Melaksanakan tugas-tugas pengawasan dengan kompleksitas rendah dalam kegiatan pemantauan',0.010,0,9,1444,NULL,0,NULL,0,NULL,0,0),(30,4,'Melaksanakan tugas-tugas pengawasan dengan kompleksitas sedang dalam kegiatan pemantauan',0.020,0,9,1445,NULL,0,NULL,0,NULL,0,0),(31,4,'Melaksanakan tugas-tugas pengawasan sederhana dalam kegiatan pengawasan lain',0.004,0,10,1443,NULL,0,NULL,0,NULL,0,0),(32,4,'Melaksanakan tugas-tugas pengawasan dengan kompleksitas rendah dalam kegiatan pengawasan lain',0.010,0,10,1444,NULL,0,NULL,0,NULL,0,0),(33,4,'Melaksanakan tugas-tugas pengawasan dengan kompleksitas sedang dalam kegiatan pengawasan lain',0.020,0,10,1445,NULL,0,NULL,0,NULL,0,0),(34,4,'Melaksanakan tugas-tugas pengawasan sederhana dalam rangka membantu melaksanakan kegiatan perencanaan, pengorganisasian, pengendalian dan evaluasi pengawasan',0.004,0,10,1443,NULL,0,NULL,0,NULL,0,0),(35,4,'Melaksanakan tugas-tugas pengawasan dengan kompleksitas rendah dalam rangka membantu melaksanakan kegiatan perencanaan, pengorganisasian, pengendalian dan evaluasi pengawasan',0.010,0,10,1444,NULL,0,NULL,0,NULL,0,0),(36,4,'Melaksanakan tugas-tugas pengawasan dengan kompleksitas sedang dalam rangka membantu melaksanakan kegiatan perencanaan, pengorganisasian, pengendalian dan evaluasi pengawasan',0.020,0,10,1445,NULL,0,NULL,0,NULL,0,0),(37,5,'Membuat Karya tulis/karya ilmiah hasil pengkajian di bidang pengawasan yang dipublikasikan dalam bentuk buku yang diterbitkan dan diedarkan secara internasional',15.000,1,11,0,NULL,0,NULL,0,NULL,0,0),(38,5,'Membuat Karya tulis/karya ilmiah hasil pengkajian di bidang pengawasan yang dipublikasikan dalam bentuk buku yang diterbitkan dan diedarkan secara nasional',12.500,1,11,0,NULL,0,NULL,0,NULL,0,0),(39,5,'Membuat Karya tulis/karya ilmiah hasil pengkajian di bidang pengawasan yang dipublikasikan dalam majalah yang diakui oleh Instansi Pembina',6.000,1,11,0,NULL,0,NULL,0,NULL,0,0),(40,5,'Membuat Karya tulis/karya ilmiah hasil pengkajian di bidang pengawasan yang tidak dipublikasikan, tetapi didokumentasikan di perpustakaan dalam bentuk buku',8.000,1,11,0,NULL,0,NULL,0,NULL,0,0),(41,5,'Membuat Karya tulis/karya ilmiah hasil pengkajian di bidang pengawasan yang tidak dipublikasikan, tetapi didokumentasikan di perpustakaan dalam bentuk naskah',4.000,1,12,0,NULL,0,NULL,0,NULL,0,0),(42,5,'Membuat tinjauan dan ulasan ilmiah hasil gagasan sendiri di bidang pengawasan yang dipublikasikan dalam bentuk buku yang diterbitkan dan diedarkan secara nasional',8.000,1,11,0,NULL,0,NULL,0,NULL,0,0),(43,5,'Membuat tinjauan dan ulasan ilmiah hasil gagasan sendiri di bidang pengawasan yang dipublikasikan dalam bentuk majalah yang diakui oleh Instansi Pembina',4.000,1,12,0,NULL,0,NULL,0,NULL,0,0),(44,5,'Membuat tinjauan dan ulasan ilmiah hasil gagasan sendiri di bidang pengawasan yang tidak dipublikasikan dalam bentuk buku',7.000,1,11,0,NULL,0,NULL,0,NULL,0,0),(45,5,'Membuat tinjauan dan ulasan ilmiah hasil gagasan sendiri di bidang pengawasan yang tidak dipublikasikan dalam bentuk naskah',3.500,1,12,0,NULL,0,NULL,0,NULL,0,0),(46,5,'Membuat tulisan ilmiah di bidang pengawasan yang disebarluaskan melalui media massa yang merupakan satu kesatuan',2.000,1,12,0,NULL,0,NULL,0,NULL,0,0),(47,5,'Membuat karya tulis/karya ilmiah berupa prasaran, tinjauan, gagasan atau ulasan ilmiah yang disampaikan dalam pertemuan ilmiah atas inisiatif sendiri',2.500,1,13,0,NULL,0,NULL,0,NULL,0,0),(48,6,'Menerjemehkan/menyadur di bidang pengawasan yang dipublikasikan Dalam bentuk buku yang diterbitkan dan diedarkan secara nasional',7.000,1,11,0,NULL,0,NULL,0,NULL,0,0),(49,6,'Menerjemehkan/menyadur di bidang pengawasan yang dipublikasikan Dalam bentuk majalah yang diakui oleh Instansi Pembina',3.500,1,12,0,NULL,0,NULL,0,NULL,0,0),(50,6,'Terjemahan/saduran di bidang pengawasan yang tidak dipublikasikan Dalam bentuk buku',3.000,1,11,0,NULL,0,NULL,0,NULL,0,0),(51,6,'Terjemahan/saduran di bidang pengawasan yang tidak dipublikasikan Dalam bentuk naskah',1.500,1,12,0,NULL,0,NULL,0,NULL,0,0),(52,7,'Melakukan studi banding di bidang pengawasan, per kegiatan',0.500,1,14,0,NULL,0,NULL,0,NULL,0,0),(53,7,'Menjadi nara sumber, penyaji, pemrasaran, moderator pada berbagai konferensi, kongres, workshop, pelatihan di kantor sendiri di bidang pengawasan, per kegiatan Konferensi dan kongres',1.000,1,15,0,NULL,0,NULL,0,NULL,0,0),(54,7,'Menjadi nara sumber, penyaji, pemrasaran, moderator pada berbagai konferensi, kongres, workshop, pelatihan di kantor sendiri di bidang pengawasan, per kegiatan Workshop',0.750,1,15,0,NULL,0,NULL,0,NULL,0,0),(55,7,'Menjadi nara sumber, penyaji, pemrasaran, moderator pada berbagai konferensi, kongres, workshop, pelatihan di kantor sendiri di bidang pengawasan, per kegiatan Pelatihan di Kantor Sendiri',0.250,1,16,0,NULL,0,NULL,0,NULL,0,0),(56,7,'Mengikuti kegiatan konferensi, kongres, workshop, pelatihan di kantor sendiri di bidang pengawasan, per kegiatan Konferensi dan kongres',0.500,1,2,0,NULL,0,NULL,0,NULL,0,0),(57,7,'Mengikuti kegiatan konferensi, kongres, workshop, pelatihan di kantor sendiri di bidang pengawasan, per kegiatan Workshop',0.250,1,2,0,NULL,0,NULL,0,NULL,0,0),(58,7,'Mengikuti kegiatan konferensi, kongres, workshop, pelatihan di kantor sendiri di bidang pengawasan, per kegiatan Pelatihan di Kantor Sendiri',0.100,1,17,0,NULL,0,NULL,0,NULL,0,0),(59,7,'Mengikuti Diklat fungsional penjenjangan dan teknis substantif pengawasan, per jam diklat',0.015,1,2,0,NULL,0,NULL,0,NULL,0,0),(60,7,'Memperoleh gelar profesi pengawasan seperti Certified Public Accountant, Certified Management Accountant, Certified Internal Auditor, Certified Information System Auditor, Certified Governmen',3.500,1,2,0,NULL,0,NULL,0,NULL,0,0),(61,8,'Melaksanakan penyuluhan/sosialisasi Standar Profesi dan Kode Etik Auditor per kegiatan',0.250,1,14,0,NULL,0,NULL,0,NULL,0,0),(62,8,'Berperan aktif dalam penerbitan buku/buletin/jurnal/majalah di bidang pengawasan sebagai pengurus/redaktur/editor, setiap tahun Internasional',2.000,1,19,0,NULL,0,NULL,0,NULL,0,0),(63,8,'Berperan aktif dalam penerbitan buku/buletin/jurnal/majalah di bidang pengawasan sebagai pengurus/redaktur/editor, setiap tahun Nasional',1.500,1,19,0,NULL,0,NULL,0,NULL,0,0),(64,8,'Berperan aktif dalam penerbitan buku/buletin/jurnal/majalah di bidang pengawasan sebagai pengurus/redaktur/editor, setiap tahun Daerah',1.000,1,19,0,NULL,0,NULL,0,NULL,0,0),(65,8,'Berperan aktif sebagai pengurus, dewan kehormatan organisasi profesi, setiap tahun Internasional',2.000,1,18,0,NULL,0,NULL,0,NULL,0,0),(66,8,'Berperan aktif sebagai pengurus, dewan kehormatan organisasi profesi, setiap tahun Nasional',1.500,1,18,0,NULL,0,NULL,0,NULL,0,0),(67,8,'Berperan aktif sebagai pengurus, dewan kehormatan organisasi profesi, setiap tahun Daerah Provinsi/Kabupaten/Kota/Departemen/LPND',1.000,1,18,0,NULL,0,NULL,0,NULL,0,0),(68,9,'Mengikuti seminar/lokakarya dan berperan sebagai Pemrasaran',3.000,1,2,0,NULL,0,NULL,0,NULL,0,0),(69,9,'Mengikuti seminar/lokakarya dan berperan sebagai Moderator',2.000,1,2,0,NULL,0,NULL,0,NULL,0,0),(70,9,'Mengikuti seminar/lokakarya dan berperan sebagai Peserta',1.000,1,2,0,NULL,0,NULL,0,NULL,0,0),(71,10,'Menjadi anggota Tim Penilai Angka Kredit Auditor secara aktif, setiap DUPAK',0.040,1,20,0,NULL,0,NULL,0,NULL,0,0),(72,11,'Memperoleh penghargaan/tanda jasa Satyalancana Karya Satya 30 (tiga puluh) tahun',3.000,1,21,0,NULL,0,NULL,0,NULL,0,0),(73,11,'Memperoleh penghargaan/tanda jasa Satyalancana Karya Satya 20 (dua puluh) tahun',2.000,1,21,0,NULL,0,NULL,0,NULL,0,0),(74,11,'Memperoleh penghargaan/tanda jasa Satyalancana Karya Satya 10 (sepuluh) tahun',1.000,1,21,0,NULL,0,NULL,0,NULL,0,0),(75,11,'Memperoleh penghargaan/tanda jasa lainnya Tingkat I',3.000,1,21,0,NULL,0,NULL,0,NULL,0,0),(76,11,'Memperoleh penghargaan/tanda jasa lainnya Tingkat II',2.000,1,21,0,NULL,0,NULL,0,NULL,0,0),(77,11,'Memperoleh penghargaan/tanda jasa lainnya Tingkat III',1.000,1,21,0,NULL,0,NULL,0,NULL,0,0),(78,12,'Mengajar/melatih pada diklat teknis substantif/fungsional, per jam pelatihan',0.038,1,22,0,NULL,0,NULL,0,NULL,0,0),(79,13,'Mengikuti diklat teknis substantif penunjang pengawasan, per jam diklat',0.018,1,2,0,NULL,0,NULL,0,NULL,0,0),(80,14,'Menjadi anggota dalam kepanitiaan dalam forum pengawasan',0.500,1,24,0,NULL,0,NULL,0,NULL,0,0),(81,15,'Berperan aktif sebagai anggota organisasi profesi, setiap tahun Internasional',1.000,1,23,0,NULL,0,NULL,0,NULL,0,0),(82,15,'Berperan aktif sebagai anggota organisasi profesi, setiap tahun Nasional',0.750,1,23,0,NULL,0,NULL,0,NULL,0,0),(83,15,'Berperan aktif sebagai anggota organisasi profesi, setiap tahun Daerah Provinsi/Kabupaten/Kota/Departemen/LPND',0.500,1,23,0,NULL,0,NULL,0,NULL,0,0),(84,16,'Memperoleh Gelar Kehormatan Akademis, setiap gelar',15.000,1,21,0,NULL,0,NULL,0,NULL,0,0),(85,16,'Memperoleh gelar kesarjanaan lainnya, setiap gelar Doktor (S3)',15.000,1,1,0,NULL,0,NULL,0,NULL,0,0),(86,16,'Memperoleh gelar kesarjanaan lainnya, setiap gelar Pasca Sarjana (S2)',10.000,1,1,0,NULL,0,NULL,0,NULL,0,0),(87,16,'Memperoleh gelar kesarjanaan lainnya, setiap gelar Sarjana',5.000,1,1,0,NULL,0,NULL,0,NULL,0,0),(88,17,'Sarjana S1/Diploma IV',100.000,1,1,0,NULL,0,NULL,0,NULL,0,0),(89,17,'Pasca Sarjana (S2)',150.000,1,1,0,NULL,0,NULL,0,NULL,0,0),(90,17,'Doktor (S3)',200.000,1,1,0,NULL,0,NULL,0,NULL,0,0),(91,18,'Lamanya lebih dari 960 jam',15.000,1,2,0,NULL,0,NULL,0,NULL,0,0),(92,18,'Lamanya antara 641 - 960 jam',9.000,1,2,0,NULL,0,NULL,0,NULL,0,0),(93,18,'Lamanya 481 - 640 jam',6.000,1,2,0,NULL,0,NULL,0,NULL,0,0),(94,18,'Lamanya 161 - 480 jam',3.000,1,2,0,NULL,0,NULL,0,NULL,0,0),(95,18,'Lamanya 81 - 160 jam',2.000,1,2,0,NULL,0,NULL,0,NULL,0,0),(96,18,'Lamanya 30 - 80 jam',1.500,1,2,0,NULL,0,NULL,0,NULL,0,0),(97,19,'Pendidikan dan pelatihan Prajabatan golongan III',2.000,1,2,0,NULL,0,NULL,0,NULL,0,0),(98,20,'Melaksanakan tugas-tugas pengawasan dengan kompleksitas tinggi dalam audit kinerja',0.010,0,3,1020,NULL,0,NULL,0,NULL,0,0),(99,20,'Memimpin pelaksanaan suatu penugasan audit kinerja',0.020,0,3,1009,NULL,0,NULL,0,NULL,0,0),(100,20,'Melaksanakan tugas-tugas pengawasan dengan kompleksitas tinggi dalam audit atas aspek keuangan tertentu',0.010,0,4,1020,NULL,0,NULL,0,NULL,0,0),(101,20,'Memimpin pelaksanaan suatu penugasan audit atas aspek keuangan tertentu',0.020,0,4,1009,NULL,0,NULL,0,NULL,0,0),(102,20,'Melaksanakan tugas-tugas pengawasan dengan kompleksitas tinggi dalam audit untuk tujuan tertentu',0.010,0,5,1020,NULL,0,NULL,0,NULL,0,0),(103,20,'Memimpin pelaksanaan suatu penugasan audit untuk tujuan tertentu',0.020,0,5,1009,NULL,0,NULL,0,NULL,0,0),(104,20,'Melaksanakan tugas-tugas pengawasan dengan kompleksitas tinggi dalam audit khusus/investigasi/berindikasi tindak pidana korupsi',0.013,0,6,1020,NULL,0,NULL,0,NULL,0,0),(105,20,'Memimpin pelaksanaan suatu penugasan audit khusus/investigasi/berindikasi tindak pidana korupsi',0.025,0,6,1009,NULL,0,NULL,0,NULL,0,0),(106,20,'Mendampingi/memberikan keterangan ahli dalam proses penyidikan dan/atau peradilan kasus hasil pengawasan; per pemberian keterangan',0.200,0,25,1020,NULL,0,NULL,0,NULL,0,0),(107,20,'Mendampingi/memberikan keterangan ahli dalam proses penyidikan dan/atau peradilan kasus hasil pengawasan; per pemberian keterangan',0.400,0,25,1009,NULL,0,NULL,0,NULL,0,0),(108,20,'Mendampingi/memberikan keterangan ahli dalam proses penyidikan dan/atau peradilan kasus hasil pengawasan; per pemberian keterangan',0.600,0,25,977,NULL,0,NULL,0,NULL,0,0),(109,20,'Mendampingi/memberikan keterangan ahli dalam proses penyidikan dan/atau peradilan kasus hasil pengawasan; per pemberian keterangan',0.800,0,25,1442,NULL,0,NULL,0,NULL,0,0),(110,20,'Melaksanakan tugas-tugas pengawasan dengan kompleksitas tinggi dalam kegiatan evaluasi',0.010,0,7,1020,NULL,0,NULL,0,NULL,0,0),(111,20,'Memimpin pelaksanaan suatu penugasan dalam kegiatan evaluasi',0.020,0,7,1009,NULL,0,NULL,0,NULL,0,0),(112,20,'Melaksanakan tugas-tugas pengawasan dengan kompleksitas tinggi dalam kegiatan reviu',0.010,0,8,1020,NULL,0,NULL,0,NULL,0,0),(113,20,'Memimpin pelaksanaan suatu penugasan reviu',0.020,0,8,1009,NULL,0,NULL,0,NULL,0,0),(114,20,'Melaksanakan tugas-tugas pengawasan dengan kompleksitas tinggi dalam kegiatan pemantauan;',0.010,0,9,1020,NULL,0,NULL,0,NULL,0,0),(115,20,'Memimpin pelaksanaan suatu penugasan pemantauan',0.020,0,9,1009,NULL,0,NULL,0,NULL,0,0),(116,20,'Melaksanakan tugas-tugas pengawasan dengan kompleksitas tinggi dalam kegiatan pengawasan lain',0.010,0,10,1020,NULL,0,NULL,0,NULL,0,0),(117,20,'Memimpin pelaksanaan suatu penugasan pengawasan lain',0.020,0,10,1009,NULL,0,NULL,0,NULL,0,0),(118,20,'Melaksanakan tugas-tugas pengawasan dengan kompleksitas tinggi dalam rangka membantu melaksanakan kegiatan perencanaan, pengorganisasian, pengendalian dan evaluasi pengawasan',0.010,0,10,1020,NULL,0,NULL,0,NULL,0,0),(119,20,'Memimpin pelaksanaan suatu penugasan dalam rangka membantu melaksanakan kegiatan perencanaan, pengorganisasian, pengendalian dan evaluasi pengawasan',0.020,0,10,1009,NULL,0,NULL,0,NULL,0,0),(120,20,'Mengendalikan teknis pelaksanaan kegiatan pengawasan (audit, evaluasi, reviu, pemantauan dan pengawasan lain)',0.030,0,26,977,NULL,0,NULL,0,NULL,0,0),(121,20,'Mengendalikan mutu pelaksanaan kegiatan pengawasan (audit, evaluasi, reviu, pemantauan dan pengawasan lain)',0.040,0,26,1442,NULL,0,NULL,0,NULL,0,0),(122,21,'Melaksanakan kegiatan pengorganisasian pengawasan',0.030,0,10,977,NULL,0,NULL,0,NULL,0,0),(123,21,'Melaksanakan kegiatan pengendalian pengawasan',0.030,0,10,977,NULL,0,NULL,0,NULL,0,0),(124,21,'Membantu melaksanakan kegiatan perencanaan dan evaluasi pengawasan',0.030,0,10,977,NULL,0,NULL,0,NULL,0,0),(125,22,'Melaksanakan kegiatan perencanaan pengawasan',0.040,0,10,1442,NULL,0,NULL,0,NULL,0,0),(126,22,'Melaksanakan kegiatan evaluasi pengawasan',0.040,0,10,1442,NULL,0,NULL,0,NULL,0,0),(127,23,'Membuat karya tulis/karya ilmiah hasil pengkajian di bidang pengawasan yang dipublikasikan dalam bentuk buku yang diterbitkan dan diedarkan secara internasional',15.000,1,11,0,NULL,0,NULL,0,NULL,0,0),(128,23,'Membuat karya tulis/karya ilmiah hasil pengkajian di bidang pengawasan yang dipublikasikan dalam bentuk buku yang diterbitkan dan diedarkan secara nasional',12.500,1,11,0,NULL,0,NULL,0,NULL,0,0),(129,23,'Membuat karya tulis/karya ilmiah hasil pengkajian di bidang pengawasan yang dipublikasikan dalam majalah yang diakui oleh Instansi Pembina',6.000,1,11,0,NULL,0,NULL,0,NULL,0,0),(130,23,'Membuat karya tulis/karya ilmiah hasil pengkajian di bidang pengawasan yang tidak dipublikasikan, tetapi didokumentasikan di perpustakaan dalam bentuk buku',8.000,1,11,0,NULL,0,NULL,0,NULL,0,0),(131,23,'Membuat karya tulis/karya ilmiah hasil pengkajian di bidang pengawasan yang tidak dipublikasikan, tetapi didokumentasikan di perpustakaan dalam bentuk naskah',4.000,1,12,0,NULL,0,NULL,0,NULL,0,0),(132,23,'Tinjauan dan ulasan ilmiah hasil gagasan sendiri di bidang pengawasan yang dipublikasikan dalam bentuk buku yang diterbitkan dan diedarkan secara nasional',8.000,1,11,0,NULL,0,NULL,0,NULL,0,0),(133,23,'Tinjauan dan ulasan ilmiah hasil gagasan sendiri di bidang pengawasan yang dipublikasikan dalam bentuk majalah yang diakui oleh Instansi Pembina',4.000,1,12,0,NULL,0,NULL,0,NULL,0,0),(134,23,'Tinjauan dan ulasan ilmiah hasil gagasan sendiri di bidang pengawasan yang tidak dipublikasikan dalam bentuk buku',7.000,1,11,0,NULL,0,NULL,0,NULL,0,0),(135,23,'Tinjauan dan ulasan ilmiah hasil gagasan sendiri di bidang pengawasan yang tidak dipublikasikan dalam bentuk naskah',3.500,1,12,0,NULL,0,NULL,0,NULL,0,0),(136,23,'Tulisan ilmiah di bidang pengawasan yang disebarluaskan melalui media massa yang merupakan satu kesatuan',2.000,1,12,0,NULL,0,NULL,0,NULL,0,0),(137,23,'Karya tulis/karya ilmiah berupa prasaran, tinjauan, gagasan atau ulasan ilmiah yang disampaikan dalam pertemuan ilmiah atas inisiatif sendiri',2.500,1,13,0,NULL,0,NULL,0,NULL,0,0),(138,24,'Menerjemahkan/menyadur bidang pengawasan yang dipublikasikan Dalam bentuk buku yang diterbitkan dan diedarkan secara nasional',7.000,1,11,0,NULL,0,NULL,0,NULL,0,0),(139,24,'Menerjemahkan/menyadur bidang pengawasan yang dipublikasikan Dalam bentuk majalah yang diakui oleh Instansi Pembina',3.500,1,12,0,NULL,0,NULL,0,NULL,0,0),(140,24,'Menerjemahkan/menyadur di bidang pengawasan yang tidak dipublikasikan Dalam bentuk buku',3.000,1,11,0,NULL,0,NULL,0,NULL,0,0),(141,24,'Menerjemahkan/menyadur di bidang pengawasan yang tidak dipublikasikan Dalam bentuk naskah',1.500,1,12,0,NULL,0,NULL,0,NULL,0,0),(142,25,'Melakukan studi banding di bidang pengawasan, per kegiatan',0.500,1,14,0,NULL,0,NULL,0,NULL,0,0),(143,25,'Menjadi nara sumber, penyaji, pemrasaran, moderator pada berbagai konferensi, kongres, workshop , pelatihan di kantor sendiri di bidang pengawasan, per kegiatan Konferensi dan kongres',1.000,1,15,0,NULL,0,NULL,0,NULL,0,0),(144,25,'Menjadi nara sumber, penyaji, pemrasaran, moderator pada berbagai konferensi, kongres, workshop , pelatihan di kantor sendiri di bidang pengawasan, per kegiatan Workshop',0.750,1,15,0,NULL,0,NULL,0,NULL,0,0),(145,25,'Menjadi nara sumber, penyaji, pemrasaran, moderator pada berbagai konferensi, kongres, workshop , pelatihan di kantor sendiri di bidang pengawasan, per kegiatan Pelatihan di Kantor Sendiri',0.250,1,16,0,NULL,0,NULL,0,NULL,0,0),(146,25,'Mengikuti kegiatan konferensi, kongres, workshop , pelatihan di kantor sendiri di bidang pengawasan, per kegiatan Konferensi dan kongres',0.500,1,2,0,NULL,0,NULL,0,NULL,0,0),(147,25,'Mengikuti kegiatan konferensi, kongres, workshop , pelatihan di kantor sendiri di bidang pengawasan, per kegiatan Workshop',0.250,1,2,0,NULL,0,NULL,0,NULL,0,0),(148,25,'Mengikuti kegiatan konferensi, kongres, workshop , pelatihan di kantor sendiri di bidang pengawasan, per kegiatan Pelatihan di Kantor Sendiri',0.100,1,17,0,NULL,0,NULL,0,NULL,0,0),(149,25,'Mengikuti Diklat fungsional penjenjangan dan teknis substantif pengawasan, per jam diklat',0.015,1,2,0,NULL,0,NULL,0,NULL,0,0),(150,25,'Memperoleh gelar profesi pengawasan seperti Certified Public Accountant, Certified Management Accountant, Certified Internal Auditor, Certified Information System Auditor, Certified Governmen',3.500,1,2,0,NULL,0,NULL,0,NULL,0,0),(151,26,'Melaksanakan penyuluhan/sosialisasi Standar Profesi dan Kode Etik Auditor per kegiatan',0.250,1,14,0,NULL,0,NULL,0,NULL,0,0),(152,26,'Berperan aktif dalam penerbitan buku/buletin/jurnal/majalah di bidang pengawasan sebagai pengurus/redaktur/editor, setiap tahun Internasional',2.000,1,19,0,NULL,0,NULL,0,NULL,0,0),(153,26,'Berperan aktif dalam penerbitan buku/buletin/jurnal/majalah di bidang pengawasan sebagai pengurus/redaktur/editor, setiap tahun Nasional',1.500,1,19,0,NULL,0,NULL,0,NULL,0,0),(154,26,'Berperan aktif dalam penerbitan buku/buletin/jurnal/majalah di bidang pengawasan sebagai pengurus/redaktur/editor, setiap tahun Daerah',1.000,1,19,0,NULL,0,NULL,0,NULL,0,0),(155,26,'Berperan aktif sebagai pengurus, dewan kehormatan organisasi profesi, setiap tahun Internasional',2.000,1,18,0,NULL,0,NULL,0,NULL,0,0),(156,26,'Berperan aktif sebagai pengurus, dewan kehormatan organisasi profesi, setiap tahun Nasional',1.500,1,18,0,NULL,0,NULL,0,NULL,0,0),(157,26,'Berperan aktif sebagai pengurus, dewan kehormatan organisasi profesi, setiap tahun Daerah Provinsi/Kabupaten/Kota/Departemen/LPND',1.000,1,18,0,NULL,0,NULL,0,NULL,0,0),(158,27,'Mengikuti seminar/lokakarya dan berperan sebagai Pemrasaran',3.000,1,2,0,NULL,0,NULL,0,NULL,0,0),(159,27,'Mengikuti seminar/lokakarya dan berperan sebagai Moderator',2.000,1,2,0,NULL,0,NULL,0,NULL,0,0),(160,27,'Mengikuti seminar/lokakarya dan berperan sebagai Peserta',1.000,1,2,0,NULL,0,NULL,0,NULL,0,0),(161,28,'Menjadi anggota Tim Penilai Angka Kredit Auditor secara aktif, setiap DUPAK',0.040,1,20,0,NULL,0,NULL,0,NULL,0,0),(162,29,'Memperoleh penghargaan/tanda jasa Satyalancana Karya Satya 30 (tiga puluh) tahun',3.000,1,21,0,NULL,0,NULL,0,NULL,0,0),(163,29,'Memperoleh penghargaan/tanda jasa Satyalancana Karya Satya 20 (dua puluh) tahun',2.000,1,21,0,NULL,0,NULL,0,NULL,0,0),(164,29,'Memperoleh penghargaan/tanda jasa Satyalancana Karya Satya 10 (sepuluh) tahun',1.000,1,21,0,NULL,0,NULL,0,NULL,0,0),(165,29,'Memperoleh penghargaan/tanda jasa lainnya Tingkat I',3.000,1,21,0,NULL,0,NULL,0,NULL,0,0),(166,29,'Memperoleh penghargaan/tanda jasa lainnya Tingkat II',2.000,1,21,0,NULL,0,NULL,0,NULL,0,0),(167,29,'Memperoleh penghargaan/tanda jasa lainnya Tingkat III',1.000,1,21,0,NULL,0,NULL,0,NULL,0,0),(168,30,'Mengajar/melatih pada diklat teknis/fungsional, per jam pelatihan',0.038,1,22,0,NULL,0,NULL,0,NULL,0,0),(169,31,'Mengikuti diklat teknis substantif penunjang pengawasan, per jam diklat',0.018,1,2,0,NULL,0,NULL,0,NULL,0,0),(170,32,'Menjadi anggota dalam kepanitiaan dalam forum pengawasan',0.500,1,24,0,NULL,0,NULL,0,NULL,0,0),(171,33,'Berperan aktif sebagai anggota organisasi profesi, setiap tahun Internasional',1.000,1,23,0,NULL,0,NULL,0,NULL,0,0),(172,33,'Berperan aktif sebagai anggota organisasi profesi, setiap tahun Nasional',0.750,1,23,0,NULL,0,NULL,0,NULL,0,0),(173,33,'Berperan aktif sebagai anggota organisasi profesi, setiap tahun Daerah Provinsi/Kabupaten/Kota/Departemen/LPND',0.500,1,23,0,NULL,0,NULL,0,NULL,0,0),(174,34,'Memperoleh Gelar Kehormatan Akademis, setiap gelar',15.000,1,21,0,NULL,0,NULL,0,NULL,0,0),(175,34,'Doktor (S3)',15.000,1,1,0,NULL,0,NULL,0,NULL,0,0),(176,34,'Pasca Sarjana (S2)',10.000,1,1,0,NULL,0,NULL,0,NULL,0,0),(177,34,'Sarjana',5.000,1,1,0,NULL,0,NULL,0,NULL,0,0),(178,26,'Menyusun, memutakhirkan, dan berperan aktif dalam pemaparan/expose draft/hearing dan finalisasi Standar Profesi dan Kode Etik Auditor per jam Rancangan / Draft Standar Profesi dan Kode Etik A',0.040,0,27,1442,NULL,0,NULL,0,NULL,0,0),(179,26,'Menyusun, memutakhirkan, dan berperan aktif dalam pemaparan/expose draft/hearing dan finalisasi Standar Profesi dan Kode Etik Auditor per jam Final Standar Profesi dan Kode Etik Auditor',0.030,0,28,1442,NULL,0,NULL,0,NULL,0,0),(180,26,'Menyusun, memutakhirkan, dan berperan aktif dalam pemaparan/expose draft/hearing dan finalisasi Standar Profesi dan Kode Etik Auditor per jam Rancangan / Draft Standar Profesi dan Kode Etik A',0.040,0,27,977,NULL,0,NULL,0,NULL,0,0),(181,26,'Menyusun, memutakhirkan, dan berperan aktif dalam pemaparan/expose draft/hearing dan finalisasi Standar Profesi dan Kode Etik Auditor per jam Final Standar Profesi dan Kode Etik Auditor',0.030,0,28,977,NULL,0,NULL,0,NULL,0,0),(182,26,'Menyusun, memutakhirkan, dan berperan aktif dalam pemaparan/expose draft/hearing dan finalisasi Standar Profesi dan Kode Etik Auditor per jam Rancangan / Draft Standar Profesi dan Kode Etik A',0.040,0,27,1009,NULL,0,NULL,0,NULL,0,0),(183,26,'Menyusun, memutakhirkan, dan berperan aktif dalam pemaparan/expose draft/hearing dan finalisasi Standar Profesi dan Kode Etik Auditor per jam Final Standar Profesi dan Kode Etik Auditor',0.030,0,28,1009,NULL,0,NULL,0,NULL,0,0);
/*!40000 ALTER TABLE `akr_butir_kegiatan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `akr_butir_kegiatan_satuan`
--

DROP TABLE IF EXISTS `akr_butir_kegiatan_satuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `akr_butir_kegiatan_satuan` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `akr_butir_kegiatan_satuan`
--

LOCK TABLES `akr_butir_kegiatan_satuan` WRITE;
/*!40000 ALTER TABLE `akr_butir_kegiatan_satuan` DISABLE KEYS */;
INSERT INTO `akr_butir_kegiatan_satuan` VALUES (1,'Ijazah',NULL,0,NULL,0,NULL,0,0),(2,'Sertifikat',NULL,0,NULL,0,NULL,0,0),(3,'Laporan Hasil Audit Kinerja',NULL,0,NULL,0,NULL,0,0),(4,'Laporan Hasil Audit atas Aspek Keuangan Tertentu',NULL,0,NULL,0,NULL,0,0),(5,'Laporan Hasil Audit untuk Tujuan Tertentu',NULL,0,NULL,0,NULL,0,0),(6,'Laporan Hasil Audit \nKhusus / Investigasi / TPK',NULL,0,NULL,0,NULL,0,0),(7,'Laporan Hasil Evaluasi',NULL,0,NULL,0,NULL,0,0),(8,'Laporan Hasil Reviu',NULL,0,NULL,0,NULL,0,0),(9,'Laporan Hasil Pemantauan',NULL,0,NULL,0,NULL,0,0),(10,'Laporan Hasil Kegiatan',NULL,0,NULL,0,NULL,0,0),(11,'Buku',NULL,0,NULL,0,NULL,0,0),(12,'Naskah',NULL,0,NULL,0,NULL,0,0),(13,'Makalah',NULL,0,NULL,0,NULL,0,0),(14,'Laporan',NULL,0,NULL,0,NULL,0,0),(15,'Bahan / Naskah',NULL,0,NULL,0,NULL,0,0),(16,'Bahan',NULL,0,NULL,0,NULL,0,0),(17,'Notulen',NULL,0,NULL,0,NULL,0,0),(18,'Daftar Hadir Rapat',NULL,0,NULL,0,NULL,0,0),(19,'Daftar Hadir Sidang Redaksi',NULL,0,NULL,0,NULL,0,0),(20,'PAK',NULL,0,NULL,0,NULL,0,0),(21,'Penghargaan',NULL,0,NULL,0,NULL,0,0),(22,'Laporan Mengajar',NULL,0,NULL,0,NULL,0,0),(23,'Daftar Hadir Keanggotaan',NULL,0,NULL,0,NULL,0,0),(24,'SK Kepanitiaan',NULL,0,NULL,0,NULL,0,0),(25,'Tanda Terima Surat Tugas, Daftar Hadir',NULL,0,NULL,0,NULL,0,0),(26,'Laporan Hasil Audit / Kegiatan',NULL,0,NULL,0,NULL,0,0),(27,'Rancangan - Draft',NULL,0,NULL,0,NULL,0,0),(28,'Final Standar dan Kode Etik',NULL,0,NULL,0,NULL,0,0);
/*!40000 ALTER TABLE `akr_butir_kegiatan_satuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `akr_sub_unsur`
--

DROP TABLE IF EXISTS `akr_sub_unsur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `akr_sub_unsur` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_unsur` int(11) NOT NULL,
  `id_tipe_auditor` int(11) NOT NULL DEFAULT '1',
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `akr_sub_unsur`
--

LOCK TABLES `akr_sub_unsur` WRITE;
/*!40000 ALTER TABLE `akr_sub_unsur` DISABLE KEYS */;
INSERT INTO `akr_sub_unsur` VALUES (1,1,1,'Pendidikan sekolah dan memperoleh ijazah/gelar',NULL,0,NULL,0,NULL,0,0),(2,1,1,'Pendidikan dan pelatihan fungsional dibidang pengawasan serta memperoleh surat tanda tamat pendidikan dan pelatihan (STTPP) atau sertifikat','2020-11-30 06:01:49',0,NULL,0,NULL,0,0),(3,1,1,'Pendidikan dan pelatihan\n prajabatan',NULL,0,NULL,0,NULL,0,0),(4,2,1,'Pelaksanaan kegiatan teknis pengawasan per jam',NULL,0,NULL,0,NULL,0,0),(5,3,1,'Pembuatan karya tulis/karya ilmiah dibidang pengawasan',NULL,0,NULL,0,NULL,0,0),(6,3,1,'Penerjemahan / penyaduran buku dan bahan-bahan dibidang pengawasan',NULL,0,NULL,0,NULL,0,0),(7,3,1,'Peran serta dalam pengembangan profesi dibidang keilimuan pengawasan',NULL,0,NULL,0,NULL,0,0),(8,3,1,'Peran serta dalam kegiatan pengembangan profesi dibidang Standar, Kode Etik, Buletin dan Organisasi Profesi Pengawasan',NULL,0,NULL,0,NULL,0,0),(9,4,1,'Peran serta dalam seminar / lokakarya dibidang pengawasan',NULL,0,NULL,0,NULL,0,0),(10,4,1,'Keanggotaan Tim Penilai',NULL,0,NULL,0,NULL,0,0),(11,4,1,'Perolehan penghargaan / tanda jasa',NULL,0,NULL,0,NULL,0,0),(12,4,1,'Pengajar / pelatih pada diklat teknis\n substantif / fungsional',NULL,0,NULL,0,NULL,0,0),(13,4,1,'Keikutsertaan Diklat Teknis\n Substantif penunjang pengawasan',NULL,0,NULL,0,NULL,0,0),(14,4,1,'Menjadi anggota dalam kepanitiaan',NULL,0,NULL,0,NULL,0,0),(15,4,1,'Keanggotaan organisasi profesi dibidang pengawasan',NULL,0,NULL,0,NULL,0,0),(16,4,1,'Perolehan gelar kesarjanaan \nlainnya',NULL,0,NULL,0,NULL,0,0),(17,1,2,'Pendidikan Sekolah yang sesuai dengan\nbidang tugas Auditor dan mencapai Gelar/Ijazah',NULL,0,NULL,0,NULL,0,0),(18,1,2,'Pendidikan dan pelatihan fungsional di bidang pengawasan  serta  memperoleh  surat  tanda tamat pendidikan dan pelatihan (STTPP) atau sertifikat',NULL,0,NULL,0,NULL,0,0),(19,1,2,'Pendidikan dan pelatihan prajabatan',NULL,0,NULL,0,NULL,0,0),(20,2,2,'Pelaksanaan kegiatan teknis pengawasan, per jam',NULL,0,NULL,0,NULL,0,0),(21,2,2,'Pelaksanaan kegiatan pengorganisasian dan pengendalian pengawasan, per jam',NULL,0,NULL,0,NULL,0,0),(22,2,2,'Pelaksanaan kegiatan perencanaan dan evaluasi pengawasan, per jam',NULL,0,NULL,0,NULL,0,0),(23,3,2,'Pembuatan karya tulis/karya ilmiah di bidang pengawasan',NULL,0,NULL,0,NULL,0,0),(24,3,2,'Penerjemahan / penyaduran buku dan bahan-bahan di bidang pengawasan',NULL,0,NULL,0,NULL,0,0),(25,3,2,'Peran serta dalam pengembangan profesi di bidang keilimuan pengawasan',NULL,0,NULL,0,NULL,0,0),(26,3,2,'\nPeran serta dalam kegiatan pengembangan\n profesi di bidang standar, kode etik buletin dan organisasi profesi pengawasan',NULL,0,NULL,0,NULL,0,0),(27,4,2,'Peran serta dalam seminar / lokakarya di bidang pengawasan',NULL,0,NULL,0,NULL,0,0),(28,4,2,'Menjadi anggota tim penilai',NULL,0,NULL,0,NULL,0,0),(29,4,2,'Memperoleh penghargaan / tanda jasa di bidang kepegawaian',NULL,0,NULL,0,NULL,0,0),(30,4,2,'Pengajar / pelatih pada diklat teknis / fungsional',NULL,0,NULL,0,NULL,0,0),(31,4,2,'Keikutsertaan diklat teknis substantif penunjang pengawasan',NULL,0,NULL,0,NULL,0,0),(32,4,2,'Keanggotaan dalam kepanitiaan',NULL,0,NULL,0,NULL,0,0),(33,4,2,'Keanggotaan organisasi profesi di bidang pengawasan',NULL,0,NULL,0,NULL,0,0),(34,4,2,'Perolehan gelar kesarjanaan lainnya',NULL,0,NULL,0,NULL,0,0);
/*!40000 ALTER TABLE `akr_sub_unsur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `akr_unsur`
--

DROP TABLE IF EXISTS `akr_unsur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `akr_unsur` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `akr_unsur`
--

LOCK TABLES `akr_unsur` WRITE;
/*!40000 ALTER TABLE `akr_unsur` DISABLE KEYS */;
INSERT INTO `akr_unsur` VALUES (1,'Pendidikan','pendidikan',NULL,0,NULL,0,NULL,0,0),(2,'Pengawasan','pengawasan',NULL,0,NULL,0,NULL,0,0),(3,'Pengembangan Profesi Pengawasan','pengembangan_profesi_pengawasan',NULL,0,NULL,0,NULL,0,0),(4,'Penunjang','penunjang',NULL,0,NULL,0,NULL,0,0);
/*!40000 ALTER TABLE `akr_unsur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dev_config`
--

DROP TABLE IF EXISTS `dev_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dev_config` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dev_config`
--

LOCK TABLES `dev_config` WRITE;
/*!40000 ALTER TABLE `dev_config` DISABLE KEYS */;
INSERT INTO `dev_config` VALUES (1,'config_rekening_code_excel','Kode Rekening Excel Config',0);
/*!40000 ALTER TABLE `dev_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dev_config_detail`
--

DROP TABLE IF EXISTS `dev_config_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dev_config_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_in_db` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_config` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dev_config_detail`
--

LOCK TABLES `dev_config_detail` WRITE;
/*!40000 ALTER TABLE `dev_config_detail` DISABLE KEYS */;
INSERT INTO `dev_config_detail` VALUES (1,'Kode Rekening','kode_rekening',1,0),(2,'Uraian','uraian',1,0);
/*!40000 ALTER TABLE `dev_config_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=255 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (96,'2014_10_12_000000_create_users_table',1),(97,'2014_10_12_100000_create_password_resets_table',1),(98,'2019_06_13_133429_add_table_skpd',1),(99,'2019_08_19_000000_create_failed_jobs_table',1),(100,'2019_08_20_125054_add_table_eselon',1),(101,'2019_08_20_130131_add_table_pangkat',1),(102,'2019_08_20_130326_add_table_pangkat_golongan',1),(103,'2019_08_20_130651_add_table_jabatan',1),(104,'2019_08_20_145055_add_table_pegawai',1),(105,'2019_12_26_075559_add_table_acl',1),(106,'2020_01_06_040851_add_table_dev_config',1),(107,'2020_01_06_041029_add_table_dev_config_detail',1),(108,'2020_01_06_143319_add_table_temp_kode_rekening',1),(109,'2020_01_06_143338_add_table_temp_kode_rekening_detail',1),(110,'2020_01_07_071257_create_table_mst_kode_rekening',1),(111,'2020_01_18_064249_create_table_rka',1),(112,'2020_01_18_070600_create_table_rka_indikator_belanja',1),(113,'2020_01_18_070635_create_table_rka_rincian_anggaran',1),(114,'2020_01_18_084136_create_table_mst_urusan_pemerintahan',1),(115,'2020_01_18_084240_create_table_mst_organisasi',1),(116,'2020_01_18_084325_create_table_renstra_program',1),(117,'2020_01_18_084422_create_table_renstra_kegiatan',1),(118,'2020_01_18_163749_create_table_rka_indikator_kinerja_detail',1),(119,'2020_01_19_142729_add_column_program_kegiatan_table_rka',1),(120,'2020_01_19_161020_create_table_rincian_anggaran_detail',1),(121,'2020_01_19_163325_create_table_mst_satuan',1),(122,'2020_01_19_172238_create_column_id_rka_indikator_kinerja',1),(123,'2020_01_19_172315_create_column_id_rka_rincian_anggaran',1),(124,'2020_01_19_180218_add_uraian_rincian_anggaran_detail',1),(125,'2020_02_02_142015_add_table_users_pegawai',1),(126,'2020_02_05_153953_add_column_singkatan',1),(127,'2020_02_05_162138_add_table_wilayah',1),(128,'2020_02_05_162152_add_table_wilayah_skpd',1),(129,'2020_02_06_163352_add_table_inspektur_pembantu',1),(130,'2020_02_06_173207_add_table_sasaran',1),(131,'2020_02_06_175639_add_table_dasar_surat',1),(132,'2020_02_08_131117_add_table_surat_perintah',1),(133,'2020_02_08_132554_add_table_surat_perintah_anggota',1),(134,'2020_02_08_161534_add_column_id_sasaran_surat_perintah',1),(135,'2020_02_08_185254_add_level_to_eselon',1),(136,'2019_06_11_143402_add_table_periode',2),(137,'2019_06_11_164347_add_created_updated_deleted_at_table_periode',2),(138,'2020_03_01_164841_add_id_periode_table_surat_perintah',2),(139,'2020_03_02_155254_add_score_credit',3),(140,'2020_03_03_152215_add_table_wilayah_anggota',3),(141,'2020_03_04_150329_change_id_inspektur_to_irban',3),(142,'2020_03_04_153408_add_table_mst_inspektur',3),(143,'2020_03_04_161218_add_column_is_pkpt',3),(144,'2020_03_25_145941_add_table_peran',4),(145,'2020_03_25_150153_add_table_peran_jabatan',4),(146,'2020_03_25_155446_add_column_is_anggota_table_peran',4),(147,'2020_03_25_172649_add_column_id_peran_table_pegawai',4),(148,'2020_03_25_174849_add_column_kode_table_peran',4),(149,'2020_03_25_181453_add_column_id_wilayah_table_pegawai',4),(150,'2020_04_06_093414_add_column_id_wilayah_mst_skpd',5),(151,'2020_04_07_052828_rename_column_singkatan_pimpinan_mst_skpd',5),(152,'2020_04_07_065918_modify_column_id_level_pgw_pegawai',5),(153,'2020_04_08_073014_add_column_atasan_langsung_pgw_pegawai',5),(154,'2020_04_09_062623_modify_column_id_parent_mst_sasaran',6),(155,'2020_04_09_063511_mst_kegiatan',6),(156,'2020_04_09_082812_add_column_nama_mst_kegiatan',6),(157,'2020_04_09_082955_drop_column_id_sasaran_mst_kegiatan',6),(158,'2020_04_09_135835_drop_columns_mst_sasaran',6),(159,'2020_04_22_104552_add_column_id_wilayah_mst_kegiatan',7),(160,'2020_04_24_072201_drop_column_id_periode_pkpt_surat_perintah',7),(161,'2020_04_24_072432_rename_column_id_sasaran_to_id_kegiatan_pkpt_surat_perintah',7),(162,'2020_04_24_151913_add_table_pkpt_surat_perintah_sasaran',7),(163,'2020_05_01_203308_add_column_type_pkpt_kegiatan',8),(164,'2020_06_11_140122_add_table_program_rka_kegiatan',9),(165,'2020_06_11_141401_add_table_rka_program',9),(166,'2020_06_11_143455_add_column_n_min_year',9),(167,'2020_06_14_231529_rename_table_mst_kegiatan',10),(168,'2020_06_14_233206_create_new_mst_kegiatan',10),(169,'2020_06_15_173245_rename_column_kegiatan_to_progker_sp',10),(170,'2020_07_16_154716_add_id_program_kerja_kegiatan',10),(171,'2020_07_16_171236_add_id_kegiatan_sp',10),(172,'2020_07_18_112711_add_column_tembusan_pkpt',10),(173,'2020_07_22_005223_reconstruct_kegiatan_program_kerja',11),(174,'2020_07_25_173048_add_sub_kegiatan_program_kerja',11),(175,'2020_07_26_122321_add_component_program_kerja',11),(176,'2020_09_24_061012_drop_column_id_skpd_id_program_kerja',12),(177,'2020_09_24_194953_add_timestamp_table_pegawai',12),(178,'2020_09_25_205808_add_timestamp_jabatan',12),(179,'2020_10_16_112308_adjustment_master_sasaran',13),(180,'2020_10_23_055110_add_table_mst_sasaran_tujuan',14),(181,'2020_10_23_055248_add_table_sp_penentuan_sasaran_tujuan',14),(182,'2020_10_25_215615_modify_column_isi_sp_penentuan_sasaran_tujuan',14),(183,'2020_10_31_051603_add_table_sp_program_kerja_audit',15),(184,'2020_10_31_054717_add_table_mst_program_kerja_audit',15),(185,'2020_10_31_132250_add_table_sp_langkah_kerja_pemeriksaan',15),(186,'2020_10_31_161946_add_table_sp_langkah_kerja_pemeriksaan_sub_judul',15),(187,'2020_10_31_163754_add_table_sp_langkah_kerja_pemeriksaan_uraian',15),(188,'2020_10_31_171011_add_table_sp_langkah_kerja_pemeriksaan_uraian_detail',15),(189,'2020_11_01_174735_add_id_sp_lkp_table',15),(190,'2020_11_09_105214_add_column_id_parent_acl_menu',16),(191,'2020_11_09_152002_add_column_have_child_level_acl_menu',16),(192,'2020_11_10_070858_add_column_additional_acl_permission',17),(193,'2020_11_10_191931_sync_prosedur_table',17),(194,'2020_11_10_194119_remove_column_prosedur_pemeriksaan',17),(195,'2020_11_15_091421_add_table_lkp_pelaksana',17),(196,'2020_11_15_093241_rename_table_lkp_pelaksana',17),(197,'2020_11_19_163605_add_tablle_kode_temuan',18),(198,'2020_11_19_183017_add_table_kode_rekomendasi',18),(199,'2020_11_22_160515_add_table_audit_berkas',19),(200,'2020_11_22_160807_add_table_audit_kertas_kerja',19),(201,'2020_11_22_160940_add_table_audit_kertas_kerja_ikhtisar',19),(202,'2020_11_22_161526_add_table_audit_kertas_kerja_ikhtisar_kode_temuan',19),(203,'2020_11_22_161559_add_table_audit_kertas_kerja_ikhtisar_kode_rekomendasi',19),(204,'2020_11_24_173927_change_uraian_singkat_nullable',19),(205,'2020_11_24_175325_change_id_surat_perintah_to_id_kki',19),(206,'2020_11_24_181502_change_id_surat_perintah_to_id_kki_temuan',19),(207,'2020_11_24_193202_add_tipe_kki_kode_temuan',19),(208,'2020_11_27_172330_add_column_status_sp',19),(209,'2020_11_27_172551_add_table_pkp_surat_perintah_status',19),(210,'2020_11_27_180102_add_table_adt_audit_kertas_kerja_ikhtisar_review',19),(211,'2020_11_27_185353_add_table_adt_audit_kertas_kerja_review',19),(212,'2020_11_27_191557_rename_column_id_surat_perintah_kki',19),(213,'2020_11_27_192644_rename_column_id_surat_perintah_berkas',19),(214,'2020_11_27_194034_add_column_tipe',19),(215,'2020_11_27_200712_add_table_status_kertas_kerja',19),(216,'2020_11_27_200914_add_column_status_kertas_kerja',19),(217,'2020_11_28_053606_set_nullable_to_created_by',20),(218,'2020_11_28_113350_add_column_is_compilation',21),(219,'2020_11_28_132623_adjustment_status_sp',21),(220,'2020_11_28_172457_add_is_approved_pka',21),(221,'2020_11_28_172848_add_table_review_pka',21),(222,'2020_11_28_185300_add_table_sp_lkp_review',21),(223,'2020_11_29_053133_set_nullable_sp_status',22),(224,'2020_11_29_071509_add_column_nomer_lhp_sp',23),(225,'2020_11_29_150920_add_table_kertas_kerja_ikhtisar_tindak_lanjut',24),(226,'2020_11_29_170108_add_table_kertas_kerja_ikhtisar_tindak_lanjut_review',24),(227,'2020_11_29_173323_add_column_approved_tindak_lanjut',24),(228,'2020_12_03_031819_allow_review_singkat_null',25),(229,'2020_11_29_222655_add_table_akr_unsur',26),(230,'2020_11_29_225840_add_table_akr_sub_unsur',26),(231,'2020_12_06_084544_add_table_akr_butir_kegiatan',26),(232,'2020_12_06_085737_add_table_akr_butir_kegiatan_satuan',26),(233,'2020_12_06_100449_add_tipe_auditor_table_sub_unsur',26),(234,'2020_12_06_110157_add_table_tipe_auditor',26),(235,'2020_12_06_110539_add_table_tipe_auditor_jabatan',26),(236,'2020_12_06_175331_change_column_angka_kredit',26),(237,'2020_12_06_175748_adjustment_angka_kredit',26),(238,'2021_01_07_113801_create_mst_jenis_pengawasan_table',27),(239,'2021_01_09_111345_adjustment_mst_program_kerja',27),(240,'2021_01_10_040309_add_table_mst_program_kerja_wilayah',27),(241,'2021_01_10_042147_add_table_mst_program_kerja_skpd',27),(242,'2021_01_10_054234_adjustment_mst_program_kerja_id_wilayah',27),(243,'2021_01_10_054431_adjustment_mst_program_kerja_lintas_irban',27),(244,'2021_01_10_083530_add_table_mst_program_kerja_jenis_pengawasan',27),(245,'2021_01_10_083840_adjustment_mst_program_kerja_jenis_pengawasan',27),(246,'2021_01_10_143000_create_table_pkpt_surat_perintah_wilayah',28),(247,'2021_01_10_144354_adjustment_table_pkpt_surat_perintah',28),(248,'2021_01_10_175005_add_table_pkpt_surat_perintah_tim',28),(249,'2021_01_10_175542_adjustment_pkpt_surat_perintah_anggota',28),(250,'2021_01_10_210258_add_table_pkpt_surat_perintah_skpd',28),(251,'2021_01_11_154254_ordering_menu',29),(252,'2021_01_13_155638_add_table_type_pkpt',30),(253,'2021_01_16_223827_add_is_all_opd_mst_program_kerja',31),(254,'2021_01_22_112643_create_is_lampiran',32);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_dasar_surat`
--

DROP TABLE IF EXISTS `mst_dasar_surat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_dasar_surat` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `dasar_surat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_dasar_surat`
--

LOCK TABLES `mst_dasar_surat` WRITE;
/*!40000 ALTER TABLE `mst_dasar_surat` DISABLE KEYS */;
INSERT INTO `mst_dasar_surat` VALUES (1,'SK Walikota');
/*!40000 ALTER TABLE `mst_dasar_surat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_inspektur`
--

DROP TABLE IF EXISTS `mst_inspektur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_inspektur` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_inspektur` int(11) NOT NULL,
  `is_current_inspektur` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_inspektur`
--

LOCK TABLES `mst_inspektur` WRITE;
/*!40000 ALTER TABLE `mst_inspektur` DISABLE KEYS */;
INSERT INTO `mst_inspektur` VALUES (1,1,1);
/*!40000 ALTER TABLE `mst_inspektur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_inspektur_pembantu`
--

DROP TABLE IF EXISTS `mst_inspektur_pembantu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_inspektur_pembantu` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_wilayah` int(11) NOT NULL,
  `id_inspektur_pembantu` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_inspektur_pembantu`
--

LOCK TABLES `mst_inspektur_pembantu` WRITE;
/*!40000 ALTER TABLE `mst_inspektur_pembantu` DISABLE KEYS */;
INSERT INTO `mst_inspektur_pembantu` VALUES (1,1,6,1),(2,1,6,1),(3,1,6,1),(4,2,2,1),(5,1,11,1),(6,1,9,1),(7,1,14,1),(8,1,37,1),(9,1,33,1),(10,1,20,1),(11,1,16,1),(12,1,25,1),(13,1,41,1),(14,1,11,1),(15,1,9,1),(16,1,14,1),(17,1,37,1),(18,1,33,1),(19,1,20,1),(20,1,16,1),(21,1,25,1),(22,1,41,1),(23,1,47,1),(24,1,27,1),(25,1,51,1),(26,2,8,1),(27,2,12,1),(28,2,21,1),(29,2,26,1),(30,2,29,1),(31,2,32,1),(32,2,22,1),(33,2,31,1),(34,2,46,1),(35,2,40,1),(36,2,24,1),(37,2,49,1),(38,3,10,1),(39,3,13,1),(40,3,30,1),(41,3,18,1),(42,3,28,1),(43,3,35,1),(44,3,34,1),(45,3,36,1),(46,3,39,1),(47,3,19,1),(48,3,48,1),(49,3,42,1),(50,1,4,0),(51,1,9,0),(52,1,14,0),(53,1,37,0),(54,1,33,0),(55,1,20,0),(56,1,16,0),(57,1,25,0),(58,1,41,0),(59,1,47,0),(60,1,27,0),(61,1,51,0),(62,2,3,0),(63,2,12,0),(64,2,21,0),(65,2,26,0),(66,2,29,0),(67,2,32,0),(68,2,22,0),(69,2,31,0),(70,2,46,0),(71,2,40,0),(72,2,24,0),(73,2,49,0),(74,3,5,0),(75,3,13,0),(76,3,30,0),(77,3,18,0),(78,3,28,0),(79,3,35,0),(80,3,34,0),(81,3,36,0),(82,3,39,0),(83,3,19,0),(84,3,48,0),(85,3,42,0),(86,4,11,1),(87,4,9,1),(88,4,14,1),(89,4,37,1),(90,4,33,1),(91,4,20,1),(92,4,16,1),(93,4,25,1),(94,4,41,1),(95,4,45,1),(96,4,47,1),(97,4,27,1),(98,4,51,1),(99,4,11,1),(100,4,9,1),(101,4,14,1),(102,4,37,1),(103,4,33,1),(104,4,20,1),(105,4,16,1),(106,4,25,1),(107,4,41,1),(108,4,45,1),(109,4,47,1),(110,4,27,1),(111,4,51,1),(112,5,8,0),(113,5,12,0),(114,5,21,0),(115,5,26,0),(116,5,29,0),(117,5,32,0),(118,5,22,0),(119,5,31,0),(120,5,46,0),(121,5,40,0),(122,5,24,0),(123,5,49,0),(124,6,10,0),(125,6,13,0),(126,6,30,0),(127,6,18,0),(128,6,28,0),(129,6,35,0),(130,6,34,0),(131,6,36,0),(132,6,39,0),(133,6,19,0),(134,6,48,0),(135,6,42,0),(136,4,11,0);
/*!40000 ALTER TABLE `mst_inspektur_pembantu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_jenis_pengawasan`
--

DROP TABLE IF EXISTS `mst_jenis_pengawasan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_jenis_pengawasan` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_jenis_pengawasan`
--

LOCK TABLES `mst_jenis_pengawasan` WRITE;
/*!40000 ALTER TABLE `mst_jenis_pengawasan` DISABLE KEYS */;
INSERT INTO `mst_jenis_pengawasan` VALUES (2,'Reviu',NULL,0,NULL,0,NULL,0,0),(3,'Monitoring',NULL,0,NULL,0,NULL,0,0),(4,'Evaluasi',NULL,0,NULL,0,NULL,0,0),(5,'Penilaian Mandiri',NULL,0,NULL,0,NULL,0,0),(6,'Pemeriksaan Kinerja',NULL,0,NULL,0,NULL,0,0),(8,'Pembinaan SPIP',NULL,0,NULL,0,NULL,0,0),(9,'Perencanaan dan Evaluasi Pengawasan',NULL,0,NULL,0,NULL,0,0),(11,'Asistensi',NULL,0,NULL,0,NULL,0,0),(12,'Konsultasi',NULL,0,NULL,0,NULL,0,0),(13,'Sosialisasi',NULL,0,NULL,0,NULL,0,0),(14,'Monitoring dan Evaluasi',NULL,0,NULL,0,NULL,0,0),(15,'Peningkatan Kapabilitas APIP',NULL,0,NULL,0,NULL,0,0),(16,'PDTT',NULL,0,NULL,0,NULL,0,0),(17,'Penyusunan Norma, , Standar, Prosedurdan Kriteria',NULL,0,NULL,0,NULL,0,0);
/*!40000 ALTER TABLE `mst_jenis_pengawasan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_kegiatan`
--

DROP TABLE IF EXISTS `mst_kegiatan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_kegiatan` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_kegiatan`
--

LOCK TABLES `mst_kegiatan` WRITE;
/*!40000 ALTER TABLE `mst_kegiatan` DISABLE KEYS */;
INSERT INTO `mst_kegiatan` VALUES (1,'Penyedian Jasa Penunjang Urusan Pemerintah Daerah','2020-11-09 20:38:51',1,'2021-01-05 12:03:36',55,NULL,0,0),(2,'Pemeliharaan Barang Milik Daerah Penunjang Urusan Pemerintah Daerah','2020-11-29 15:21:45',3,'2021-01-05 12:05:18',55,NULL,0,0),(3,'Penyelenggaraan Pengawasan Internal','2020-12-08 08:23:38',1,'2021-01-05 12:07:54',55,NULL,0,0),(4,'Kegiatan Contoh','2020-12-08 09:26:53',1,'2020-12-08 09:58:22',1,'2020-12-08 09:58:22',1,1),(5,'Penyelenggaraan Pengawasan Dengan  Tujuan  Tertentu','2020-12-08 10:16:57',1,'2021-01-05 12:08:51',55,NULL,0,0),(6,'Perumusan Kebijakan Teknis Di bidang Pengawasan','2021-01-04 08:14:50',1,'2021-01-05 12:09:46',55,NULL,0,0),(7,'Administrasi Keuangan Perangkat Daerah','2021-01-05 10:33:25',57,'2021-01-05 12:00:57',55,NULL,0,0),(8,'Administrasi Kepegawaian Perangkat Daerah','2021-01-05 10:34:42',57,'2021-01-05 12:01:39',55,NULL,0,0),(9,'Perencanaan , Penganggaran dan Evaluasi Kinerja Perangkat Daerah','2021-01-05 11:36:41',57,'2021-01-05 12:00:12',55,NULL,0,0),(10,'Administrasi Umum Perangkat Daerah','2021-01-05 11:36:49',57,'2021-01-05 12:02:04',55,NULL,0,0),(11,'Pendampingan dan Asistensi','2021-01-05 11:36:57',57,'2021-01-05 12:10:28',55,NULL,0,0),(12,'Pengadaan Barang Milik Daerah Penunjang Urusan Pemerintah Daerah','2021-01-05 11:37:09',57,'2021-01-05 12:02:56',55,NULL,0,0),(13,'Monitoring','2021-01-05 14:09:41',55,'2021-01-06 11:16:49',55,'2021-01-06 11:16:49',55,1);
/*!40000 ALTER TABLE `mst_kegiatan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_kode_rekening`
--

DROP TABLE IF EXISTS `mst_kode_rekening`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_kode_rekening` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kode_rekening` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uraian` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_kode_rekening`
--

LOCK TABLES `mst_kode_rekening` WRITE;
/*!40000 ALTER TABLE `mst_kode_rekening` DISABLE KEYS */;
INSERT INTO `mst_kode_rekening` VALUES (1,'52','BELANJA LANGSUNG',NULL,0,NULL,0,NULL,0,0,0,0),(2,'522','BELANJA BARANG DAN JASA',NULL,0,NULL,0,NULL,0,0,0,0),(3,'52206','Belanja Cetak dan Penggandaan',NULL,0,NULL,0,NULL,0,0,0,0),(4,'5220601','Belanja Cetak',NULL,0,NULL,0,NULL,0,0,0,0),(5,'5220602','Belanja Penggandaan/Fotocopy',NULL,0,NULL,0,NULL,0,0,0,0),(6,'52225','Belanja Tenaga Ahli/Narasumber/Instruktur/Moderator',NULL,0,NULL,0,NULL,0,0,0,0),(7,'5222502','Belanja Tenaga Narasumber',NULL,0,NULL,0,NULL,0,0,0,0);
/*!40000 ALTER TABLE `mst_kode_rekening` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_kode_rekomendasi`
--

DROP TABLE IF EXISTS `mst_kode_rekomendasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_kode_rekomendasi` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rekomendasi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int(11) NOT NULL DEFAULT '1',
  `id_parent` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_kode_rekomendasi`
--

LOCK TABLES `mst_kode_rekomendasi` WRITE;
/*!40000 ALTER TABLE `mst_kode_rekomendasi` DISABLE KEYS */;
INSERT INTO `mst_kode_rekomendasi` VALUES (102,'08','Penggunaan biaya promosi/pemasaran tidak efektif',3,94,NULL,0,NULL,0,NULL,0,0),(1,'00','Kode Rekomendasi',1,0,NULL,0,NULL,0,NULL,0,0),(2,'01','Penyetoran ke kas negara/daerah, kas BUMN/D, dan masyararakat',2,1,NULL,0,NULL,0,NULL,0,0),(3,'02','Pengembalian barang kepada negara, daerah, BUMN/D, dan masyarakat',2,1,NULL,0,NULL,0,NULL,0,0),(4,'03','Perbaikan fisik barang/jasa dalam proses pembangunan atau penggantian barang/jasa oleh rekanan',2,1,NULL,0,NULL,0,NULL,0,0),(5,'04','Penghapusan barang milik negara/daerah ',2,1,NULL,0,NULL,0,NULL,0,0),(6,'05','Pelaksanaan sanksi administrasi kepegawaian ',2,1,NULL,0,NULL,0,NULL,0,0),(7,'06','Perbaikan laporan dan penertiban administrasi/kelengkapan administrasi',2,1,NULL,0,NULL,0,NULL,0,0),(8,'07','Perbaikan sistem dan prosedur akuntansi dan pelaporan',2,1,NULL,0,NULL,0,NULL,0,0),(9,'08','Peningkatan kualitas dan kuantitas sumber daya manusia pendukung sistem pengendalian',2,1,NULL,0,NULL,0,NULL,0,0),(10,'09','Perubahan atau perbaikan prosedur, peraturan dan kebijakan ',2,1,NULL,0,NULL,0,NULL,0,0),(11,'10','Perubahan atau perbaikan struktur organisasi ',2,1,NULL,0,NULL,0,NULL,0,0),(12,'11','Koordinasi antar instansi termasuk juga penyerahan penanganan kasus kepada instansi yang berwenang ',2,1,NULL,0,NULL,0,NULL,0,0),(13,'12','Pelaksanaan penelitian oleh tim khusus atau audit lanjutan oleh unit pengawas intern ',2,1,NULL,0,NULL,0,NULL,0,0),(14,'13','Pelaksanaan sosialisasi ',2,1,NULL,0,NULL,0,NULL,0,0),(15,'14','Lain-lain',2,1,NULL,0,NULL,0,NULL,0,0);
/*!40000 ALTER TABLE `mst_kode_rekomendasi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_kode_temuan`
--

DROP TABLE IF EXISTS `mst_kode_temuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_kode_temuan` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `temuan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int(11) NOT NULL DEFAULT '1',
  `id_parent` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_kode_temuan`
--

LOCK TABLES `mst_kode_temuan` WRITE;
/*!40000 ALTER TABLE `mst_kode_temuan` DISABLE KEYS */;
INSERT INTO `mst_kode_temuan` VALUES (1,'1','Temuan Ketidakpatuhan Terhadap Peraturan',1,0,NULL,0,NULL,0,NULL,0,0),(2,'01','Kerugian negara/daerah atau kerugian negara/daerah yang terjadi pada perusahaan milik negara/daerah',2,1,NULL,0,NULL,0,NULL,0,0),(3,'01','Belanja dan/atau pengadaan barang/jasa fiktif',3,2,NULL,0,NULL,0,NULL,0,0),(4,'02','Rekanan pengadaan barang/jasa tidak menyelesaikan pekerjaan',3,2,NULL,0,NULL,0,NULL,0,0),(5,'03','Kekurangan volume pekerjaan dan/atau barang',3,2,NULL,0,NULL,0,NULL,0,0),(6,'04','Kelebihan pembayaran selain kekurangan volume pekerjaan dan/atau barang',3,2,NULL,0,NULL,0,NULL,0,0),(7,'05','Pemahalan harga (Mark up)',3,2,NULL,0,NULL,0,NULL,0,0),(8,'06','Penggunaan uang/barang untuk kepentingan pribadi',3,2,NULL,0,NULL,0,NULL,0,0),(9,'07','Pembayaran honorarium dan/atau biaya perjalanan dinas ganda dan/atau melebihi standar yang ditetapkan',3,2,NULL,0,NULL,0,NULL,0,0),(10,'08','Spesifikasi barang/jasa yang diterima tidak sesuai dengankontrak',3,2,NULL,0,NULL,0,NULL,0,0),(11,'09','Belanja tidak sesuai atau melebihi ketentuan',3,2,NULL,0,NULL,0,NULL,0,0),(12,'10','Pengembalian pinjaman/piutang atau dana bergulir macet',3,2,NULL,0,NULL,0,NULL,0,0),(13,'11','Kelebihan penetapan dan pembayaran restitusi pajak atau penetapan kompensasi kerugian',3,2,NULL,0,NULL,0,NULL,0,0),(14,'12','Penjualan/pertukaran/penghapusan aset negara/daerah tidak sesuai ketentuan dan merugikan negara/daerah',3,2,NULL,0,NULL,0,NULL,0,0),(15,'13','Pengenaan ganti kerugian negara belum/tidak dilaksanakan sesuai ketentuan',3,2,NULL,0,NULL,0,NULL,0,0),(16,'14','Entitas belum/tidak melaksanakan tuntutan perbendaharaan (TP) sesuai ketentuan',3,2,NULL,0,NULL,0,NULL,0,0),(17,'15','Penghapusan hak tagih tidak sesuai ketentuan',3,2,NULL,0,NULL,0,NULL,0,0),(18,'16','Pelanggaran ketentuan pemberian diskon penjualan',3,2,NULL,0,NULL,0,NULL,0,0),(19,'17','Penentuan HPP (harga pokok pembelian) terlalu rendah sehingga penentuan harga jual lebih rendah dari yang seharusnya',3,2,NULL,0,NULL,0,NULL,0,0),(20,'18','Jaminan pelaksanaan dalam pelaksanaan pekerjaan, pemanfaatan barang dan pemberian fasilitas tidak dapat dicairkan',3,2,NULL,0,NULL,0,NULL,0,0),(21,'19','Penyetoran penerimaan negara/daerah dengan bukti fiktif',3,2,NULL,0,NULL,0,NULL,0,0),(22,'02','Potensi kerugian negara/daerah atau kerugian negara/daerah yang terjadi pada perusahaan milik negara/daerah',2,1,NULL,0,NULL,0,NULL,0,0),(23,'01','Kelebihan pembayaran dalam pengadaan barang/jasa tetapi pembayaran pekerjaan belum dilakukan sebagian atau seluruhnya',3,22,NULL,0,NULL,0,NULL,0,0),(24,'02','Rekanan belum melaksanakan kewajiban pemeliharaan barang hasil pengadaan yang telah rusak selama masa pemeliharaan',3,22,NULL,0,NULL,0,NULL,0,0),(25,'03','Aset dikuasai pihak lain',3,22,NULL,0,NULL,0,NULL,0,0),(26,'04','Pembelian aset yang berstatus sengketa',3,22,NULL,0,NULL,0,NULL,0,0),(27,'05','Aset tidak diketahui keberadaannya',3,22,NULL,0,NULL,0,NULL,0,0),(28,'06','Pemberian jaminan pelaksanaan dalam pelaksanaan pekerjaan, pemanfaatan barang dan pemberian fasilitas tidak sesuai ketentuan',3,22,NULL,0,NULL,0,NULL,0,0),(29,'07','Pihak ketiga belum melaksanakan kewajiban untuk menyerahkan aset kepada negara/daerah',3,22,NULL,0,NULL,0,NULL,0,0),(30,'08','Piutang/pinjaman atau dana bergulir yang berpotensi tidak tertagih',3,22,NULL,0,NULL,0,NULL,0,0),(31,'09','Penghapusan piutang tidak sesuai ketentuan',3,22,NULL,0,NULL,0,NULL,0,0),(32,'10','Pencairan anggaran pada akhir tahun anggaran untuk pekerjaan yang belum selesai',3,22,NULL,0,NULL,0,NULL,0,0),(33,'03','Kekurangan penerimaan negara/daerah atau perusahaan milik negara/ daerah',2,1,NULL,0,NULL,0,NULL,0,0),(34,'01','Penerimaan negara/daerah atau denda keterlambatan pekerjaan belum/tidak ditetapkan dipungut/diterima/disetor ke kas negara/ daerah atau perusahaan milik negara/daerah',3,33,NULL,0,NULL,0,NULL,0,0),(35,'02','Penggunaan langsung penerimaan negara/daerah\n            ',3,33,NULL,0,NULL,0,NULL,0,0),(36,'03','Dana Perimbangan yang telah ditetapkan belum masuk ke kas daerah',3,33,NULL,0,NULL,0,NULL,0,0),(37,'04','Penerimaan negara/daerah diterima atau digunakan oleh instansi yang tidak berhak',3,33,NULL,0,NULL,0,NULL,0,0),(38,'05','Pengenaan tarif pajak/PNBP lebih rendah dari ketentuan',3,33,NULL,0,NULL,0,NULL,0,0),(39,'06','Koreksi perhitungan bagi hasil dengan KKKS',3,33,NULL,0,NULL,0,NULL,0,0),(40,'07','Kelebihan pembayaran subsidi oleh pemerintah\n            ',3,33,NULL,0,NULL,0,NULL,0,0),(41,'04','Administrasi',2,1,NULL,0,NULL,0,NULL,0,0),(42,'01','Pertanggungjawaban tidak akuntabel (bukti tidak lengkap/tidak valid)',3,41,NULL,0,NULL,0,NULL,0,0),(43,'02','Pekerjaan dilaksanakan mendahului kontrak atau penetapan anggaran',3,41,NULL,0,NULL,0,NULL,0,0),(44,'03','Proses pengadaan barang/jasa tidak sesuai ketentuan (tidak menimbulkan kerugian negara',3,41,NULL,0,NULL,0,NULL,0,0),(45,'04','Pemecahan kontrak untuk menghindari pelelangan',3,41,NULL,0,NULL,0,NULL,0,0),(46,'05','Pelaksanaan lelang secara performa',3,41,NULL,0,NULL,0,NULL,0,0),(47,'06','Penyimpangan terhadap peraturan perundang-undangan bidang pengelolaan perlengkapan atau barang milik negara/daerah/perusahaan',3,41,NULL,0,NULL,0,NULL,0,0),(48,'07','Penyimpangan terhadap peraturan perundang-undangan bidang tertentu lainnya seperti kehutanan, pertambangan, perpajakan, dll',3,41,NULL,0,NULL,0,NULL,0,0),(49,'08','Koreksi perhitungan subsidi/kewajiban pelayanan umum',3,41,NULL,0,NULL,0,NULL,0,0),(50,'09','Pembentukan cadangan piutang, perhitungan penyusutan atau amortisasi tidak sesuai ketentuan',3,41,NULL,0,NULL,0,NULL,0,0),(51,'10','Penyetoran penerimaan negara/daerah atau kas di bendaharawan ke kas negara/daerah melebihi batas waktu yang ditentukan',3,41,NULL,0,NULL,0,NULL,0,0),(52,'11','Pertanggung jawaban / penyetoran uang persediaan melebihi batas waktu yang ditentukan',3,41,NULL,0,NULL,0,NULL,0,0),(53,'12','Sisa kas di bendahara pengeluaran akhir tahun anggaran belum/tidak disetor ke kas negara/daerah',3,41,NULL,0,NULL,0,NULL,0,0),(54,'13','Pengeluaran investasi pemerintah tidak didukung bukti yang sah',3,41,NULL,0,NULL,0,NULL,0,0),(55,'14','Kepemilikan aset tidak/belum didukung bukti yang sah',3,41,NULL,0,NULL,0,NULL,0,0),(56,'15','Pengalihan anggaran antar MAK tidak sah\n            ',3,41,NULL,0,NULL,0,NULL,0,0),(57,'16','Pelampauan pagu anggaran',3,41,NULL,0,NULL,0,NULL,0,0),(58,'05','Indikasi tindak pidana',2,1,NULL,0,NULL,0,NULL,0,0),(59,'01','Indikasi tindak pidana korupsi',3,58,NULL,0,NULL,0,NULL,0,0),(60,'02','Indikasi tindak pidana perbankan',3,58,NULL,0,NULL,0,NULL,0,0),(61,'03','Indikasi tindak pidana perpajakan\n            ',3,58,NULL,0,NULL,0,NULL,0,0),(62,'04','Indikasi tindak pidana kepabeanan',3,58,NULL,0,NULL,0,NULL,0,0),(63,'05','Indikasi tindak pidana pasar modal',3,58,NULL,0,NULL,0,NULL,0,0),(64,'06','Indikasi tindak pidana khusus lainnya',3,58,NULL,0,NULL,0,NULL,0,0),(65,'2','Temuan kelemahan sistem pengendalian intern',1,0,NULL,0,NULL,0,NULL,0,0),(66,'01','Kelemahan sistem pengendalian akuntansi dan pelaporan',2,65,NULL,0,NULL,0,NULL,0,0),(67,'01','Pencatatan tidak/belum dilakukan atau tidak akurat',3,66,NULL,0,NULL,0,NULL,0,0),(68,'02','Proses penyusunan laporan tidak sesuai ketentuan',3,66,NULL,0,NULL,0,NULL,0,0),(69,'03','Entitas terlambat menyampaikan laporan',3,66,NULL,0,NULL,0,NULL,0,0),(70,'04','Sistem informasi akuntansi dan pelaporan tidak memadai',3,66,NULL,0,NULL,0,NULL,0,0),(71,'05','Sistem informasi akuntansi dan pelaporan belum didukung SDM yang memadai',3,66,NULL,0,NULL,0,NULL,0,0),(72,'02','Kelemahan sistem pengendalian pelaksanaan anggaran pendapatan dan belanja',2,65,NULL,0,NULL,0,NULL,0,0),(73,'01','Perencanaan kegiatan tidak memadai',3,72,NULL,0,NULL,0,NULL,0,0),(74,'02','Mekanisme pemungutan, penyetoran dan pelaporan serta penggunaan Penerimaan negara/daerah/perusahaan dan hibah tidak sesuai ketentuan',3,72,NULL,0,NULL,0,NULL,0,0),(75,'03','Penyimpangan terhadap peraturan perundang-undangan bidang teknis tertentu atau ketentuan intern organisasi yang diperiksa tentang pendapatan dan belanja',3,72,NULL,0,NULL,0,NULL,0,0),(76,'04','Pelaksanaan belanja di luar mekanisme APBN/APBD',3,72,NULL,0,NULL,0,NULL,0,0),(77,'05','Penetapan/pelaksanaan kebijakan tidak tepat atau belum dilakukan berakibat hilangnya potensi penerimaan/pendapatan',3,72,NULL,0,NULL,0,NULL,0,0),(78,'06','Penetapan/pelaksanaan kebijakan tidak tepat atau belum dilakukan berakibat peningkatan biaya /belanja',3,72,NULL,0,NULL,0,NULL,0,0),(79,'07','Kelemahan pengelolaan fisik aset',3,72,NULL,0,NULL,0,NULL,0,0),(80,'03','Kelemahan struktur pengendalian intern',2,65,NULL,0,NULL,0,NULL,0,0),(81,'01','Entitas tidak memiliki SOP yang formal untuk suatu prosedur atau keseluruhan prosedur',3,80,NULL,0,NULL,0,NULL,0,0),(82,'02','SOP yang ada pada entitas tidak berjalan secara optimal atau tidak ditaati',3,80,NULL,0,NULL,0,NULL,0,0),(83,'03','Entitas tidak memiliki satuan pengawas intern',3,80,NULL,0,NULL,0,NULL,0,0),(84,'04','Satuan pengawas intern yang ada tidak memadai atau tidak berjalan optimal',3,80,NULL,0,NULL,0,NULL,0,0),(85,'05','Tidak ada pemisahan tugas dan fungsi yang memadai',3,80,NULL,0,NULL,0,NULL,0,0),(86,'3','Temuan 3E',1,0,NULL,0,NULL,0,NULL,0,0),(87,'01','Ketidakhematan/pemborosan/ketidakekonomisan',2,86,NULL,0,NULL,0,NULL,0,0),(88,'01','Pengadaan barang/jasa melebihi kebutuhan',3,87,NULL,0,NULL,0,NULL,0,0),(89,'02','Penetapan kualitas dan kuantitas barang/jasa yang digunakan tidak sesuai standar',3,87,NULL,0,NULL,0,NULL,0,0),(90,'03','Pemborosan keuangan negara/daerah/perusahaan atau kemahalan harga',3,87,NULL,0,NULL,0,NULL,0,0),(91,'02','Ketidakefisienan',2,86,NULL,0,NULL,0,NULL,0,0),(92,'01','Penggunaan kuantitas input untuk satu satuan output lebih besar/tinggi dari yang seharusnya',3,91,NULL,0,NULL,0,NULL,0,0),(93,'02','Penggunaan kualitas input untuk satu satuan output lebih tinggi dari seharusnya',3,91,NULL,0,NULL,0,NULL,0,0),(94,'03','Ketidakefektifan',2,86,NULL,0,NULL,0,NULL,0,0),(95,'01','Penggunaan anggaran tidak tepat sasaran/tidak sesuai peruntukan',3,94,NULL,0,NULL,0,NULL,0,0),(96,'02','Pemanfaatan barang/jasa dilakukan tidak sesuai dengan rencana yang ditetapkan',3,94,NULL,0,NULL,0,NULL,0,0),(97,'03','Barang yang dibeli belum/tidak dapat dimanfaatkan',3,94,NULL,0,NULL,0,NULL,0,0),(98,'04','Pemanfaatan barang/jasa tidak berdampak terhadap pencapaian tujuan organisasi',3,94,NULL,0,NULL,0,NULL,0,0),(99,'05','Pelaksanaan kegiatan terlambat/terhambat sehingga mempengaruhi pencapaian tujuan organisasi',3,94,NULL,0,NULL,0,NULL,0,0),(100,'06','Pelayanan kepada masyarakat tidak optimal',3,94,NULL,0,NULL,0,NULL,0,0),(101,'07','Fungsi atau tugas instansi yang diperiksa tidak diselenggarakan dengan baik termasuk target penerimaan tidak tercapai',3,94,NULL,0,NULL,0,NULL,0,0);
/*!40000 ALTER TABLE `mst_kode_temuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_organisasi`
--

DROP TABLE IF EXISTS `mst_organisasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_organisasi` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_urusan_pemerintahan` int(11) NOT NULL,
  `kode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_organisasi`
--

LOCK TABLES `mst_organisasi` WRITE;
/*!40000 ALTER TABLE `mst_organisasi` DISABLE KEYS */;
INSERT INTO `mst_organisasi` VALUES (1,1,'40201','INSPEKTORAT DAERAH',NULL,0,NULL,0,NULL,0,0);
/*!40000 ALTER TABLE `mst_organisasi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_periode`
--

DROP TABLE IF EXISTS `mst_periode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_periode` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `start_year` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_year` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_periode`
--

LOCK TABLES `mst_periode` WRITE;
/*!40000 ALTER TABLE `mst_periode` DISABLE KEYS */;
INSERT INTO `mst_periode` VALUES (1,'2020','2021','2020 - 2021',0,'2020-03-02 04:29:40',NULL,1,0,NULL,0),(2,'2021','2022','2021 - 2022',0,'2020-03-02 04:49:10','2020-03-02 04:49:23',1,1,NULL,0);
/*!40000 ALTER TABLE `mst_periode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_program_kerja`
--

DROP TABLE IF EXISTS `mst_program_kerja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_program_kerja` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_kegiatan` int(11) NOT NULL DEFAULT '0',
  `sasaran` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_pkpt` int(11) NOT NULL DEFAULT '1',
  `jml_wakil_penanggung_jawab` int(11) NOT NULL DEFAULT '1',
  `jml_pengendali_teknis` int(11) NOT NULL DEFAULT '1',
  `jml_ketua_tim` int(11) NOT NULL DEFAULT '1',
  `jml_anggota` int(11) NOT NULL DEFAULT '1',
  `jml_man_power` int(11) NOT NULL DEFAULT '1',
  `dari` datetime NOT NULL,
  `sampai` datetime NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_lintas_irban` tinyint(1) NOT NULL DEFAULT '0',
  `is_all_opd` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_program_kerja`
--

LOCK TABLES `mst_program_kerja` WRITE;
/*!40000 ALTER TABLE `mst_program_kerja` DISABLE KEYS */;
INSERT INTO `mst_program_kerja` VALUES (1,1,'',1,1,1,1,5,8,'2021-01-04 00:00:00','2021-01-05 00:00:00','2021-01-04 17:44:26',1,'2021-01-05 08:13:04',57,'2021-01-05 08:13:04',57,1,0,0),(2,1,'',1,1,1,1,2,5,'2021-01-11 00:00:00','2021-01-15 00:00:00','2021-01-05 10:25:16',57,'2021-01-10 16:37:30',1,'2021-01-10 16:37:30',1,1,0,0),(3,3,'',1,1,1,1,2,5,'2021-05-24 00:00:00','2021-06-15 00:00:00','2021-01-05 10:46:03',57,'2021-01-10 16:37:34',1,'2021-01-10 16:37:34',1,1,0,0),(4,3,'',1,1,1,1,2,5,'2021-05-24 00:00:00','2021-06-15 00:00:00','2021-01-05 10:46:03',57,'2021-01-05 10:46:18',57,'2021-01-05 10:46:18',57,1,0,0),(5,3,'',1,1,1,1,2,5,'2021-05-24 00:00:00','2021-06-15 00:00:00','2021-01-05 10:46:03',57,'2021-01-05 10:46:13',57,'2021-01-05 10:46:13',57,1,0,0),(6,8,'',1,1,1,1,2,5,'2021-08-23 00:00:00','2021-08-27 00:00:00','2021-01-05 11:01:47',57,'2021-01-11 16:15:39',1,'2021-01-11 16:15:39',1,1,0,0),(7,1,'',1,2,2,2,4,10,'2021-04-01 00:00:00','2021-04-08 00:00:00','2021-01-05 11:04:27',57,'2021-01-11 16:15:43',1,'2021-01-11 16:15:43',1,1,0,0),(8,1,'',1,1,1,1,2,5,'2021-06-28 00:00:00','2021-07-02 00:00:00','2021-01-05 11:06:19',57,'2021-01-11 16:15:49',1,'2021-01-11 16:15:49',1,1,0,0),(9,3,'',1,1,1,1,2,5,'2021-09-06 00:00:00','2021-09-24 00:00:00','2021-01-05 11:15:13',57,'2021-01-11 16:15:53',1,'2021-01-11 16:15:53',1,1,0,0),(10,3,'',1,1,1,1,2,5,'2021-09-06 00:00:00','2021-09-24 00:00:00','2021-01-05 11:17:00',57,'2021-01-05 11:17:18',57,'2021-01-05 11:17:18',57,1,0,0),(11,3,'',1,1,1,1,2,5,'2021-09-06 00:00:00','2021-09-24 00:00:00','2021-01-05 11:17:00',57,'2021-01-11 16:15:56',1,'2021-01-11 16:15:56',1,1,0,0),(12,7,'',1,1,1,1,3,6,'2021-08-02 00:00:00','2021-08-20 00:00:00','2021-01-05 11:19:21',57,'2021-01-11 04:47:31',1,'2021-01-11 04:47:31',1,1,0,0),(13,7,'',1,1,1,1,2,5,'2021-08-02 00:00:00','2021-08-20 00:00:00','2021-01-05 11:20:37',57,'2021-01-11 04:47:40',1,'2021-01-11 04:47:40',1,1,0,0),(14,6,'',1,1,1,1,3,6,'2021-09-06 00:00:00','2021-09-10 00:00:00','2021-01-05 11:21:43',57,'2021-01-11 16:15:59',1,'2021-01-11 16:15:59',1,1,0,0),(15,1,'',1,1,1,1,4,7,'2021-01-21 00:00:00','2021-01-28 00:00:00','2021-01-05 16:16:12',55,'2021-01-11 16:16:02',1,'2021-01-11 16:16:02',1,1,0,0),(16,1,'',1,1,1,1,4,7,'2021-01-06 00:00:00','2021-01-07 00:00:00','2021-01-05 16:18:39',55,'2021-01-11 16:16:05',1,'2021-01-11 16:16:05',1,1,0,0),(17,11,'',2,1,1,1,2,5,'2021-01-06 00:00:00','2021-01-12 00:00:00','2021-01-06 14:20:51',1,'2021-01-11 16:16:09',1,'2021-01-11 16:16:09',1,1,0,0),(18,1,'ini sasaran',1,1,1,1,5,8,'2021-01-11 00:00:00','2021-01-15 00:00:00','2021-01-10 16:37:21',1,'2021-01-11 16:08:10',1,'2021-01-11 16:08:10',1,1,0,0),(19,7,'DAK Fisik',1,0,0,0,0,0,'2021-01-01 00:00:00','2021-09-30 00:00:00','2021-01-11 04:45:27',1,'2021-01-11 16:15:35',1,'2021-01-11 16:15:35',1,1,0,0),(20,5,'ini adalah sasarannya',1,1,1,1,3,6,'2021-01-12 00:00:00','2021-01-14 00:00:00','2021-01-11 06:27:43',1,'2021-01-11 15:58:07',1,'2021-01-11 15:58:07',1,1,0,0),(21,3,'RKBMD Perangkat Daerah TA 2021 (Kebutuhan Barang Sesuai Dengan Kebutuhan Perangkat Daerah)',1,1,2,2,5,10,'2021-01-05 00:00:00','2021-01-08 00:00:00','2021-01-11 09:01:05',1,'2021-01-11 15:57:45',1,'2021-01-11 15:57:45',1,1,0,0),(22,3,'Semua Renstra Perangkat Daerah',1,1,2,2,5,10,'2021-01-05 00:00:00','2021-01-08 00:00:00','2021-01-11 09:00:26',1,'2021-01-11 15:57:36',1,'2021-01-11 15:57:36',1,1,0,0),(23,1,'ini aaRn kwuNGn',1,1,1,1,3,6,'2021-01-11 00:00:00','2021-01-13 00:00:00','2021-01-11 09:24:52',1,'2021-01-11 15:57:27',1,'2021-01-11 15:57:27',1,1,0,0),(24,3,'RKBMD Perangkat Daerah TA 2021',1,3,6,6,15,30,'2021-01-05 00:00:00','2021-01-08 00:00:00','2021-01-23 12:34:00',1,'2021-01-23 12:34:00',1,NULL,0,0,0,1),(25,3,'Semua Renstra Perangkat Daerah',1,3,6,6,15,30,'2021-01-15 00:00:00','2021-02-26 00:00:00','2021-01-23 12:36:22',1,'2021-01-23 12:36:22',1,NULL,0,0,0,1),(26,3,'Semua PPTK dan Bendahara Pengeluaran Perangkat Daerah Triwulan I',1,3,6,6,15,30,'2021-04-19 00:00:00','2021-04-23 00:00:00','2021-01-11 16:43:16',1,'2021-01-11 16:43:16',1,NULL,0,0,0,0),(27,3,'Semua PPTK dan Bendahara Pengeluaran Perangkat Daerah Triwulan II',1,3,6,6,15,30,'2021-07-19 00:00:00','2021-07-23 00:00:00','2021-01-11 16:44:17',1,'2021-01-11 16:44:17',1,NULL,0,0,0,0),(28,3,'Semua PPTK dan Bendahara Pengeluaran Perangkat Daerah Triwulan III',1,3,6,6,15,30,'2021-10-18 00:00:00','2021-10-22 00:00:00','2021-01-18 09:18:16',1,'2021-01-18 09:18:16',1,NULL,0,0,0,0),(29,3,'Dokumen SAKIP Perangkat Daerah',1,3,6,6,15,30,'2021-06-17 00:00:00','2021-01-30 00:00:00','2021-01-11 16:47:57',1,'2021-01-11 16:47:57',1,NULL,0,0,0,0),(30,3,'Semua RKA Perangkat Daerah',1,3,6,6,15,30,'2021-08-09 00:00:00','2021-08-20 00:00:00','2021-01-11 16:49:13',1,'2021-01-11 16:49:13',1,NULL,0,0,0,0),(31,3,'Semua RKA Perubahan Perangkat Daerah',1,3,6,6,15,30,'2021-10-25 00:00:00','2021-11-05 00:00:00','2021-01-11 16:50:35',1,'2021-01-11 16:50:35',1,NULL,0,0,0,0),(32,3,'Risk Register Perangkat Daerah',1,3,6,6,15,30,'2021-11-08 00:00:00','2021-11-19 00:00:00','2021-01-11 16:51:54',1,'2021-01-11 16:51:54',1,NULL,0,0,0,0),(33,3,'Penyusunan LKPD Kota Bogor TA 2020',1,1,1,1,2,5,'2021-01-11 00:00:00','2021-01-15 00:00:00','2021-01-11 16:53:54',1,'2021-01-11 16:53:54',1,NULL,0,0,0,0),(34,3,'LKPD Kota Bogor TA 2020',1,1,1,1,2,5,'2021-01-18 00:00:00','2021-01-29 00:00:00','2021-01-11 16:54:51',1,'2021-01-11 16:54:51',1,NULL,0,0,0,0),(35,3,'Laporan Hibah Pariwisata TA 2020',1,1,1,1,12,15,'2021-02-01 00:00:00','2021-01-12 00:00:00','2021-01-11 17:01:25',1,'2021-01-11 17:01:25',1,NULL,0,0,1,0),(36,3,'Laporan Kinerja Kota Bogor TA 2020',1,1,1,1,5,8,'2021-03-01 00:00:00','2021-03-09 00:00:00','2021-01-11 17:03:04',1,'2021-01-11 17:03:04',1,NULL,0,0,1,0),(37,3,'Laporan Penyelenggaraan Pemerintah Daerah TA 2020',1,1,1,1,11,14,'2021-03-10 00:00:00','2021-03-24 00:00:00','2021-01-11 17:05:04',1,'2021-01-11 17:05:04',1,NULL,0,0,1,0),(38,11,'RB Kota Bogor 2021',1,1,1,1,7,10,'2021-03-08 00:00:00','2021-01-26 00:00:00','2021-01-11 17:07:14',1,'2021-01-11 17:07:14',1,NULL,0,0,1,0),(39,3,'SAKIP Perangkat Daerah Kota Bogor TA 2021',1,1,1,1,2,5,'2021-09-13 00:00:00','2021-09-17 00:00:00','2021-01-11 17:09:00',1,'2021-01-11 17:09:00',1,NULL,0,0,1,0),(40,1,'KUA PPAS Kota Bogor 2022',1,1,1,1,12,15,'2021-07-15 00:00:00','2021-07-23 00:00:00','2021-01-11 17:10:47',1,'2021-01-11 17:10:47',1,NULL,0,0,1,0),(41,3,'Pengelolaan Parkir',1,1,1,1,2,5,'2021-01-11 00:00:00','2021-01-15 00:00:00','2021-01-11 17:12:59',1,'2021-01-11 17:12:59',1,NULL,0,0,0,0),(42,3,'Pengelolaan Pelayanan Kearsipan',1,1,1,1,2,5,'2021-05-24 00:00:00','2021-06-15 00:00:00','2021-01-11 17:14:29',1,'2021-01-11 17:14:29',1,NULL,0,0,0,0),(43,3,'Restrukturisasi PDJT',1,1,1,1,2,5,'2021-02-01 00:00:00','2021-02-05 00:00:00','2021-01-11 17:16:58',1,'2021-01-11 17:16:58',1,NULL,0,0,0,0),(44,3,'Penyertaan Modal Pemda',1,1,1,1,2,5,'2021-07-01 00:00:00','2021-07-09 00:00:00','2021-01-11 17:19:37',1,'2021-01-11 17:19:37',1,NULL,0,0,0,0),(45,3,'Pengelolaan Keuangan BOS APBN',1,1,1,1,7,10,'2021-09-21 00:00:00','2021-10-08 00:00:00','2021-01-11 17:20:39',1,'2021-01-11 17:20:39',1,NULL,0,0,0,0),(46,3,'Perencanaan Penyelenggaraan Responsif Gender ( PPRG )',1,1,1,1,2,5,'2021-08-23 00:00:00','2021-08-27 00:00:00','2021-01-11 17:22:00',1,'2021-01-11 17:22:00',1,NULL,0,0,0,0),(47,3,'Kelurahan Destinasi Wisata ( Pelaksaanaan Kegiatan )',1,1,1,2,6,10,'2021-04-01 00:00:00','2021-04-08 00:00:00','2021-01-11 17:24:30',1,'2021-01-11 17:24:30',1,NULL,0,0,0,0),(48,3,'Kegiatan Yang Terkait Dengan Pembumian Nilai-Nilai Pancasila di Daerah',1,1,1,1,2,5,'2021-06-28 00:00:00','2021-07-02 00:00:00','2021-01-11 17:26:01',1,'2021-01-11 17:26:01',1,NULL,0,0,0,0),(49,3,'RPJMD Kota Bogor',1,1,1,1,7,10,'2021-01-18 00:00:00','2021-01-29 00:00:00','2021-01-11 17:28:08',1,'2021-01-11 17:28:08',1,NULL,0,0,0,0),(50,3,'RKPD Kota Bogor TA 2022',1,1,1,1,7,10,'2021-05-10 00:00:00','2021-05-21 00:00:00','2021-01-11 17:29:48',1,'2021-01-11 17:29:48',1,NULL,0,0,0,0),(51,11,'Pelaksanaan Zona Integritas pada Perangkat Daerah',1,1,1,1,7,10,'2021-04-05 00:00:00','2021-04-16 00:00:00','2021-01-11 17:31:27',1,'2021-01-11 17:31:27',1,NULL,0,0,1,0),(52,3,'RKPD Perubahan Kota Bogor TA 2021',1,1,1,1,7,10,'2021-06-28 00:00:00','2021-07-09 00:00:00','2021-01-11 17:33:37',1,'2021-01-11 17:33:37',1,NULL,0,0,0,0),(53,3,'RKPD Perubahan Kota Bogor TA 2021',1,1,1,1,7,10,'2021-06-28 00:00:00','2021-07-09 00:00:00','2021-01-11 17:33:37',1,'2021-01-11 17:33:37',1,NULL,0,0,0,0),(54,3,'PROGRAM PENGELOLAAN PERSAMPAHAN.\r\nKegiatan Pengelolaan Sampah,\r\nSub-Kegiatan Pengurangan Sampah Dengan Melakukan Pembatasan, Pendauran Ulang dan Pemanfaatan Kembali',1,1,1,1,2,5,'2021-09-06 00:00:00','2021-09-24 00:00:00','2021-01-11 17:36:42',1,'2021-01-11 17:36:42',1,NULL,0,0,0,0),(55,3,'Program Pengendalian Pencemaran dan / atau Kerusakan Lingkungan Hidup',1,1,1,1,2,5,'2021-09-06 00:00:00','2021-09-24 00:00:00','2021-01-11 17:37:54',1,'2021-01-11 17:37:54',1,NULL,0,0,0,0),(56,11,'Satgas SPIP Perangkat Daerah',1,1,1,1,9,12,'2021-06-21 00:00:00','2021-06-23 00:00:00','2021-01-11 17:39:14',1,'2021-01-11 17:39:14',1,NULL,0,0,1,0),(57,3,'Pelayanan IT',1,1,1,1,3,6,'2021-08-02 00:00:00','2021-08-20 00:00:00','2021-01-11 17:40:29',1,'2021-01-11 17:40:29',1,NULL,0,0,0,0),(58,3,'Pelayanan Pembinaan Koperasi',1,1,1,1,2,5,'2021-08-02 00:00:00','2021-08-20 00:00:00','2021-01-11 17:41:22',1,'2021-01-11 17:41:22',1,NULL,0,0,0,0),(59,3,'KUPA PPAS',1,1,1,1,3,6,'2021-09-06 00:00:00','2021-09-10 00:00:00','2021-01-11 17:42:14',1,'2021-01-11 17:42:14',1,NULL,0,0,0,0),(60,1,'tfutyfuyf',1,0,0,0,0,0,'2021-01-27 00:00:00','2021-01-29 00:00:00','2021-01-11 18:07:48',1,'2021-01-12 10:05:09',1,'2021-01-12 10:05:09',1,1,0,0),(61,9,'Rencana Kerja Inspektorat Daerah TA 2022',1,0,0,0,1,1,'2021-01-04 00:00:00','2021-01-06 00:00:00','2021-01-11 18:44:59',1,'2021-01-11 18:44:59',1,NULL,0,0,0,0),(62,9,'Evaluasi SAKIP',1,0,0,0,0,0,'2021-02-08 00:00:00','2021-02-10 00:00:00','2021-01-11 19:00:49',1,'2021-01-11 19:00:49',1,NULL,0,0,0,0),(63,9,'LKPJ',1,0,0,0,1,1,'2021-01-25 00:00:00','2021-01-27 00:00:00','2021-01-11 19:24:10',1,'2021-01-11 19:24:10',1,NULL,0,0,0,0),(64,9,'LPPD',1,0,0,0,1,1,'2021-01-27 00:00:00','2021-01-29 00:00:00','2021-01-11 19:25:11',1,'2021-01-11 19:25:11',1,NULL,0,0,0,0),(65,9,'EKPPD',1,0,0,0,1,1,'2021-02-01 00:00:00','2021-02-03 00:00:00','2021-01-11 19:27:08',1,'2021-01-11 19:27:08',1,NULL,0,0,0,0),(66,9,'Realisasi Anggaran dan Kinerja Bulan Januari',1,0,0,0,1,1,'2021-02-01 00:00:00','2021-02-02 00:00:00','2021-01-11 19:30:53',1,'2021-01-11 19:30:53',1,NULL,0,0,0,0),(67,9,'Realisasi Anggaran dan Kinerja Bulan Februari',1,0,0,0,1,1,'2021-03-01 00:00:00','2021-03-02 00:00:00','2021-01-11 19:30:29',1,'2021-01-11 19:30:29',1,NULL,0,0,0,0),(68,9,'Realisasi Anggaran dan Kinerja Bulan Maret',1,0,0,0,1,1,'2021-04-01 00:00:00','2021-04-02 00:00:00','2021-01-11 19:31:43',1,'2021-01-11 19:31:43',1,NULL,0,0,0,0),(69,9,'Realisasi Anggaran dan Kinerja Bulan April',1,0,0,0,1,1,'2021-05-03 00:00:00','2021-05-04 00:00:00','2021-01-11 19:32:31',1,'2021-01-11 19:32:31',1,NULL,0,0,0,0),(70,9,'Realisasi Anggaran dan Kinerja Bulan Mei',1,0,0,0,1,1,'2021-06-01 00:00:00','2021-06-02 00:00:00','2021-01-11 19:33:15',1,'2021-01-11 19:33:15',1,NULL,0,0,0,0),(71,9,'Realisasi Anggaran dan Kinerja Bulan Juni',1,0,0,0,1,1,'2021-07-01 00:00:00','2021-07-02 00:00:00','2021-01-11 19:33:59',1,'2021-01-11 19:33:59',1,NULL,0,0,0,0),(72,9,'Realisasi Anggaran dan Kinerja Bulan Juli',1,0,0,0,1,1,'2021-08-02 00:00:00','2021-08-03 00:00:00','2021-01-11 19:34:43',1,'2021-01-11 19:34:43',1,NULL,0,0,0,0),(73,9,'Realisasi Anggaran dan Kinerja Bulan Agustus',1,0,0,0,1,1,'2021-09-01 00:00:00','2021-09-09 00:00:00','2021-01-11 19:35:31',1,'2021-01-11 19:35:31',1,NULL,0,0,0,0),(74,9,'Realisasi Anggaran dan Kinerja Bulan September',1,0,0,0,1,1,'2021-10-01 00:00:00','2021-10-04 00:00:00','2021-01-11 19:36:26',1,'2021-01-11 19:36:26',1,NULL,0,0,0,0),(75,9,'Realisasi Anggaran dan Kinerja Bulan Oktober',1,0,0,0,1,1,'2021-11-01 00:00:00','2021-11-02 00:00:00','2021-01-11 19:37:20',1,'2021-01-11 19:37:20',1,NULL,0,0,0,0),(76,9,'Realisasi Anggaran dan Kinerja Bulan November',1,0,0,0,1,1,'2021-12-01 00:00:00','2021-12-02 00:00:00','2021-01-11 19:38:31',1,'2021-01-11 19:38:31',1,NULL,0,0,0,0),(77,9,'Realisasi Anggaran dan Kinerja Bulan Desember',1,0,0,0,1,1,'2021-12-29 00:00:00','2021-12-30 00:00:00','2021-01-11 19:39:28',1,'2021-01-11 19:39:28',1,NULL,0,0,0,0),(78,9,'Laporan Hasil Pengawasan Semester I',1,0,0,0,1,1,'2021-06-28 00:00:00','2021-06-30 00:00:00','2021-01-11 19:41:06',1,'2021-01-11 19:41:06',1,NULL,0,0,0,0),(79,9,'Laporan Hasil Pengawasan Semester I',1,0,0,0,1,1,'2021-06-28 00:00:00','2021-06-30 00:00:00','2021-01-11 19:41:06',1,'2021-01-11 19:41:06',1,NULL,0,0,0,0),(80,9,'Laporan Hasil Pengawasan Semester II',1,0,0,0,1,1,'2021-12-28 00:00:00','2021-12-30 00:00:00','2021-01-11 19:42:00',1,'2021-01-11 19:42:00',1,NULL,0,0,0,0),(81,9,'Laporan Triwulan I',1,0,0,0,1,1,'2021-04-01 00:00:00','2021-04-02 00:00:00','2021-01-11 19:45:32',1,'2021-01-11 19:45:32',1,NULL,0,0,0,0),(82,9,'Laporan Triwulan II',1,0,0,0,1,1,'2021-07-01 00:00:00','2021-07-02 00:00:00','2021-01-11 19:46:15',1,'2021-01-11 19:46:15',1,NULL,0,0,0,0),(83,9,'Laporan Triwulan III',1,0,0,0,1,1,'2021-10-04 00:00:00','2021-10-05 00:00:00','2021-01-11 19:47:00',1,'2021-01-11 19:47:00',1,NULL,0,0,0,0),(84,9,'Laporan Triwulan IV',1,0,0,0,1,1,'2021-12-28 00:00:00','2021-12-29 00:00:00','2021-01-11 19:47:45',1,'2021-01-11 19:47:45',1,NULL,0,0,0,0),(85,9,'Penyusunan Risk Register',1,0,0,0,1,1,'2021-11-01 00:00:00','2021-11-03 00:00:00','2021-01-11 19:49:09',1,'2021-01-11 19:49:09',1,NULL,0,0,0,0),(86,8,'Diklat Substantif',1,0,0,0,5,5,'2021-07-12 00:00:00','2021-07-15 00:00:00','2021-01-11 19:52:19',1,'2021-01-11 19:52:19',1,NULL,0,0,0,0),(87,8,'Diklat Substantif',1,0,0,0,5,5,'2021-09-06 00:00:00','2021-09-10 00:00:00','2021-01-11 19:53:20',1,'2021-01-11 19:53:20',1,NULL,0,0,0,0),(88,8,'Bimbingan Teknis SIPD',1,0,0,0,5,5,'2021-02-09 00:00:00','2021-02-11 00:00:00','2021-01-11 19:54:48',1,'2021-01-11 19:54:48',1,NULL,0,0,0,0),(89,8,'Bimbingan Teknis Evaluasi SAKIP',1,0,0,0,5,5,'2021-04-06 00:00:00','2021-04-08 00:00:00','2021-01-11 19:55:43',1,'2021-01-11 19:55:43',1,NULL,0,0,0,0),(90,8,'Bimbingan Teknis Kewajaran Harga',1,0,0,0,5,5,'2021-06-09 00:00:00','2021-06-11 00:00:00','2021-01-11 19:56:35',1,'2021-01-11 19:56:35',1,NULL,0,0,0,0),(91,3,'Benturan Kepentingan',1,1,1,2,4,8,'2021-01-25 00:00:00','2021-01-29 00:00:00','2021-01-11 20:06:21',1,'2021-01-11 20:06:21',1,NULL,0,0,1,0),(92,3,'Benturan Kepentingan',1,1,1,2,4,8,'2021-02-22 00:00:00','2021-02-26 00:00:00','2021-01-11 20:07:38',1,'2021-01-11 20:07:38',1,NULL,0,0,1,0),(93,3,'Benturan Kepentingan',1,1,1,2,4,8,'2021-03-22 00:00:00','2021-03-26 00:00:00','2021-01-11 20:08:32',1,'2021-01-11 20:08:32',1,NULL,0,0,1,0),(94,3,'Benturan Kepentingan',1,1,1,2,4,8,'2021-04-26 00:00:00','2021-04-30 00:00:00','2021-01-11 20:09:45',1,'2021-01-11 20:09:45',1,NULL,0,0,1,0),(95,3,'Benturan Kepentingan',1,1,1,2,4,8,'2021-05-24 00:00:00','2021-05-28 00:00:00','2021-01-11 20:11:20',1,'2021-01-11 20:11:20',1,NULL,0,0,1,0),(96,3,'Benturan Kepentingan',1,1,1,2,4,8,'2021-06-21 00:00:00','2021-06-25 00:00:00','2021-01-11 20:12:05',1,'2021-01-11 20:12:05',1,NULL,0,0,1,0),(97,3,'Benturan Kepentingan',1,1,1,2,4,8,'2021-07-26 00:00:00','2021-07-30 00:00:00','2021-01-11 20:13:34',1,'2021-01-11 20:13:34',1,NULL,0,0,1,0),(98,3,'Benturan Kepentingan',1,1,1,2,4,8,'2021-07-26 00:00:00','2021-07-30 00:00:00','2021-01-11 20:13:34',1,'2021-01-11 20:17:36',1,'2021-01-11 20:17:36',1,1,1,0),(99,3,'Benturan Kepentingan',1,1,1,2,4,8,'2021-08-23 00:00:00','2021-08-27 00:00:00','2021-01-11 20:14:23',1,'2021-01-11 20:14:23',1,NULL,0,0,1,0),(100,3,'Benturan Kepentingan',1,1,1,2,4,8,'2021-09-20 00:00:00','2021-09-24 00:00:00','2021-01-11 20:18:10',1,'2021-01-11 20:18:10',1,NULL,0,0,1,0),(101,3,'Benturan Kepentingan',1,1,1,2,4,8,'2021-10-25 00:00:00','2021-10-29 00:00:00','2021-01-11 20:15:58',1,'2021-01-11 20:15:58',1,NULL,0,0,1,0),(102,3,'Benturan Kepentingan',1,1,1,2,4,8,'2021-11-22 00:00:00','2021-11-26 00:00:00','2021-01-11 20:19:14',1,'2021-01-11 20:19:14',1,NULL,0,0,1,0),(103,3,'Benturan Kepentingan',1,1,1,2,4,8,'2021-12-20 00:00:00','2021-12-24 00:00:00','2021-01-11 20:21:38',1,'2021-01-11 20:21:38',1,NULL,0,0,1,0),(104,5,'Pengaduan Masyarakat',1,1,1,2,4,8,'2021-01-11 00:00:00','2021-01-22 00:00:00','2021-01-11 20:36:17',1,'2021-01-11 20:36:17',1,NULL,0,0,0,0),(105,5,'Pengaduan Masyarakat',1,1,1,2,4,8,'2021-02-08 00:00:00','2021-02-19 00:00:00','2021-01-11 20:36:59',1,'2021-01-11 20:36:59',1,NULL,0,0,0,0),(106,5,'Pengaduan Masyarakat',1,1,1,2,4,8,'2021-03-08 00:00:00','2021-03-19 00:00:00','2021-01-11 20:38:21',1,'2021-01-11 20:38:21',1,NULL,0,0,0,0),(107,5,'Pengaduan Masyarakat',1,1,1,2,4,8,'2021-04-05 00:00:00','2021-04-16 00:00:00','2021-01-11 20:45:28',1,'2021-01-11 20:45:28',1,NULL,0,0,0,0),(108,5,'Pengaduan Masyarakat',1,1,1,2,4,8,'2021-04-05 00:00:00','2021-04-16 00:00:00','2021-01-11 20:45:28',1,'2021-01-11 20:45:28',1,NULL,0,0,0,0),(109,5,'Pengaduan Masyarakat',1,1,1,2,4,8,'2021-05-03 00:00:00','2021-05-14 00:00:00','2021-01-11 20:46:21',1,'2021-01-11 20:46:21',1,NULL,0,0,0,0),(110,5,'Pengaduan Masyarakat',1,1,1,2,4,8,'2021-06-07 00:00:00','2021-06-18 00:00:00','2021-01-11 20:47:11',1,'2021-01-11 20:47:11',1,NULL,0,0,0,0),(111,5,'Pengaduan Masyarakat',1,1,1,2,4,8,'2021-07-05 00:00:00','2021-07-16 00:00:00','2021-01-11 20:51:22',1,'2021-01-11 20:51:22',1,NULL,0,0,0,0),(112,5,'Pengaduan Masyarakat',1,1,1,2,4,8,'2021-08-09 00:00:00','2021-08-20 00:00:00','2021-01-11 20:52:01',1,'2021-01-11 20:52:01',1,NULL,0,0,0,0),(113,5,'Pengaduan Masyarakat',1,1,1,2,4,8,'2021-09-06 00:00:00','2021-09-17 00:00:00','2021-01-11 20:52:37',1,'2021-01-11 20:52:37',1,NULL,0,0,0,0),(114,5,'Pengembangan Temuan-temuan Audit Reguler',1,1,1,2,4,8,'2021-10-04 00:00:00','2021-10-15 00:00:00','2021-01-11 20:54:09',1,'2021-01-11 20:54:09',1,NULL,0,0,0,0),(115,5,'Penanganan Kasus Tindak Pidana Korupsi Permintaan APH',1,1,1,2,4,8,'2021-11-08 00:00:00','2021-11-19 00:00:00','2021-01-11 20:55:24',1,'2021-01-11 20:55:24',1,NULL,0,0,0,0),(116,5,'Penyimpanan Keuangan Pada BUMD',1,1,1,2,4,8,'2021-12-06 00:00:00','2021-12-17 00:00:00','2021-01-11 20:56:16',1,'2021-01-11 20:56:16',1,NULL,0,0,0,0),(117,3,'TLHP BPK RI',1,1,1,2,4,8,'2021-04-05 00:00:00','2021-04-09 00:00:00','2021-01-11 21:08:51',1,'2021-01-11 21:08:51',1,NULL,0,0,0,0),(118,3,'TLH BPK RI',1,1,1,2,4,8,'2021-07-05 00:00:00','2021-07-09 00:00:00','2021-01-11 21:10:23',1,'2021-01-11 21:10:23',1,NULL,0,0,0,0),(119,3,'TLH BPK RI',1,1,1,2,4,8,'2021-08-09 00:00:00','2021-08-13 00:00:00','2021-01-11 21:11:28',1,'2021-01-11 21:11:28',1,NULL,0,0,0,0),(120,3,'TLHP BPK RI',1,1,1,2,4,8,'2021-09-06 00:00:00','2021-09-10 00:00:00','2021-01-12 08:50:49',1,'2021-01-12 08:50:49',1,NULL,0,0,0,0),(121,3,'TLHP BPK RI',1,1,1,2,4,8,'2021-09-06 00:00:00','2021-09-10 00:00:00','2021-01-12 08:50:49',1,'2021-01-12 08:50:49',1,NULL,0,0,0,0),(122,3,'TLHP BPK RI',1,1,1,2,4,8,'2021-11-08 00:00:00','2021-11-12 00:00:00','2021-01-12 08:51:45',1,'2021-01-12 08:51:45',1,NULL,0,0,0,0),(123,3,'TLHP BPK RI',1,1,1,2,4,8,'2021-12-06 00:00:00','2021-12-10 00:00:00','2021-01-12 08:52:13',1,'2021-01-12 08:52:13',1,NULL,0,0,0,0),(124,3,'TLHP BPK RI Inspektorat Jawa Barat',1,1,1,2,4,8,'2021-05-03 00:00:00','2021-05-07 00:00:00','2021-01-12 08:55:20',1,'2021-01-12 08:55:20',1,NULL,0,0,0,0),(125,3,'TLHP BPK RI Inspektorat Jawa Barat',1,1,1,2,4,8,'2021-06-07 00:00:00','2021-06-11 00:00:00','2021-01-12 08:55:01',1,'2021-01-12 08:55:01',1,NULL,0,0,0,0),(126,3,'TLHP BPK RI Inspektorat Jawa Barat',1,1,1,2,4,8,'2021-10-04 00:00:00','2021-10-08 00:00:00','2021-01-12 08:56:00',1,'2021-01-12 08:56:00',1,NULL,0,0,0,0),(127,3,'TLHP BPK RI Inspektorat Kota Bogor',1,1,1,2,4,8,'2021-01-04 00:00:00','2021-01-08 00:00:00','2021-01-12 09:05:40',1,'2021-01-12 09:05:40',1,NULL,0,0,1,0),(128,3,'TLHP BPK RI Inspektorat Kota Bogor',1,1,1,2,4,8,'2021-02-01 00:00:00','2021-02-05 00:00:00','2021-01-12 09:05:29',1,'2021-01-12 09:05:29',1,NULL,0,0,1,0),(129,3,'TLHP BPK RI Inspektorat Kota Bogor',1,1,1,2,4,8,'2021-03-01 00:00:00','2021-03-05 00:00:00','2021-01-12 09:05:12',1,'2021-01-12 09:05:12',1,NULL,0,0,1,0),(130,3,'Benturan Kepentingan dan UPG 24 PD (14-25 Juni)',1,1,1,2,4,8,'2021-06-14 00:00:00','2021-06-25 00:00:00','2021-01-12 09:46:16',1,'2021-01-12 09:46:16',1,NULL,0,0,1,0),(131,3,'Benturan Kepentingan dan UPG',1,1,1,2,4,8,'2021-06-14 00:00:00','2021-06-25 00:00:00','2021-01-12 09:08:00',1,'2021-01-12 09:08:20',1,'2021-01-12 09:08:20',1,1,0,0),(132,3,'Benturan Kepentingan dan UPG 24 PD (12-26 Juli)',1,1,1,2,4,8,'2021-07-12 00:00:00','2021-07-26 00:00:00','2021-01-12 09:46:01',1,'2021-01-12 09:46:01',1,NULL,0,0,1,0),(133,3,'Benturan Kepentingan dan UPG 24 PD (16-30 Agustus)',1,1,1,2,4,8,'2021-08-16 00:00:00','2021-08-30 00:00:00','2021-01-12 09:47:53',1,'2021-01-12 09:47:53',1,NULL,0,0,1,0),(134,3,'Benturan Kepentingan dan UPG 24 PD (6-17 September)',1,1,1,2,4,8,'2021-09-06 00:00:00','2021-09-17 00:00:00','2021-01-12 09:48:48',1,'2021-01-12 09:48:48',1,NULL,0,0,1,0),(135,3,'Benturan Kepentingan dan UPG 24 PD (18-29 Oktober)',1,1,1,2,4,8,'2021-10-18 00:00:00','2021-10-29 00:00:00','2021-01-12 09:49:32',1,'2021-01-12 09:49:32',1,NULL,0,0,1,0),(136,3,'Benturan Kepentingan dan UPG 24 PD (9-19 November)',1,1,1,2,4,8,'2021-11-08 00:00:00','2021-11-19 00:00:00','2021-01-12 09:50:25',1,'2021-01-12 09:50:25',1,NULL,0,0,1,0),(137,5,'Pengaduan Masyarakat',1,1,1,1,5,8,'2021-01-04 00:00:00','2021-01-15 00:00:00','2021-01-12 10:01:48',1,'2021-01-12 10:03:49',1,'2021-01-12 10:03:49',1,1,0,0),(138,11,'contoh sasaran',1,1,1,1,5,8,'2021-01-04 00:00:00','2021-01-08 00:00:00','2021-01-12 10:42:53',1,'2021-01-12 10:42:53',1,NULL,0,0,0,0),(139,9,'SERTIFIKASI ISO 37001',1,0,0,0,5,5,'2021-02-01 00:00:00','2021-04-30 00:00:00','2021-01-13 14:29:26',1,'2021-01-13 14:29:26',1,NULL,0,0,0,0),(140,3,'ini contoh sasaran ya bro',1,1,1,1,5,8,'2021-01-18 00:00:00','2021-01-22 00:00:00','2021-01-17 21:06:03',1,'2021-01-17 21:06:03',1,NULL,0,0,0,0),(141,3,'ini sasaran untuk banyak tim',1,1,2,2,4,9,'2021-01-18 00:00:00','2021-01-20 00:00:00','2021-01-17 21:23:29',1,'2021-01-17 21:23:29',1,NULL,0,0,1,1),(142,3,'ini sasaran untuk perorangan',1,0,0,0,1,1,'2021-01-18 00:00:00','2021-01-19 00:00:00','2021-01-17 21:30:09',1,'2021-01-17 21:30:09',1,NULL,0,0,0,0),(143,3,'Sasaran disikan Manual...',1,1,1,1,4,7,'2021-01-18 00:00:00','2021-01-29 00:00:00','2021-01-18 10:18:18',1,'2021-01-18 10:18:18',1,NULL,0,0,0,0),(144,3,'RPJMD',1,1,1,1,4,7,'2021-01-25 00:00:00','2021-01-28 00:00:00','2021-01-25 10:30:53',1,'2021-01-25 10:30:53',1,NULL,0,0,0,0),(145,3,'RPJMD',1,1,1,1,4,7,'2021-01-25 00:00:00','2021-01-28 00:00:00','2021-01-25 10:30:53',1,'2021-01-25 10:30:53',1,NULL,0,0,0,0);
/*!40000 ALTER TABLE `mst_program_kerja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_program_kerja_audit`
--

DROP TABLE IF EXISTS `mst_program_kerja_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_program_kerja_audit` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_program_kerja_audit`
--

LOCK TABLES `mst_program_kerja_audit` WRITE;
/*!40000 ALTER TABLE `mst_program_kerja_audit` DISABLE KEYS */;
INSERT INTO `mst_program_kerja_audit` VALUES (1,'Judul',NULL,0,NULL,0,NULL,0,0),(2,'Pendahuluan',NULL,0,NULL,0,NULL,0,0),(3,'Tujuan Pemeriksaan',NULL,0,NULL,0,NULL,0,0),(4,'Ruang Lingkup Pemeriksaan',NULL,0,NULL,0,NULL,0,0),(5,'Waktu Pelaksanaan',NULL,0,NULL,0,NULL,0,0);
/*!40000 ALTER TABLE `mst_program_kerja_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_program_kerja_jenis_pengawasan`
--

DROP TABLE IF EXISTS `mst_program_kerja_jenis_pengawasan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_program_kerja_jenis_pengawasan` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_program_kerja` int(11) NOT NULL,
  `id_jenis_pengawasan` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_program_kerja_jenis_pengawasan`
--

LOCK TABLES `mst_program_kerja_jenis_pengawasan` WRITE;
/*!40000 ALTER TABLE `mst_program_kerja_jenis_pengawasan` DISABLE KEYS */;
INSERT INTO `mst_program_kerja_jenis_pengawasan` VALUES (1,18,1,'2021-01-10 16:37:21',1,'2021-01-10 16:37:21',1,NULL,0,0),(2,19,2,'2021-01-11 04:45:27',1,'2021-01-11 04:45:27',1,NULL,0,0),(3,20,2,'2021-01-11 06:27:43',1,'2021-01-11 06:27:43',1,NULL,0,0),(4,21,2,'2021-01-11 08:36:38',1,'2021-01-11 08:36:38',1,NULL,0,1),(5,21,2,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(6,21,2,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(7,21,2,'2021-01-11 08:50:16',1,'2021-01-11 08:50:16',1,NULL,0,1),(8,22,2,'2021-01-11 09:00:26',1,'2021-01-11 09:00:26',1,NULL,0,0),(9,21,2,'2021-01-11 09:01:05',1,'2021-01-11 09:01:05',1,NULL,0,0),(10,23,2,'2021-01-11 09:24:52',1,'2021-01-11 09:24:52',1,NULL,0,0),(11,24,2,'2021-01-11 16:28:54',1,'2021-01-11 16:28:54',1,NULL,0,1),(12,25,2,'2021-01-11 16:38:45',1,'2021-01-11 16:38:45',1,NULL,0,1),(13,26,3,'2021-01-11 16:43:16',1,'2021-01-11 16:43:16',1,NULL,0,0),(14,27,3,'2021-01-11 16:43:16',1,'2021-01-11 16:43:16',1,NULL,0,1),(15,27,3,'2021-01-11 16:44:17',1,'2021-01-11 16:44:17',1,NULL,0,1),(16,27,3,'2021-01-11 16:44:17',1,'2021-01-11 16:44:17',1,NULL,0,0),(17,28,3,'2021-01-11 16:45:57',1,'2021-01-11 16:45:57',1,NULL,0,1),(18,29,4,'2021-01-11 16:47:57',1,'2021-01-11 16:47:57',1,NULL,0,0),(19,30,2,'2021-01-11 16:49:13',1,'2021-01-11 16:49:13',1,NULL,0,0),(20,31,2,'2021-01-11 16:50:35',1,'2021-01-11 16:50:35',1,NULL,0,0),(21,32,2,'2021-01-11 16:51:54',1,'2021-01-11 16:51:54',1,NULL,0,0),(22,33,3,'2021-01-11 16:53:54',1,'2021-01-11 16:53:54',1,NULL,0,0),(23,34,2,'2021-01-11 16:54:51',1,'2021-01-11 16:54:51',1,NULL,0,0),(24,35,2,'2021-01-11 17:01:25',1,'2021-01-11 17:01:25',1,NULL,0,0),(25,36,2,'2021-01-11 17:03:04',1,'2021-01-11 17:03:04',1,NULL,0,0),(26,37,2,'2021-01-11 17:05:04',1,'2021-01-11 17:05:04',1,NULL,0,0),(27,38,5,'2021-01-11 17:07:14',1,'2021-01-11 17:07:14',1,NULL,0,0),(28,39,4,'2021-01-11 17:09:00',1,'2021-01-11 17:09:00',1,NULL,0,0),(29,40,2,'2021-01-11 17:10:47',1,'2021-01-11 17:10:47',1,NULL,0,0),(30,41,3,'2021-01-11 17:12:59',1,'2021-01-11 17:12:59',1,NULL,0,0),(31,42,6,'2021-01-11 17:14:29',1,'2021-01-11 17:14:29',1,NULL,0,0),(32,43,3,'2021-01-11 17:16:58',1,'2021-01-11 17:16:58',1,NULL,0,0),(33,44,3,'2021-01-11 17:19:37',1,'2021-01-11 17:19:37',1,NULL,0,0),(34,45,6,'2021-01-11 17:20:39',1,'2021-01-11 17:20:39',1,NULL,0,0),(35,46,4,'2021-01-11 17:22:00',1,'2021-01-11 17:22:00',1,NULL,0,0),(36,47,3,'2021-01-11 17:24:30',1,'2021-01-11 17:24:30',1,NULL,0,0),(37,48,3,'2021-01-11 17:26:01',1,'2021-01-11 17:26:01',1,NULL,0,0),(38,49,2,'2021-01-11 17:28:08',1,'2021-01-11 17:28:08',1,NULL,0,0),(39,50,2,'2021-01-11 17:29:48',1,'2021-01-11 17:29:48',1,NULL,0,0),(40,51,5,'2021-01-11 17:31:27',1,'2021-01-11 17:31:27',1,NULL,0,0),(41,52,2,'2021-01-11 17:33:37',1,'2021-01-11 17:33:37',1,NULL,0,0),(42,53,2,'2021-01-11 17:33:37',1,'2021-01-11 17:33:37',1,NULL,0,0),(43,54,6,'2021-01-11 17:36:42',1,'2021-01-11 17:36:42',1,NULL,0,0),(44,55,6,'2021-01-11 17:37:54',1,'2021-01-11 17:37:54',1,NULL,0,0),(45,56,8,'2021-01-11 17:39:14',1,'2021-01-11 17:39:14',1,NULL,0,0),(46,57,6,'2021-01-11 17:40:08',1,'2021-01-11 17:40:08',1,NULL,0,1),(47,57,6,'2021-01-11 17:40:29',1,'2021-01-11 17:40:29',1,NULL,0,0),(48,58,6,'2021-01-11 17:41:22',1,'2021-01-11 17:41:22',1,NULL,0,0),(49,59,2,'2021-01-11 17:42:14',1,'2021-01-11 17:42:14',1,NULL,0,0),(50,60,2,'2021-01-11 18:07:48',1,'2021-01-11 18:07:48',1,NULL,0,0),(51,61,9,'2021-01-11 18:44:59',1,'2021-01-11 18:44:59',1,NULL,0,0),(52,62,9,'2021-01-11 19:00:49',1,'2021-01-11 19:00:49',1,NULL,0,0),(53,63,9,'2021-01-11 19:24:10',1,'2021-01-11 19:24:10',1,NULL,0,0),(54,64,9,'2021-01-11 19:25:11',1,'2021-01-11 19:25:11',1,NULL,0,0),(55,65,9,'2021-01-11 19:27:08',1,'2021-01-11 19:27:08',1,NULL,0,0),(56,66,9,'2021-01-11 19:29:24',1,'2021-01-11 19:29:24',1,NULL,0,1),(57,67,9,'2021-01-11 19:30:29',1,'2021-01-11 19:30:29',1,NULL,0,0),(58,66,9,'2021-01-11 19:30:53',1,'2021-01-11 19:30:53',1,NULL,0,0),(59,68,9,'2021-01-11 19:31:43',1,'2021-01-11 19:31:43',1,NULL,0,0),(60,69,9,'2021-01-11 19:32:31',1,'2021-01-11 19:32:31',1,NULL,0,0),(61,70,9,'2021-01-11 19:33:15',1,'2021-01-11 19:33:15',1,NULL,0,0),(62,71,9,'2021-01-11 19:33:59',1,'2021-01-11 19:33:59',1,NULL,0,0),(63,72,9,'2021-01-11 19:34:43',1,'2021-01-11 19:34:43',1,NULL,0,0),(64,73,9,'2021-01-11 19:35:31',1,'2021-01-11 19:35:31',1,NULL,0,0),(65,74,9,'2021-01-11 19:36:26',1,'2021-01-11 19:36:26',1,NULL,0,0),(66,75,9,'2021-01-11 19:37:20',1,'2021-01-11 19:37:20',1,NULL,0,0),(67,76,9,'2021-01-11 19:38:31',1,'2021-01-11 19:38:31',1,NULL,0,0),(68,77,9,'2021-01-11 19:39:28',1,'2021-01-11 19:39:28',1,NULL,0,0),(69,78,9,'2021-01-11 19:41:06',1,'2021-01-11 19:41:06',1,NULL,0,0),(70,79,9,'2021-01-11 19:41:06',1,'2021-01-11 19:41:06',1,NULL,0,0),(71,80,9,'2021-01-11 19:42:00',1,'2021-01-11 19:42:00',1,NULL,0,0),(72,81,9,'2021-01-11 19:45:32',1,'2021-01-11 19:45:32',1,NULL,0,0),(73,82,9,'2021-01-11 19:46:15',1,'2021-01-11 19:46:15',1,NULL,0,0),(74,83,9,'2021-01-11 19:47:00',1,'2021-01-11 19:47:00',1,NULL,0,0),(75,84,9,'2021-01-11 19:47:45',1,'2021-01-11 19:47:45',1,NULL,0,0),(76,85,9,'2021-01-11 19:49:09',1,'2021-01-11 19:49:09',1,NULL,0,0),(77,86,15,'2021-01-11 19:52:19',1,'2021-01-11 19:52:19',1,NULL,0,0),(78,87,15,'2021-01-11 19:53:20',1,'2021-01-11 19:53:20',1,NULL,0,0),(79,88,15,'2021-01-11 19:54:48',1,'2021-01-11 19:54:48',1,NULL,0,0),(80,89,15,'2021-01-11 19:55:43',1,'2021-01-11 19:55:43',1,NULL,0,0),(81,90,15,'2021-01-11 19:56:35',1,'2021-01-11 19:56:35',1,NULL,0,0),(82,91,14,'2021-01-11 20:06:21',1,'2021-01-11 20:06:21',1,NULL,0,0),(83,92,14,'2021-01-11 20:07:38',1,'2021-01-11 20:07:38',1,NULL,0,0),(84,93,14,'2021-01-11 20:08:32',1,'2021-01-11 20:08:32',1,NULL,0,0),(85,94,14,'2021-01-11 20:09:45',1,'2021-01-11 20:09:45',1,NULL,0,0),(86,95,14,'2021-01-11 20:10:31',1,'2021-01-11 20:10:31',1,NULL,0,1),(87,95,14,'2021-01-11 20:11:20',1,'2021-01-11 20:11:20',1,NULL,0,1),(88,95,14,'2021-01-11 20:11:20',1,'2021-01-11 20:11:20',1,NULL,0,0),(89,96,14,'2021-01-11 20:12:05',1,'2021-01-11 20:12:05',1,NULL,0,0),(90,97,14,'2021-01-11 20:13:34',1,'2021-01-11 20:13:34',1,NULL,0,0),(91,98,14,'2021-01-11 20:13:34',1,'2021-01-11 20:13:34',1,NULL,0,0),(92,99,14,'2021-01-11 20:14:23',1,'2021-01-11 20:14:23',1,NULL,0,0),(93,100,14,'2021-01-11 20:15:08',1,'2021-01-11 20:15:08',1,NULL,0,1),(94,101,14,'2021-01-11 20:15:58',1,'2021-01-11 20:15:58',1,NULL,0,0),(95,100,14,'2021-01-11 20:18:10',1,'2021-01-11 20:18:10',1,NULL,0,0),(96,102,14,'2021-01-11 20:19:14',1,'2021-01-11 20:19:14',1,NULL,0,0),(97,103,14,'2021-01-11 20:21:38',1,'2021-01-11 20:21:38',1,NULL,0,0),(98,104,14,'2021-01-11 20:34:18',1,'2021-01-11 20:34:18',1,NULL,0,1),(99,104,16,'2021-01-11 20:36:17',1,'2021-01-11 20:36:17',1,NULL,0,1),(100,104,16,'2021-01-11 20:36:17',1,'2021-01-11 20:36:17',1,NULL,0,0),(101,105,16,'2021-01-11 20:36:59',1,'2021-01-11 20:36:59',1,NULL,0,0),(102,106,16,'2021-01-11 20:38:21',1,'2021-01-11 20:38:21',1,NULL,0,0),(103,107,16,'2021-01-11 20:45:28',1,'2021-01-11 20:45:28',1,NULL,0,0),(104,108,16,'2021-01-11 20:45:28',1,'2021-01-11 20:45:28',1,NULL,0,0),(105,109,16,'2021-01-11 20:46:21',1,'2021-01-11 20:46:21',1,NULL,0,0),(106,110,16,'2021-01-11 20:47:11',1,'2021-01-11 20:47:11',1,NULL,0,0),(107,111,16,'2021-01-11 20:51:22',1,'2021-01-11 20:51:22',1,NULL,0,0),(108,112,16,'2021-01-11 20:52:01',1,'2021-01-11 20:52:01',1,NULL,0,0),(109,113,16,'2021-01-11 20:52:37',1,'2021-01-11 20:52:37',1,NULL,0,0),(110,114,16,'2021-01-11 20:54:09',1,'2021-01-11 20:54:09',1,NULL,0,0),(111,115,16,'2021-01-11 20:55:24',1,'2021-01-11 20:55:24',1,NULL,0,0),(112,116,16,'2021-01-11 20:56:16',1,'2021-01-11 20:56:16',1,NULL,0,0),(113,117,14,'2021-01-11 21:08:51',1,'2021-01-11 21:08:51',1,NULL,0,0),(114,118,14,'2021-01-11 21:10:23',1,'2021-01-11 21:10:23',1,NULL,0,0),(115,119,14,'2021-01-11 21:11:28',1,'2021-01-11 21:11:28',1,NULL,0,0),(116,120,14,'2021-01-12 08:50:49',1,'2021-01-12 08:50:49',1,NULL,0,0),(117,121,14,'2021-01-12 08:50:49',1,'2021-01-12 08:50:49',1,NULL,0,0),(118,122,14,'2021-01-12 08:51:45',1,'2021-01-12 08:51:45',1,NULL,0,0),(119,123,14,'2021-01-12 08:52:13',1,'2021-01-12 08:52:13',1,NULL,0,0),(120,124,14,'2021-01-12 08:53:52',1,'2021-01-12 08:53:52',1,NULL,0,1),(121,125,14,'2021-01-12 08:55:01',1,'2021-01-12 08:55:01',1,NULL,0,0),(122,124,14,'2021-01-12 08:55:20',1,'2021-01-12 08:55:20',1,NULL,0,0),(123,126,14,'2021-01-12 08:56:00',1,'2021-01-12 08:56:00',1,NULL,0,0),(124,127,14,'2021-01-12 08:56:49',1,'2021-01-12 08:56:49',1,NULL,0,1),(125,128,14,'2021-01-12 08:57:34',1,'2021-01-12 08:57:34',1,NULL,0,1),(126,129,14,'2021-01-12 08:58:00',1,'2021-01-12 08:58:00',1,NULL,0,1),(127,129,14,'2021-01-12 09:05:12',1,'2021-01-12 09:05:12',1,NULL,0,1),(128,129,14,'2021-01-12 09:05:12',1,'2021-01-12 09:05:12',1,NULL,0,0),(129,128,14,'2021-01-12 09:05:29',1,'2021-01-12 09:05:29',1,NULL,0,0),(130,127,14,'2021-01-12 09:05:40',1,'2021-01-12 09:05:40',1,NULL,0,0),(131,130,14,'2021-01-12 09:08:00',1,'2021-01-12 09:08:00',1,NULL,0,1),(132,131,14,'2021-01-12 09:08:00',1,'2021-01-12 09:08:00',1,NULL,0,0),(133,130,14,'2021-01-12 09:43:35',1,'2021-01-12 09:43:35',1,NULL,0,1),(134,130,14,'2021-01-12 09:43:35',1,'2021-01-12 09:43:35',1,NULL,0,1),(135,132,14,'2021-01-12 09:46:01',1,'2021-01-12 09:46:01',1,NULL,0,0),(136,130,14,'2021-01-12 09:46:16',1,'2021-01-12 09:46:16',1,NULL,0,0),(137,133,14,'2021-01-12 09:47:53',1,'2021-01-12 09:47:53',1,NULL,0,0),(138,134,14,'2021-01-12 09:48:48',1,'2021-01-12 09:48:48',1,NULL,0,0),(139,135,14,'2021-01-12 09:49:32',1,'2021-01-12 09:49:32',1,NULL,0,0),(140,136,14,'2021-01-12 09:50:25',1,'2021-01-12 09:50:25',1,NULL,0,0),(141,137,16,'2021-01-12 10:01:48',1,'2021-01-12 10:01:48',1,NULL,0,0),(142,138,13,'2021-01-12 10:42:53',1,'2021-01-12 10:42:53',1,NULL,0,0),(143,139,9,'2021-01-13 14:29:26',1,'2021-01-13 14:29:26',1,NULL,0,0),(144,140,17,'2021-01-17 21:06:03',1,'2021-01-17 21:06:03',1,NULL,0,0),(145,141,2,'2021-01-17 21:23:29',1,'2021-01-17 21:23:29',1,NULL,0,0),(146,142,13,'2021-01-17 21:30:09',1,'2021-01-17 21:30:09',1,NULL,0,0),(147,28,3,'2021-01-18 09:18:16',1,'2021-01-18 09:18:16',1,NULL,0,0),(148,143,2,'2021-01-18 10:18:18',1,'2021-01-18 10:18:18',1,NULL,0,0),(149,24,2,'2021-01-23 12:34:00',1,'2021-01-23 12:34:00',1,NULL,0,0),(150,25,2,'2021-01-23 12:36:22',1,'2021-01-23 12:36:22',1,NULL,0,0),(151,144,2,'2021-01-25 10:30:53',1,'2021-01-25 10:30:53',1,NULL,0,0),(152,145,2,'2021-01-25 10:30:53',1,'2021-01-25 10:30:53',1,NULL,0,0);
/*!40000 ALTER TABLE `mst_program_kerja_jenis_pengawasan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_program_kerja_skpd`
--

DROP TABLE IF EXISTS `mst_program_kerja_skpd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_program_kerja_skpd` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_program_kerja` int(11) NOT NULL,
  `id_skpd` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=484 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_program_kerja_skpd`
--

LOCK TABLES `mst_program_kerja_skpd` WRITE;
/*!40000 ALTER TABLE `mst_program_kerja_skpd` DISABLE KEYS */;
INSERT INTO `mst_program_kerja_skpd` VALUES (1,18,1,'2021-01-10 16:37:21',1,'2021-01-10 16:37:21',1,NULL,0,0),(2,19,26,'2021-01-11 04:45:27',1,'2021-01-11 04:45:27',1,NULL,0,0),(3,19,9,'2021-01-11 04:45:27',1,'2021-01-11 04:45:27',1,NULL,0,0),(4,19,23,'2021-01-11 04:45:27',1,'2021-01-11 04:45:27',1,NULL,0,0),(5,19,22,'2021-01-11 04:45:27',1,'2021-01-11 04:45:27',1,NULL,0,0),(6,19,24,'2021-01-11 04:45:27',1,'2021-01-11 04:45:27',1,NULL,0,0),(7,19,12,'2021-01-11 04:45:27',1,'2021-01-11 04:45:27',1,NULL,0,0),(8,19,5,'2021-01-11 04:45:27',1,'2021-01-11 04:45:27',1,NULL,0,0),(9,19,31,'2021-01-11 04:45:27',1,'2021-01-11 04:45:27',1,NULL,0,0),(10,19,25,'2021-01-11 04:45:27',1,'2021-01-11 04:45:27',1,NULL,0,0),(11,19,6,'2021-01-11 04:45:27',1,'2021-01-11 04:45:27',1,NULL,0,0),(12,19,29,'2021-01-11 04:45:27',1,'2021-01-11 04:45:27',1,NULL,0,0),(13,19,28,'2021-01-11 04:45:27',1,'2021-01-11 04:45:27',1,NULL,0,0),(14,19,20,'2021-01-11 04:45:27',1,'2021-01-11 04:45:27',1,NULL,0,0),(15,19,8,'2021-01-11 04:45:27',1,'2021-01-11 04:45:27',1,NULL,0,0),(16,19,7,'2021-01-11 04:45:27',1,'2021-01-11 04:45:27',1,NULL,0,0),(17,19,4,'2021-01-11 04:45:27',1,'2021-01-11 04:45:27',1,NULL,0,0),(18,19,3,'2021-01-11 04:45:27',1,'2021-01-11 04:45:27',1,NULL,0,0),(19,19,21,'2021-01-11 04:45:27',1,'2021-01-11 04:45:27',1,NULL,0,0),(20,19,18,'2021-01-11 04:45:27',1,'2021-01-11 04:45:27',1,NULL,0,0),(21,19,1,'2021-01-11 04:45:27',1,'2021-01-11 04:45:27',1,NULL,0,0),(22,19,30,'2021-01-11 04:45:27',1,'2021-01-11 04:45:27',1,NULL,0,0),(23,19,17,'2021-01-11 04:45:27',1,'2021-01-11 04:45:27',1,NULL,0,0),(24,19,27,'2021-01-11 04:45:27',1,'2021-01-11 04:45:27',1,NULL,0,0),(25,19,32,'2021-01-11 04:45:27',1,'2021-01-11 04:45:27',1,NULL,0,0),(26,19,10,'2021-01-11 04:45:27',1,'2021-01-11 04:45:27',1,NULL,0,0),(27,19,11,'2021-01-11 04:45:27',1,'2021-01-11 04:45:27',1,NULL,0,0),(28,19,33,'2021-01-11 04:45:27',1,'2021-01-11 04:45:27',1,NULL,0,0),(29,19,34,'2021-01-11 04:45:27',1,'2021-01-11 04:45:27',1,NULL,0,0),(30,19,36,'2021-01-11 04:45:27',1,'2021-01-11 04:45:27',1,NULL,0,0),(31,19,37,'2021-01-11 04:45:27',1,'2021-01-11 04:45:27',1,NULL,0,0),(32,20,1,'2021-01-11 06:27:43',1,'2021-01-11 06:27:43',1,NULL,0,0),(33,21,1,'2021-01-11 08:36:38',1,'2021-01-11 08:36:38',1,NULL,0,1),(34,21,1,'2021-01-11 08:36:38',1,'2021-01-11 08:36:38',1,NULL,0,1),(35,21,1,'2021-01-11 08:36:38',1,'2021-01-11 08:36:38',1,NULL,0,1),(36,21,1,'2021-01-11 08:36:38',1,'2021-01-11 08:36:38',1,NULL,0,1),(37,21,1,'2021-01-11 08:36:38',1,'2021-01-11 08:36:38',1,NULL,0,1),(38,21,1,'2021-01-11 08:36:38',1,'2021-01-11 08:36:38',1,NULL,0,1),(39,21,1,'2021-01-11 08:36:38',1,'2021-01-11 08:36:38',1,NULL,0,1),(40,21,1,'2021-01-11 08:36:38',1,'2021-01-11 08:36:38',1,NULL,0,1),(41,21,1,'2021-01-11 08:36:38',1,'2021-01-11 08:36:38',1,NULL,0,1),(42,21,1,'2021-01-11 08:36:38',1,'2021-01-11 08:36:38',1,NULL,0,1),(43,21,1,'2021-01-11 08:36:38',1,'2021-01-11 08:36:38',1,NULL,0,1),(44,21,1,'2021-01-11 08:36:38',1,'2021-01-11 08:36:38',1,NULL,0,1),(45,21,1,'2021-01-11 08:36:38',1,'2021-01-11 08:36:38',1,NULL,0,1),(46,21,1,'2021-01-11 08:36:38',1,'2021-01-11 08:36:38',1,NULL,0,1),(47,21,1,'2021-01-11 08:36:38',1,'2021-01-11 08:36:38',1,NULL,0,1),(48,21,1,'2021-01-11 08:36:38',1,'2021-01-11 08:36:38',1,NULL,0,1),(49,21,1,'2021-01-11 08:36:38',1,'2021-01-11 08:36:38',1,NULL,0,1),(50,21,1,'2021-01-11 08:36:38',1,'2021-01-11 08:36:38',1,NULL,0,1),(51,21,1,'2021-01-11 08:36:38',1,'2021-01-11 08:36:38',1,NULL,0,1),(52,21,1,'2021-01-11 08:36:38',1,'2021-01-11 08:36:38',1,NULL,0,1),(53,21,1,'2021-01-11 08:36:38',1,'2021-01-11 08:36:38',1,NULL,0,1),(54,21,1,'2021-01-11 08:36:38',1,'2021-01-11 08:36:38',1,NULL,0,1),(55,21,1,'2021-01-11 08:36:38',1,'2021-01-11 08:36:38',1,NULL,0,1),(56,21,1,'2021-01-11 08:36:38',1,'2021-01-11 08:36:38',1,NULL,0,1),(57,21,1,'2021-01-11 08:36:38',1,'2021-01-11 08:36:38',1,NULL,0,1),(58,21,1,'2021-01-11 08:36:38',1,'2021-01-11 08:36:38',1,NULL,0,1),(59,21,1,'2021-01-11 08:36:38',1,'2021-01-11 08:36:38',1,NULL,0,1),(60,21,1,'2021-01-11 08:36:38',1,'2021-01-11 08:36:38',1,NULL,0,1),(61,21,1,'2021-01-11 08:36:38',1,'2021-01-11 08:36:38',1,NULL,0,1),(62,21,1,'2021-01-11 08:36:38',1,'2021-01-11 08:36:38',1,NULL,0,1),(63,21,1,'2021-01-11 08:36:38',1,'2021-01-11 08:36:38',1,NULL,0,1),(64,21,1,'2021-01-11 08:36:38',1,'2021-01-11 08:36:38',1,NULL,0,1),(65,21,1,'2021-01-11 08:36:38',1,'2021-01-11 08:36:38',1,NULL,0,1),(66,21,1,'2021-01-11 08:36:38',1,'2021-01-11 08:36:38',1,NULL,0,1),(67,21,1,'2021-01-11 08:36:38',1,'2021-01-11 08:36:38',1,NULL,0,1),(68,21,1,'2021-01-11 08:36:38',1,'2021-01-11 08:36:38',1,NULL,0,1),(69,21,1,'2021-01-11 08:36:38',1,'2021-01-11 08:36:38',1,NULL,0,1),(70,21,1,'2021-01-11 08:36:38',1,'2021-01-11 08:36:38',1,NULL,0,1),(71,21,1,'2021-01-11 08:36:38',1,'2021-01-11 08:36:38',1,NULL,0,1),(72,21,1,'2021-01-11 08:36:38',1,'2021-01-11 08:36:38',1,NULL,0,1),(73,21,1,'2021-01-11 08:36:38',1,'2021-01-11 08:36:38',1,NULL,0,1),(74,21,1,'2021-01-11 08:36:38',1,'2021-01-11 08:36:38',1,NULL,0,1),(75,21,1,'2021-01-11 08:36:38',1,'2021-01-11 08:36:38',1,NULL,0,1),(76,21,1,'2021-01-11 08:36:38',1,'2021-01-11 08:36:38',1,NULL,0,1),(77,21,1,'2021-01-11 08:36:38',1,'2021-01-11 08:36:38',1,NULL,0,1),(78,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(79,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(80,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(81,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(82,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(83,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(84,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(85,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(86,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(87,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(88,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(89,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(90,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(91,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(92,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(93,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(94,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(95,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(96,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(97,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(98,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(99,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(100,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(101,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(102,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(103,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(104,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(105,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(106,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(107,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(108,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(109,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(110,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(111,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(112,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(113,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(114,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(115,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(116,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(117,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(118,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(119,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(120,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(121,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(122,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(123,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(124,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(125,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(126,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(127,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(128,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(129,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(130,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(131,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(132,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(133,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(134,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(135,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(136,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(137,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(138,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(139,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(140,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(141,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(142,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(143,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(144,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(145,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(146,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(147,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(148,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(149,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(150,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(151,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(152,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(153,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(154,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(155,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(156,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(157,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(158,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(159,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(160,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(161,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(162,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(163,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(164,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(165,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(166,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(167,21,1,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(168,21,1,'2021-01-11 08:50:16',1,'2021-01-11 08:50:16',1,NULL,0,1),(169,21,15,'2021-01-11 08:50:16',1,'2021-01-11 08:50:16',1,NULL,0,1),(170,21,9,'2021-01-11 08:50:16',1,'2021-01-11 08:50:16',1,NULL,0,1),(171,21,3,'2021-01-11 08:50:16',1,'2021-01-11 08:50:16',1,NULL,0,1),(172,21,6,'2021-01-11 08:50:16',1,'2021-01-11 08:50:16',1,NULL,0,1),(173,21,4,'2021-01-11 08:50:16',1,'2021-01-11 08:50:16',1,NULL,0,1),(174,21,5,'2021-01-11 08:50:16',1,'2021-01-11 08:50:16',1,NULL,0,1),(175,21,7,'2021-01-11 08:50:16',1,'2021-01-11 08:50:16',1,NULL,0,1),(176,21,8,'2021-01-11 08:50:16',1,'2021-01-11 08:50:16',1,NULL,0,1),(177,21,11,'2021-01-11 08:50:16',1,'2021-01-11 08:50:16',1,NULL,0,1),(178,21,1,'2021-01-11 08:50:16',1,'2021-01-11 08:50:16',1,NULL,0,1),(179,22,14,'2021-01-11 09:00:26',1,'2021-01-11 09:00:26',1,NULL,0,0),(180,22,16,'2021-01-11 09:00:26',1,'2021-01-11 09:00:26',1,NULL,0,0),(181,22,12,'2021-01-11 09:00:26',1,'2021-01-11 09:00:26',1,NULL,0,0),(182,22,22,'2021-01-11 09:00:26',1,'2021-01-11 09:00:26',1,NULL,0,0),(183,22,13,'2021-01-11 09:00:26',1,'2021-01-11 09:00:26',1,NULL,0,0),(184,22,17,'2021-01-11 09:00:26',1,'2021-01-11 09:00:26',1,NULL,0,0),(185,22,18,'2021-01-11 09:00:26',1,'2021-01-11 09:00:26',1,NULL,0,0),(186,22,19,'2021-01-11 09:00:26',1,'2021-01-11 09:00:26',1,NULL,0,0),(187,22,20,'2021-01-11 09:00:26',1,'2021-01-11 09:00:26',1,NULL,0,0),(188,22,21,'2021-01-11 09:00:26',1,'2021-01-11 09:00:26',1,NULL,0,0),(189,21,1,'2021-01-11 09:01:05',1,'2021-01-11 09:01:05',1,NULL,0,0),(190,21,15,'2021-01-11 09:01:05',1,'2021-01-11 09:01:05',1,NULL,0,0),(191,21,9,'2021-01-11 09:01:05',1,'2021-01-11 09:01:05',1,NULL,0,0),(192,21,3,'2021-01-11 09:01:05',1,'2021-01-11 09:01:05',1,NULL,0,0),(193,21,6,'2021-01-11 09:01:05',1,'2021-01-11 09:01:05',1,NULL,0,0),(194,21,4,'2021-01-11 09:01:05',1,'2021-01-11 09:01:05',1,NULL,0,0),(195,21,5,'2021-01-11 09:01:05',1,'2021-01-11 09:01:05',1,NULL,0,0),(196,21,7,'2021-01-11 09:01:05',1,'2021-01-11 09:01:05',1,NULL,0,0),(197,21,8,'2021-01-11 09:01:05',1,'2021-01-11 09:01:05',1,NULL,0,0),(198,21,11,'2021-01-11 09:01:05',1,'2021-01-11 09:01:05',1,NULL,0,0),(199,21,1,'2021-01-11 09:01:05',1,'2021-01-11 09:01:05',1,NULL,0,0),(200,23,23,'2021-01-11 09:24:52',1,'2021-01-11 09:24:52',1,NULL,0,0),(201,24,1,'2021-01-11 16:28:54',1,'2021-01-11 16:28:54',1,NULL,0,1),(202,24,3,'2021-01-11 16:28:54',1,'2021-01-11 16:28:54',1,NULL,0,1),(203,24,4,'2021-01-11 16:28:54',1,'2021-01-11 16:28:54',1,NULL,0,1),(204,24,5,'2021-01-11 16:28:54',1,'2021-01-11 16:28:54',1,NULL,0,1),(205,24,6,'2021-01-11 16:28:54',1,'2021-01-11 16:28:54',1,NULL,0,1),(206,24,7,'2021-01-11 16:28:54',1,'2021-01-11 16:28:54',1,NULL,0,1),(207,24,8,'2021-01-11 16:28:54',1,'2021-01-11 16:28:54',1,NULL,0,1),(208,24,9,'2021-01-11 16:28:54',1,'2021-01-11 16:28:54',1,NULL,0,1),(209,24,10,'2021-01-11 16:28:54',1,'2021-01-11 16:28:54',1,NULL,0,1),(210,24,11,'2021-01-11 16:28:54',1,'2021-01-11 16:28:54',1,NULL,0,1),(211,24,12,'2021-01-11 16:28:54',1,'2021-01-11 16:28:54',1,NULL,0,1),(212,24,13,'2021-01-11 16:28:54',1,'2021-01-11 16:28:54',1,NULL,0,1),(213,24,14,'2021-01-11 16:28:54',1,'2021-01-11 16:28:54',1,NULL,0,1),(214,24,15,'2021-01-11 16:28:54',1,'2021-01-11 16:28:54',1,NULL,0,1),(215,24,16,'2021-01-11 16:28:54',1,'2021-01-11 16:28:54',1,NULL,0,1),(216,24,17,'2021-01-11 16:28:54',1,'2021-01-11 16:28:54',1,NULL,0,1),(217,24,18,'2021-01-11 16:28:54',1,'2021-01-11 16:28:54',1,NULL,0,1),(218,24,19,'2021-01-11 16:28:54',1,'2021-01-11 16:28:54',1,NULL,0,1),(219,24,20,'2021-01-11 16:28:54',1,'2021-01-11 16:28:54',1,NULL,0,1),(220,24,21,'2021-01-11 16:28:54',1,'2021-01-11 16:28:54',1,NULL,0,1),(221,24,22,'2021-01-11 16:28:54',1,'2021-01-11 16:28:54',1,NULL,0,1),(222,24,23,'2021-01-11 16:28:54',1,'2021-01-11 16:28:54',1,NULL,0,1),(223,24,24,'2021-01-11 16:28:54',1,'2021-01-11 16:28:54',1,NULL,0,1),(224,24,25,'2021-01-11 16:28:54',1,'2021-01-11 16:28:54',1,NULL,0,1),(225,24,26,'2021-01-11 16:28:54',1,'2021-01-11 16:28:54',1,NULL,0,1),(226,24,27,'2021-01-11 16:28:54',1,'2021-01-11 16:28:54',1,NULL,0,1),(227,24,28,'2021-01-11 16:28:54',1,'2021-01-11 16:28:54',1,NULL,0,1),(228,24,29,'2021-01-11 16:28:54',1,'2021-01-11 16:28:54',1,NULL,0,1),(229,24,30,'2021-01-11 16:28:54',1,'2021-01-11 16:28:54',1,NULL,0,1),(230,24,31,'2021-01-11 16:28:54',1,'2021-01-11 16:28:54',1,NULL,0,1),(231,24,32,'2021-01-11 16:28:54',1,'2021-01-11 16:28:54',1,NULL,0,1),(232,24,33,'2021-01-11 16:28:54',1,'2021-01-11 16:28:54',1,NULL,0,1),(233,24,34,'2021-01-11 16:28:54',1,'2021-01-11 16:28:54',1,NULL,0,1),(234,24,35,'2021-01-11 16:28:54',1,'2021-01-11 16:28:54',1,NULL,0,1),(235,24,36,'2021-01-11 16:28:54',1,'2021-01-11 16:28:54',1,NULL,0,1),(236,24,37,'2021-01-11 16:28:54',1,'2021-01-11 16:28:54',1,NULL,0,1),(237,25,1,'2021-01-11 16:38:45',1,'2021-01-11 16:38:45',1,NULL,0,1),(238,25,3,'2021-01-11 16:38:45',1,'2021-01-11 16:38:45',1,NULL,0,1),(239,25,4,'2021-01-11 16:38:45',1,'2021-01-11 16:38:45',1,NULL,0,1),(240,25,5,'2021-01-11 16:38:45',1,'2021-01-11 16:38:45',1,NULL,0,1),(241,25,6,'2021-01-11 16:38:45',1,'2021-01-11 16:38:45',1,NULL,0,1),(242,25,7,'2021-01-11 16:38:45',1,'2021-01-11 16:38:45',1,NULL,0,1),(243,25,8,'2021-01-11 16:38:45',1,'2021-01-11 16:38:45',1,NULL,0,1),(244,25,9,'2021-01-11 16:38:45',1,'2021-01-11 16:38:45',1,NULL,0,1),(245,25,10,'2021-01-11 16:38:45',1,'2021-01-11 16:38:45',1,NULL,0,1),(246,25,11,'2021-01-11 16:38:45',1,'2021-01-11 16:38:45',1,NULL,0,1),(247,25,12,'2021-01-11 16:38:45',1,'2021-01-11 16:38:45',1,NULL,0,1),(248,25,13,'2021-01-11 16:38:45',1,'2021-01-11 16:38:45',1,NULL,0,1),(249,25,14,'2021-01-11 16:38:45',1,'2021-01-11 16:38:45',1,NULL,0,1),(250,25,15,'2021-01-11 16:38:45',1,'2021-01-11 16:38:45',1,NULL,0,1),(251,25,16,'2021-01-11 16:38:45',1,'2021-01-11 16:38:45',1,NULL,0,1),(252,25,17,'2021-01-11 16:38:45',1,'2021-01-11 16:38:45',1,NULL,0,1),(253,25,18,'2021-01-11 16:38:45',1,'2021-01-11 16:38:45',1,NULL,0,1),(254,25,19,'2021-01-11 16:38:45',1,'2021-01-11 16:38:45',1,NULL,0,1),(255,25,20,'2021-01-11 16:38:45',1,'2021-01-11 16:38:45',1,NULL,0,1),(256,25,21,'2021-01-11 16:38:45',1,'2021-01-11 16:38:45',1,NULL,0,1),(257,25,22,'2021-01-11 16:38:45',1,'2021-01-11 16:38:45',1,NULL,0,1),(258,25,23,'2021-01-11 16:38:45',1,'2021-01-11 16:38:45',1,NULL,0,1),(259,25,25,'2021-01-11 16:38:45',1,'2021-01-11 16:38:45',1,NULL,0,1),(260,25,24,'2021-01-11 16:38:45',1,'2021-01-11 16:38:45',1,NULL,0,1),(261,25,25,'2021-01-11 16:38:45',1,'2021-01-11 16:38:45',1,NULL,0,1),(262,25,26,'2021-01-11 16:38:45',1,'2021-01-11 16:38:45',1,NULL,0,1),(263,25,27,'2021-01-11 16:38:45',1,'2021-01-11 16:38:45',1,NULL,0,1),(264,25,28,'2021-01-11 16:38:45',1,'2021-01-11 16:38:45',1,NULL,0,1),(265,25,29,'2021-01-11 16:38:45',1,'2021-01-11 16:38:45',1,NULL,0,1),(266,25,30,'2021-01-11 16:38:45',1,'2021-01-11 16:38:45',1,NULL,0,1),(267,25,31,'2021-01-11 16:38:45',1,'2021-01-11 16:38:45',1,NULL,0,1),(268,25,32,'2021-01-11 16:38:45',1,'2021-01-11 16:38:45',1,NULL,0,1),(269,25,33,'2021-01-11 16:38:45',1,'2021-01-11 16:38:45',1,NULL,0,1),(270,25,34,'2021-01-11 16:38:45',1,'2021-01-11 16:38:45',1,NULL,0,1),(271,25,35,'2021-01-11 16:38:45',1,'2021-01-11 16:38:45',1,NULL,0,1),(272,25,36,'2021-01-11 16:38:45',1,'2021-01-11 16:38:45',1,NULL,0,1),(273,25,37,'2021-01-11 16:38:45',1,'2021-01-11 16:38:45',1,NULL,0,1),(274,26,1,'2021-01-11 16:43:16',1,'2021-01-11 16:43:16',1,NULL,0,0),(275,27,1,'2021-01-11 16:43:16',1,'2021-01-11 16:43:16',1,NULL,0,1),(276,27,1,'2021-01-11 16:44:17',1,'2021-01-11 16:44:17',1,NULL,0,1),(277,27,1,'2021-01-11 16:44:17',1,'2021-01-11 16:44:17',1,NULL,0,0),(278,28,1,'2021-01-11 16:45:57',1,'2021-01-11 16:45:57',1,NULL,0,1),(279,29,1,'2021-01-11 16:47:57',1,'2021-01-11 16:47:57',1,NULL,0,0),(280,30,1,'2021-01-11 16:49:13',1,'2021-01-11 16:49:13',1,NULL,0,0),(281,31,1,'2021-01-11 16:50:35',1,'2021-01-11 16:50:35',1,NULL,0,0),(282,32,1,'2021-01-11 16:51:54',1,'2021-01-11 16:51:54',1,NULL,0,0),(283,33,23,'2021-01-11 16:53:54',1,'2021-01-11 16:53:54',1,NULL,0,0),(284,34,23,'2021-01-11 16:54:51',1,'2021-01-11 16:54:51',1,NULL,0,0),(285,35,8,'2021-01-11 17:01:25',1,'2021-01-11 17:01:25',1,NULL,0,0),(286,35,29,'2021-01-11 17:01:25',1,'2021-01-11 17:01:25',1,NULL,0,0),(287,35,26,'2021-01-11 17:01:25',1,'2021-01-11 17:01:25',1,NULL,0,0),(288,35,30,'2021-01-11 17:01:25',1,'2021-01-11 17:01:25',1,NULL,0,0),(289,35,7,'2021-01-11 17:01:25',1,'2021-01-11 17:01:25',1,NULL,0,0),(290,35,25,'2021-01-11 17:01:25',1,'2021-01-11 17:01:25',1,NULL,0,0),(291,35,6,'2021-01-11 17:01:25',1,'2021-01-11 17:01:25',1,NULL,0,0),(292,35,20,'2021-01-11 17:01:25',1,'2021-01-11 17:01:25',1,NULL,0,0),(293,35,32,'2021-01-11 17:01:25',1,'2021-01-11 17:01:25',1,NULL,0,0),(294,36,14,'2021-01-11 17:03:04',1,'2021-01-11 17:03:04',1,NULL,0,0),(295,37,14,'2021-01-11 17:05:04',1,'2021-01-11 17:05:04',1,NULL,0,0),(296,38,1,'2021-01-11 17:07:14',1,'2021-01-11 17:07:14',1,NULL,0,0),(297,39,1,'2021-01-11 17:09:00',1,'2021-01-11 17:09:00',1,NULL,0,0),(298,40,12,'2021-01-11 17:10:47',1,'2021-01-11 17:10:47',1,NULL,0,0),(299,41,1,'2021-01-11 17:12:59',1,'2021-01-11 17:12:59',1,NULL,0,0),(300,42,5,'2021-01-11 17:14:29',1,'2021-01-11 17:14:29',1,NULL,0,0),(301,43,38,'2021-01-11 17:16:58',1,'2021-01-11 17:16:58',1,NULL,0,0),(302,44,39,'2021-01-11 17:19:37',1,'2021-01-11 17:19:37',1,NULL,0,0),(303,45,3,'2021-01-11 17:20:39',1,'2021-01-11 17:20:39',1,NULL,0,0),(304,46,4,'2021-01-11 17:22:00',1,'2021-01-11 17:22:00',1,NULL,0,0),(305,47,8,'2021-01-11 17:24:30',1,'2021-01-11 17:24:30',1,NULL,0,0),(306,48,9,'2021-01-11 17:26:01',1,'2021-01-11 17:26:01',1,NULL,0,0),(307,49,12,'2021-01-11 17:28:08',1,'2021-01-11 17:28:08',1,NULL,0,0),(308,50,12,'2021-01-11 17:29:48',1,'2021-01-11 17:29:48',1,NULL,0,0),(309,51,12,'2021-01-11 17:31:27',1,'2021-01-11 17:31:27',1,NULL,0,0),(310,52,12,'2021-01-11 17:33:37',1,'2021-01-11 17:33:37',1,NULL,0,0),(311,53,12,'2021-01-11 17:33:37',1,'2021-01-11 17:33:37',1,NULL,0,0),(312,54,20,'2021-01-11 17:36:42',1,'2021-01-11 17:36:42',1,NULL,0,0),(313,55,20,'2021-01-11 17:37:54',1,'2021-01-11 17:37:54',1,NULL,0,0),(314,56,10,'2021-01-11 17:39:14',1,'2021-01-11 17:39:14',1,NULL,0,0),(315,57,29,'2021-01-11 17:40:08',1,'2021-01-11 17:40:08',1,NULL,0,1),(316,57,29,'2021-01-11 17:40:29',1,'2021-01-11 17:40:29',1,NULL,0,0),(317,58,28,'2021-01-11 17:41:22',1,'2021-01-11 17:41:22',1,NULL,0,0),(318,59,23,'2021-01-11 17:42:14',1,'2021-01-11 17:42:14',1,NULL,0,0),(319,60,1,'2021-01-11 18:07:48',1,'2021-01-11 18:07:48',1,NULL,0,0),(320,61,40,'2021-01-11 18:44:59',1,'2021-01-11 18:44:59',1,NULL,0,0),(321,62,40,'2021-01-11 19:00:49',1,'2021-01-11 19:00:49',1,NULL,0,0),(322,63,40,'2021-01-11 19:24:10',1,'2021-01-11 19:24:10',1,NULL,0,0),(323,64,40,'2021-01-11 19:25:11',1,'2021-01-11 19:25:11',1,NULL,0,0),(324,65,40,'2021-01-11 19:27:08',1,'2021-01-11 19:27:08',1,NULL,0,0),(325,66,40,'2021-01-11 19:29:24',1,'2021-01-11 19:29:24',1,NULL,0,1),(326,67,40,'2021-01-11 19:30:29',1,'2021-01-11 19:30:29',1,NULL,0,0),(327,66,40,'2021-01-11 19:30:53',1,'2021-01-11 19:30:53',1,NULL,0,0),(328,68,40,'2021-01-11 19:31:43',1,'2021-01-11 19:31:43',1,NULL,0,0),(329,69,40,'2021-01-11 19:32:31',1,'2021-01-11 19:32:31',1,NULL,0,0),(330,70,40,'2021-01-11 19:33:15',1,'2021-01-11 19:33:15',1,NULL,0,0),(331,71,40,'2021-01-11 19:33:59',1,'2021-01-11 19:33:59',1,NULL,0,0),(332,72,40,'2021-01-11 19:34:43',1,'2021-01-11 19:34:43',1,NULL,0,0),(333,73,40,'2021-01-11 19:35:31',1,'2021-01-11 19:35:31',1,NULL,0,0),(334,74,40,'2021-01-11 19:36:26',1,'2021-01-11 19:36:26',1,NULL,0,0),(335,75,40,'2021-01-11 19:37:20',1,'2021-01-11 19:37:20',1,NULL,0,0),(336,76,40,'2021-01-11 19:38:31',1,'2021-01-11 19:38:31',1,NULL,0,0),(337,77,40,'2021-01-11 19:39:28',1,'2021-01-11 19:39:28',1,NULL,0,0),(338,78,40,'2021-01-11 19:41:06',1,'2021-01-11 19:41:06',1,NULL,0,0),(339,79,40,'2021-01-11 19:41:06',1,'2021-01-11 19:41:06',1,NULL,0,0),(340,80,40,'2021-01-11 19:42:00',1,'2021-01-11 19:42:00',1,NULL,0,0),(341,81,40,'2021-01-11 19:45:32',1,'2021-01-11 19:45:32',1,NULL,0,0),(342,82,40,'2021-01-11 19:46:15',1,'2021-01-11 19:46:15',1,NULL,0,0),(343,83,40,'2021-01-11 19:47:00',1,'2021-01-11 19:47:00',1,NULL,0,0),(344,84,40,'2021-01-11 19:47:45',1,'2021-01-11 19:47:45',1,NULL,0,0),(345,85,40,'2021-01-11 19:49:09',1,'2021-01-11 19:49:09',1,NULL,0,0),(346,86,40,'2021-01-11 19:52:19',1,'2021-01-11 19:52:19',1,NULL,0,0),(347,87,40,'2021-01-11 19:53:20',1,'2021-01-11 19:53:20',1,NULL,0,0),(348,88,40,'2021-01-11 19:54:48',1,'2021-01-11 19:54:48',1,NULL,0,0),(349,89,40,'2021-01-11 19:55:43',1,'2021-01-11 19:55:43',1,NULL,0,0),(350,90,40,'2021-01-11 19:56:35',1,'2021-01-11 19:56:35',1,NULL,0,0),(351,91,24,'2021-01-11 20:06:21',1,'2021-01-11 20:06:21',1,NULL,0,0),(352,92,31,'2021-01-11 20:07:38',1,'2021-01-11 20:07:38',1,NULL,0,0),(353,93,25,'2021-01-11 20:08:32',1,'2021-01-11 20:08:32',1,NULL,0,0),(354,94,13,'2021-01-11 20:09:45',1,'2021-01-11 20:09:45',1,NULL,0,0),(355,95,1,'2021-01-11 20:10:31',1,'2021-01-11 20:10:31',1,NULL,0,1),(356,95,7,'2021-01-11 20:11:20',1,'2021-01-11 20:11:20',1,NULL,0,1),(357,95,7,'2021-01-11 20:11:20',1,'2021-01-11 20:11:20',1,NULL,0,0),(358,96,34,'2021-01-11 20:12:05',1,'2021-01-11 20:12:05',1,NULL,0,0),(359,97,10,'2021-01-11 20:13:34',1,'2021-01-11 20:13:34',1,NULL,0,0),(360,98,10,'2021-01-11 20:13:34',1,'2021-01-11 20:13:34',1,NULL,0,0),(361,99,36,'2021-01-11 20:14:23',1,'2021-01-11 20:14:23',1,NULL,0,0),(362,100,10,'2021-01-11 20:15:08',1,'2021-01-11 20:15:08',1,NULL,0,1),(363,101,33,'2021-01-11 20:15:58',1,'2021-01-11 20:15:58',1,NULL,0,0),(364,100,37,'2021-01-11 20:18:10',1,'2021-01-11 20:18:10',1,NULL,0,0),(365,102,35,'2021-01-11 20:19:14',1,'2021-01-11 20:19:14',1,NULL,0,0),(366,103,1,'2021-01-11 20:21:38',1,'2021-01-11 20:21:38',1,NULL,0,0),(367,104,41,'2021-01-11 20:34:18',1,'2021-01-11 20:34:18',1,NULL,0,1),(368,104,41,'2021-01-11 20:36:17',1,'2021-01-11 20:36:17',1,NULL,0,1),(369,104,41,'2021-01-11 20:36:17',1,'2021-01-11 20:36:17',1,NULL,0,0),(370,105,41,'2021-01-11 20:36:59',1,'2021-01-11 20:36:59',1,NULL,0,0),(371,106,41,'2021-01-11 20:38:21',1,'2021-01-11 20:38:21',1,NULL,0,0),(372,107,41,'2021-01-11 20:45:28',1,'2021-01-11 20:45:28',1,NULL,0,0),(373,108,41,'2021-01-11 20:45:28',1,'2021-01-11 20:45:28',1,NULL,0,0),(374,109,41,'2021-01-11 20:46:21',1,'2021-01-11 20:46:21',1,NULL,0,0),(375,110,41,'2021-01-11 20:47:11',1,'2021-01-11 20:47:11',1,NULL,0,0),(376,111,41,'2021-01-11 20:51:22',1,'2021-01-11 20:51:22',1,NULL,0,0),(377,112,41,'2021-01-11 20:52:01',1,'2021-01-11 20:52:01',1,NULL,0,0),(378,113,41,'2021-01-11 20:52:37',1,'2021-01-11 20:52:37',1,NULL,0,0),(379,114,41,'2021-01-11 20:54:09',1,'2021-01-11 20:54:09',1,NULL,0,0),(380,115,41,'2021-01-11 20:55:24',1,'2021-01-11 20:55:24',1,NULL,0,0),(381,116,41,'2021-01-11 20:56:16',1,'2021-01-11 20:56:16',1,NULL,0,0),(382,117,41,'2021-01-11 21:08:51',1,'2021-01-11 21:08:51',1,NULL,0,0),(383,118,41,'2021-01-11 21:10:23',1,'2021-01-11 21:10:23',1,NULL,0,0),(384,119,41,'2021-01-11 21:11:28',1,'2021-01-11 21:11:28',1,NULL,0,0),(385,120,41,'2021-01-12 08:50:49',1,'2021-01-12 08:50:49',1,NULL,0,0),(386,121,41,'2021-01-12 08:50:49',1,'2021-01-12 08:50:49',1,NULL,0,0),(387,122,41,'2021-01-12 08:51:45',1,'2021-01-12 08:51:45',1,NULL,0,0),(388,123,41,'2021-01-12 08:52:13',1,'2021-01-12 08:52:13',1,NULL,0,0),(389,124,41,'2021-01-12 08:53:52',1,'2021-01-12 08:53:52',1,NULL,0,1),(390,125,41,'2021-01-12 08:55:01',1,'2021-01-12 08:55:01',1,NULL,0,0),(391,124,41,'2021-01-12 08:55:20',1,'2021-01-12 08:55:20',1,NULL,0,0),(392,126,41,'2021-01-12 08:56:00',1,'2021-01-12 08:56:00',1,NULL,0,0),(393,127,41,'2021-01-12 08:56:49',1,'2021-01-12 08:56:49',1,NULL,0,1),(394,128,41,'2021-01-12 08:57:34',1,'2021-01-12 08:57:34',1,NULL,0,1),(395,129,41,'2021-01-12 08:58:00',1,'2021-01-12 08:58:00',1,NULL,0,1),(396,129,32,'2021-01-12 09:05:12',1,'2021-01-12 09:05:12',1,NULL,0,1),(397,129,32,'2021-01-12 09:05:12',1,'2021-01-12 09:05:12',1,NULL,0,0),(398,128,32,'2021-01-12 09:05:29',1,'2021-01-12 09:05:29',1,NULL,0,0),(399,127,32,'2021-01-12 09:05:40',1,'2021-01-12 09:05:40',1,NULL,0,0),(400,130,41,'2021-01-12 09:08:00',1,'2021-01-12 09:08:00',1,NULL,0,1),(401,131,41,'2021-01-12 09:08:00',1,'2021-01-12 09:08:00',1,NULL,0,0),(402,130,41,'2021-01-12 09:43:35',1,'2021-01-12 09:43:35',1,NULL,0,1),(403,130,41,'2021-01-12 09:43:35',1,'2021-01-12 09:43:35',1,NULL,0,1),(404,132,1,'2021-01-12 09:46:01',1,'2021-01-12 09:46:01',1,NULL,0,0),(405,130,1,'2021-01-12 09:46:16',1,'2021-01-12 09:46:16',1,NULL,0,0),(406,133,1,'2021-01-12 09:47:53',1,'2021-01-12 09:47:53',1,NULL,0,0),(407,134,1,'2021-01-12 09:48:48',1,'2021-01-12 09:48:48',1,NULL,0,0),(408,135,1,'2021-01-12 09:49:32',1,'2021-01-12 09:49:32',1,NULL,0,0),(409,136,1,'2021-01-12 09:50:25',1,'2021-01-12 09:50:25',1,NULL,0,0),(410,137,41,'2021-01-12 10:01:48',1,'2021-01-12 10:01:48',1,NULL,0,0),(411,138,1,'2021-01-12 10:42:53',1,'2021-01-12 10:42:53',1,NULL,0,0),(412,139,40,'2021-01-13 14:29:26',1,'2021-01-13 14:29:26',1,NULL,0,0),(413,140,1,'2021-01-17 21:06:03',1,'2021-01-17 21:06:03',1,NULL,0,0),(414,141,1,'2021-01-17 21:23:29',1,'2021-01-17 21:23:29',1,NULL,0,0),(415,141,3,'2021-01-17 21:23:29',1,'2021-01-17 21:23:29',1,NULL,0,0),(416,141,4,'2021-01-17 21:23:29',1,'2021-01-17 21:23:29',1,NULL,0,0),(417,141,5,'2021-01-17 21:23:29',1,'2021-01-17 21:23:29',1,NULL,0,0),(418,141,6,'2021-01-17 21:23:29',1,'2021-01-17 21:23:29',1,NULL,0,0),(419,141,7,'2021-01-17 21:23:29',1,'2021-01-17 21:23:29',1,NULL,0,0),(420,141,8,'2021-01-17 21:23:29',1,'2021-01-17 21:23:29',1,NULL,0,0),(421,141,9,'2021-01-17 21:23:29',1,'2021-01-17 21:23:29',1,NULL,0,0),(422,141,10,'2021-01-17 21:23:29',1,'2021-01-17 21:23:29',1,NULL,0,0),(423,141,11,'2021-01-17 21:23:29',1,'2021-01-17 21:23:29',1,NULL,0,0),(424,141,12,'2021-01-17 21:23:29',1,'2021-01-17 21:23:29',1,NULL,0,0),(425,141,13,'2021-01-17 21:23:29',1,'2021-01-17 21:23:29',1,NULL,0,0),(426,141,14,'2021-01-17 21:23:29',1,'2021-01-17 21:23:29',1,NULL,0,0),(427,141,15,'2021-01-17 21:23:29',1,'2021-01-17 21:23:29',1,NULL,0,0),(428,141,16,'2021-01-17 21:23:29',1,'2021-01-17 21:23:29',1,NULL,0,0),(429,141,17,'2021-01-17 21:23:29',1,'2021-01-17 21:23:29',1,NULL,0,0),(430,141,18,'2021-01-17 21:23:29',1,'2021-01-17 21:23:29',1,NULL,0,0),(431,141,19,'2021-01-17 21:23:29',1,'2021-01-17 21:23:29',1,NULL,0,0),(432,141,20,'2021-01-17 21:23:29',1,'2021-01-17 21:23:29',1,NULL,0,0),(433,141,21,'2021-01-17 21:23:29',1,'2021-01-17 21:23:29',1,NULL,0,0),(434,141,22,'2021-01-17 21:23:29',1,'2021-01-17 21:23:29',1,NULL,0,0),(435,141,23,'2021-01-17 21:23:29',1,'2021-01-17 21:23:29',1,NULL,0,0),(436,141,24,'2021-01-17 21:23:29',1,'2021-01-17 21:23:29',1,NULL,0,0),(437,141,25,'2021-01-17 21:23:29',1,'2021-01-17 21:23:29',1,NULL,0,0),(438,141,26,'2021-01-17 21:23:29',1,'2021-01-17 21:23:29',1,NULL,0,0),(439,141,27,'2021-01-17 21:23:29',1,'2021-01-17 21:23:29',1,NULL,0,0),(440,141,28,'2021-01-17 21:23:29',1,'2021-01-17 21:23:29',1,NULL,0,0),(441,141,29,'2021-01-17 21:23:29',1,'2021-01-17 21:23:29',1,NULL,0,0),(442,141,30,'2021-01-17 21:23:29',1,'2021-01-17 21:23:29',1,NULL,0,0),(443,141,31,'2021-01-17 21:23:29',1,'2021-01-17 21:23:29',1,NULL,0,0),(444,141,32,'2021-01-17 21:23:29',1,'2021-01-17 21:23:29',1,NULL,0,0),(445,141,33,'2021-01-17 21:23:29',1,'2021-01-17 21:23:29',1,NULL,0,0),(446,141,34,'2021-01-17 21:23:29',1,'2021-01-17 21:23:29',1,NULL,0,0),(447,141,35,'2021-01-17 21:23:29',1,'2021-01-17 21:23:29',1,NULL,0,0),(448,141,36,'2021-01-17 21:23:29',1,'2021-01-17 21:23:29',1,NULL,0,0),(449,141,37,'2021-01-17 21:23:29',1,'2021-01-17 21:23:29',1,NULL,0,0),(450,141,38,'2021-01-17 21:23:29',1,'2021-01-17 21:23:29',1,NULL,0,0),(451,141,39,'2021-01-17 21:23:29',1,'2021-01-17 21:23:29',1,NULL,0,0),(452,141,40,'2021-01-17 21:23:29',1,'2021-01-17 21:23:29',1,NULL,0,0),(453,141,41,'2021-01-17 21:23:29',1,'2021-01-17 21:23:29',1,NULL,0,0),(454,28,1,'2021-01-18 09:18:16',1,'2021-01-18 09:18:16',1,NULL,0,0),(455,143,1,'2021-01-18 10:18:18',1,'2021-01-18 10:18:18',1,NULL,0,0),(456,24,10,'2021-01-23 12:34:00',1,'2021-01-23 12:34:00',1,NULL,0,0),(457,24,23,'2021-01-23 12:34:00',1,'2021-01-23 12:34:00',1,NULL,0,0),(458,24,24,'2021-01-23 12:34:00',1,'2021-01-23 12:34:00',1,NULL,0,0),(459,24,25,'2021-01-23 12:34:00',1,'2021-01-23 12:34:00',1,NULL,0,0),(460,24,26,'2021-01-23 12:34:00',1,'2021-01-23 12:34:00',1,NULL,0,0),(461,24,27,'2021-01-23 12:34:00',1,'2021-01-23 12:34:00',1,NULL,0,0),(462,24,28,'2021-01-23 12:34:00',1,'2021-01-23 12:34:00',1,NULL,0,0),(463,24,29,'2021-01-23 12:34:00',1,'2021-01-23 12:34:00',1,NULL,0,0),(464,24,30,'2021-01-23 12:34:00',1,'2021-01-23 12:34:00',1,NULL,0,0),(465,24,31,'2021-01-23 12:34:00',1,'2021-01-23 12:34:00',1,NULL,0,0),(466,24,32,'2021-01-23 12:34:00',1,'2021-01-23 12:34:00',1,NULL,0,0),(467,24,34,'2021-01-23 12:34:00',1,'2021-01-23 12:34:00',1,NULL,0,0),(468,24,35,'2021-01-23 12:34:00',1,'2021-01-23 12:34:00',1,NULL,0,0),(469,24,37,'2021-01-23 12:34:00',1,'2021-01-23 12:34:00',1,NULL,0,0),(470,25,10,'2021-01-23 12:36:22',1,'2021-01-23 12:36:22',1,NULL,0,0),(471,25,23,'2021-01-23 12:36:22',1,'2021-01-23 12:36:22',1,NULL,0,0),(472,25,24,'2021-01-23 12:36:22',1,'2021-01-23 12:36:22',1,NULL,0,0),(473,25,25,'2021-01-23 12:36:22',1,'2021-01-23 12:36:22',1,NULL,0,0),(474,25,26,'2021-01-23 12:36:22',1,'2021-01-23 12:36:22',1,NULL,0,0),(475,25,27,'2021-01-23 12:36:22',1,'2021-01-23 12:36:22',1,NULL,0,0),(476,25,28,'2021-01-23 12:36:22',1,'2021-01-23 12:36:22',1,NULL,0,0),(477,25,29,'2021-01-23 12:36:22',1,'2021-01-23 12:36:22',1,NULL,0,0),(478,25,30,'2021-01-23 12:36:22',1,'2021-01-23 12:36:22',1,NULL,0,0),(479,25,31,'2021-01-23 12:36:22',1,'2021-01-23 12:36:22',1,NULL,0,0),(480,25,32,'2021-01-23 12:36:22',1,'2021-01-23 12:36:22',1,NULL,0,0),(481,25,34,'2021-01-23 12:36:22',1,'2021-01-23 12:36:22',1,NULL,0,0),(482,25,35,'2021-01-23 12:36:22',1,'2021-01-23 12:36:22',1,NULL,0,0),(483,25,37,'2021-01-23 12:36:22',1,'2021-01-23 12:36:22',1,NULL,0,0);
/*!40000 ALTER TABLE `mst_program_kerja_skpd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_program_kerja_wilayah`
--

DROP TABLE IF EXISTS `mst_program_kerja_wilayah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_program_kerja_wilayah` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_program_kerja` int(11) NOT NULL,
  `id_wilayah` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_program_kerja_wilayah`
--

LOCK TABLES `mst_program_kerja_wilayah` WRITE;
/*!40000 ALTER TABLE `mst_program_kerja_wilayah` DISABLE KEYS */;
INSERT INTO `mst_program_kerja_wilayah` VALUES (1,18,4,'2021-01-10 16:37:21',1,'2021-01-10 16:37:21',1,NULL,0,0),(2,19,4,'2021-01-11 04:45:27',1,'2021-01-11 04:45:27',1,NULL,0,0),(3,19,5,'2021-01-11 04:45:27',1,'2021-01-11 04:45:27',1,NULL,0,0),(4,19,6,'2021-01-11 04:45:27',1,'2021-01-11 04:45:27',1,NULL,0,0),(5,20,4,'2021-01-11 06:27:43',1,'2021-01-11 06:27:43',1,NULL,0,0),(6,21,4,'2021-01-11 08:36:38',1,'2021-01-11 08:36:38',1,NULL,0,1),(7,21,5,'2021-01-11 08:36:38',1,'2021-01-11 08:36:38',1,NULL,0,1),(8,21,6,'2021-01-11 08:36:38',1,'2021-01-11 08:36:38',1,NULL,0,1),(9,21,4,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(10,21,4,'2021-01-11 08:41:19',1,'2021-01-11 08:41:19',1,NULL,0,1),(11,21,4,'2021-01-11 08:50:16',1,'2021-01-11 08:50:16',1,NULL,0,1),(12,22,5,'2021-01-11 09:00:26',1,'2021-01-11 09:00:26',1,NULL,0,0),(13,21,4,'2021-01-11 09:01:05',1,'2021-01-11 09:01:05',1,NULL,0,0),(14,23,6,'2021-01-11 09:24:52',1,'2021-01-11 09:24:52',1,NULL,0,0),(15,24,4,'2021-01-11 16:28:54',1,'2021-01-11 16:28:54',1,NULL,0,1),(16,24,5,'2021-01-11 16:28:54',1,'2021-01-11 16:28:54',1,NULL,0,1),(17,24,6,'2021-01-11 16:28:54',1,'2021-01-11 16:28:54',1,NULL,0,1),(18,25,4,'2021-01-11 16:38:45',1,'2021-01-11 16:38:45',1,NULL,0,1),(19,25,5,'2021-01-11 16:38:45',1,'2021-01-11 16:38:45',1,NULL,0,1),(20,25,6,'2021-01-11 16:38:45',1,'2021-01-11 16:38:45',1,NULL,0,1),(21,26,4,'2021-01-11 16:43:16',1,'2021-01-11 16:43:16',1,NULL,0,0),(22,26,5,'2021-01-11 16:43:16',1,'2021-01-11 16:43:16',1,NULL,0,0),(23,26,6,'2021-01-11 16:43:16',1,'2021-01-11 16:43:16',1,NULL,0,0),(24,27,4,'2021-01-11 16:43:16',1,'2021-01-11 16:43:16',1,NULL,0,1),(25,27,5,'2021-01-11 16:43:16',1,'2021-01-11 16:43:16',1,NULL,0,1),(26,27,6,'2021-01-11 16:43:16',1,'2021-01-11 16:43:16',1,NULL,0,1),(27,27,4,'2021-01-11 16:44:17',1,'2021-01-11 16:44:17',1,NULL,0,1),(28,27,5,'2021-01-11 16:44:17',1,'2021-01-11 16:44:17',1,NULL,0,1),(29,27,6,'2021-01-11 16:44:17',1,'2021-01-11 16:44:17',1,NULL,0,1),(30,27,4,'2021-01-11 16:44:17',1,'2021-01-11 16:44:17',1,NULL,0,0),(31,27,5,'2021-01-11 16:44:17',1,'2021-01-11 16:44:17',1,NULL,0,0),(32,27,6,'2021-01-11 16:44:17',1,'2021-01-11 16:44:17',1,NULL,0,0),(33,28,4,'2021-01-11 16:45:57',1,'2021-01-11 16:45:57',1,NULL,0,1),(34,28,5,'2021-01-11 16:45:57',1,'2021-01-11 16:45:57',1,NULL,0,1),(35,28,6,'2021-01-11 16:45:57',1,'2021-01-11 16:45:57',1,NULL,0,1),(36,29,4,'2021-01-11 16:47:57',1,'2021-01-11 16:47:57',1,NULL,0,0),(37,29,5,'2021-01-11 16:47:57',1,'2021-01-11 16:47:57',1,NULL,0,0),(38,29,6,'2021-01-11 16:47:57',1,'2021-01-11 16:47:57',1,NULL,0,0),(39,30,4,'2021-01-11 16:49:13',1,'2021-01-11 16:49:13',1,NULL,0,0),(40,30,5,'2021-01-11 16:49:13',1,'2021-01-11 16:49:13',1,NULL,0,0),(41,30,6,'2021-01-11 16:49:13',1,'2021-01-11 16:49:13',1,NULL,0,0),(42,31,4,'2021-01-11 16:50:35',1,'2021-01-11 16:50:35',1,NULL,0,0),(43,31,5,'2021-01-11 16:50:35',1,'2021-01-11 16:50:35',1,NULL,0,0),(44,31,6,'2021-01-11 16:50:35',1,'2021-01-11 16:50:35',1,NULL,0,0),(45,32,4,'2021-01-11 16:51:54',1,'2021-01-11 16:51:54',1,NULL,0,0),(46,32,5,'2021-01-11 16:51:54',1,'2021-01-11 16:51:54',1,NULL,0,0),(47,32,6,'2021-01-11 16:51:54',1,'2021-01-11 16:51:54',1,NULL,0,0),(48,33,6,'2021-01-11 16:53:54',1,'2021-01-11 16:53:54',1,NULL,0,0),(49,34,6,'2021-01-11 16:54:51',1,'2021-01-11 16:54:51',1,NULL,0,0),(50,41,4,'2021-01-11 17:12:59',1,'2021-01-11 17:12:59',1,NULL,0,0),(51,42,4,'2021-01-11 17:14:29',1,'2021-01-11 17:14:29',1,NULL,0,0),(52,43,4,'2021-01-11 17:16:58',1,'2021-01-11 17:16:58',1,NULL,0,0),(53,44,4,'2021-01-11 17:19:37',1,'2021-01-11 17:19:37',1,NULL,0,0),(54,45,4,'2021-01-11 17:20:39',1,'2021-01-11 17:20:39',1,NULL,0,0),(55,46,4,'2021-01-11 17:22:00',1,'2021-01-11 17:22:00',1,NULL,0,0),(56,47,4,'2021-01-11 17:24:30',1,'2021-01-11 17:24:30',1,NULL,0,0),(57,48,4,'2021-01-11 17:26:01',1,'2021-01-11 17:26:01',1,NULL,0,0),(58,49,5,'2021-01-11 17:28:08',1,'2021-01-11 17:28:08',1,NULL,0,0),(59,50,5,'2021-01-11 17:29:48',1,'2021-01-11 17:29:48',1,NULL,0,0),(60,52,5,'2021-01-11 17:33:37',1,'2021-01-11 17:33:37',1,NULL,0,0),(61,53,5,'2021-01-11 17:33:37',1,'2021-01-11 17:33:37',1,NULL,0,0),(62,54,5,'2021-01-11 17:36:42',1,'2021-01-11 17:36:42',1,NULL,0,0),(63,55,5,'2021-01-11 17:37:54',1,'2021-01-11 17:37:54',1,NULL,0,0),(64,57,6,'2021-01-11 17:40:08',1,'2021-01-11 17:40:08',1,NULL,0,1),(65,57,6,'2021-01-11 17:40:29',1,'2021-01-11 17:40:29',1,NULL,0,0),(66,58,6,'2021-01-11 17:41:22',1,'2021-01-11 17:41:22',1,NULL,0,0),(67,59,6,'2021-01-11 17:42:14',1,'2021-01-11 17:42:14',1,NULL,0,0),(68,60,4,'2021-01-11 18:07:48',1,'2021-01-11 18:07:48',1,NULL,0,0),(69,61,7,'2021-01-11 18:44:59',1,'2021-01-11 18:44:59',1,NULL,0,0),(70,62,7,'2021-01-11 19:00:49',1,'2021-01-11 19:00:49',1,NULL,0,0),(71,63,7,'2021-01-11 19:24:10',1,'2021-01-11 19:24:10',1,NULL,0,0),(72,64,7,'2021-01-11 19:25:11',1,'2021-01-11 19:25:11',1,NULL,0,0),(73,65,7,'2021-01-11 19:27:08',1,'2021-01-11 19:27:08',1,NULL,0,0),(74,66,7,'2021-01-11 19:29:24',1,'2021-01-11 19:29:24',1,NULL,0,1),(75,67,7,'2021-01-11 19:30:29',1,'2021-01-11 19:30:29',1,NULL,0,0),(76,66,7,'2021-01-11 19:30:53',1,'2021-01-11 19:30:53',1,NULL,0,0),(77,68,7,'2021-01-11 19:31:43',1,'2021-01-11 19:31:43',1,NULL,0,0),(78,69,7,'2021-01-11 19:32:31',1,'2021-01-11 19:32:31',1,NULL,0,0),(79,70,7,'2021-01-11 19:33:15',1,'2021-01-11 19:33:15',1,NULL,0,0),(80,71,7,'2021-01-11 19:33:59',1,'2021-01-11 19:33:59',1,NULL,0,0),(81,72,7,'2021-01-11 19:34:43',1,'2021-01-11 19:34:43',1,NULL,0,0),(82,73,7,'2021-01-11 19:35:31',1,'2021-01-11 19:35:31',1,NULL,0,0),(83,74,7,'2021-01-11 19:36:26',1,'2021-01-11 19:36:26',1,NULL,0,0),(84,75,7,'2021-01-11 19:37:20',1,'2021-01-11 19:37:20',1,NULL,0,0),(85,76,7,'2021-01-11 19:38:31',1,'2021-01-11 19:38:31',1,NULL,0,0),(86,77,7,'2021-01-11 19:39:28',1,'2021-01-11 19:39:28',1,NULL,0,0),(87,78,7,'2021-01-11 19:41:06',1,'2021-01-11 19:41:06',1,NULL,0,0),(88,79,7,'2021-01-11 19:41:06',1,'2021-01-11 19:41:06',1,NULL,0,0),(89,80,7,'2021-01-11 19:42:00',1,'2021-01-11 19:42:00',1,NULL,0,0),(90,81,7,'2021-01-11 19:45:32',1,'2021-01-11 19:45:32',1,NULL,0,0),(91,82,7,'2021-01-11 19:46:15',1,'2021-01-11 19:46:15',1,NULL,0,0),(92,83,7,'2021-01-11 19:47:00',1,'2021-01-11 19:47:00',1,NULL,0,0),(93,84,7,'2021-01-11 19:47:45',1,'2021-01-11 19:47:45',1,NULL,0,0),(94,85,7,'2021-01-11 19:49:09',1,'2021-01-11 19:49:09',1,NULL,0,0),(95,86,7,'2021-01-11 19:52:19',1,'2021-01-11 19:52:19',1,NULL,0,0),(96,87,7,'2021-01-11 19:53:20',1,'2021-01-11 19:53:20',1,NULL,0,0),(97,88,7,'2021-01-11 19:54:48',1,'2021-01-11 19:54:48',1,NULL,0,0),(98,89,7,'2021-01-11 19:55:43',1,'2021-01-11 19:55:43',1,NULL,0,0),(99,90,7,'2021-01-11 19:56:35',1,'2021-01-11 19:56:35',1,NULL,0,0),(100,104,9,'2021-01-11 20:34:18',1,'2021-01-11 20:34:18',1,NULL,0,1),(101,104,9,'2021-01-11 20:36:17',1,'2021-01-11 20:36:17',1,NULL,0,1),(102,104,9,'2021-01-11 20:36:17',1,'2021-01-11 20:36:17',1,NULL,0,0),(103,105,9,'2021-01-11 20:36:59',1,'2021-01-11 20:36:59',1,NULL,0,0),(104,106,9,'2021-01-11 20:38:21',1,'2021-01-11 20:38:21',1,NULL,0,0),(105,107,9,'2021-01-11 20:45:28',1,'2021-01-11 20:45:28',1,NULL,0,0),(106,108,9,'2021-01-11 20:45:28',1,'2021-01-11 20:45:28',1,NULL,0,0),(107,109,9,'2021-01-11 20:46:21',1,'2021-01-11 20:46:21',1,NULL,0,0),(108,110,9,'2021-01-11 20:47:11',1,'2021-01-11 20:47:11',1,NULL,0,0),(109,111,9,'2021-01-11 20:51:22',1,'2021-01-11 20:51:22',1,NULL,0,0),(110,112,9,'2021-01-11 20:52:01',1,'2021-01-11 20:52:01',1,NULL,0,0),(111,113,9,'2021-01-11 20:52:37',1,'2021-01-11 20:52:37',1,NULL,0,0),(112,114,9,'2021-01-11 20:54:09',1,'2021-01-11 20:54:09',1,NULL,0,0),(113,115,9,'2021-01-11 20:55:24',1,'2021-01-11 20:55:24',1,NULL,0,0),(114,116,9,'2021-01-11 20:56:16',1,'2021-01-11 20:56:16',1,NULL,0,0),(115,117,9,'2021-01-11 21:08:51',1,'2021-01-11 21:08:51',1,NULL,0,0),(116,118,9,'2021-01-11 21:10:23',1,'2021-01-11 21:10:23',1,NULL,0,0),(117,119,9,'2021-01-11 21:11:28',1,'2021-01-11 21:11:28',1,NULL,0,0),(118,120,9,'2021-01-12 08:50:49',1,'2021-01-12 08:50:49',1,NULL,0,0),(119,121,9,'2021-01-12 08:50:49',1,'2021-01-12 08:50:49',1,NULL,0,0),(120,122,9,'2021-01-12 08:51:45',1,'2021-01-12 08:51:45',1,NULL,0,0),(121,123,9,'2021-01-12 08:52:13',1,'2021-01-12 08:52:13',1,NULL,0,0),(122,124,9,'2021-01-12 08:53:52',1,'2021-01-12 08:53:52',1,NULL,0,1),(123,125,9,'2021-01-12 08:55:01',1,'2021-01-12 08:55:01',1,NULL,0,0),(124,124,9,'2021-01-12 08:55:20',1,'2021-01-12 08:55:20',1,NULL,0,0),(125,126,9,'2021-01-12 08:56:00',1,'2021-01-12 08:56:00',1,NULL,0,0),(126,127,9,'2021-01-12 08:56:49',1,'2021-01-12 08:56:49',1,NULL,0,1),(127,128,9,'2021-01-12 08:57:34',1,'2021-01-12 08:57:34',1,NULL,0,1),(128,129,9,'2021-01-12 08:58:00',1,'2021-01-12 08:58:00',1,NULL,0,1),(129,130,9,'2021-01-12 09:08:00',1,'2021-01-12 09:08:00',1,NULL,0,1),(130,131,9,'2021-01-12 09:08:00',1,'2021-01-12 09:08:00',1,NULL,0,0),(131,130,9,'2021-01-12 09:43:35',1,'2021-01-12 09:43:35',1,NULL,0,1),(132,130,9,'2021-01-12 09:43:35',1,'2021-01-12 09:43:35',1,NULL,0,1),(133,137,9,'2021-01-12 10:01:48',1,'2021-01-12 10:01:48',1,NULL,0,0),(134,138,4,'2021-01-12 10:42:53',1,'2021-01-12 10:42:53',1,NULL,0,0),(135,139,7,'2021-01-13 14:29:26',1,'2021-01-13 14:29:26',1,NULL,0,0),(136,140,4,'2021-01-17 21:06:03',1,'2021-01-17 21:06:03',1,NULL,0,0),(137,142,4,'2021-01-17 21:30:09',1,'2021-01-17 21:30:09',1,NULL,0,0),(138,28,4,'2021-01-18 09:18:16',1,'2021-01-18 09:18:16',1,NULL,0,0),(139,28,5,'2021-01-18 09:18:16',1,'2021-01-18 09:18:16',1,NULL,0,0),(140,28,6,'2021-01-18 09:18:16',1,'2021-01-18 09:18:16',1,NULL,0,0),(141,143,4,'2021-01-18 10:18:18',1,'2021-01-18 10:18:18',1,NULL,0,0),(142,24,4,'2021-01-23 12:34:00',1,'2021-01-23 12:34:00',1,NULL,0,0),(143,24,5,'2021-01-23 12:34:00',1,'2021-01-23 12:34:00',1,NULL,0,0),(144,24,6,'2021-01-23 12:34:00',1,'2021-01-23 12:34:00',1,NULL,0,0),(145,25,4,'2021-01-23 12:36:22',1,'2021-01-23 12:36:22',1,NULL,0,0),(146,25,5,'2021-01-23 12:36:22',1,'2021-01-23 12:36:22',1,NULL,0,0),(147,25,6,'2021-01-23 12:36:22',1,'2021-01-23 12:36:22',1,NULL,0,0),(148,144,4,'2021-01-25 10:30:53',1,'2021-01-25 10:30:53',1,NULL,0,0),(149,145,4,'2021-01-25 10:30:53',1,'2021-01-25 10:30:53',1,NULL,0,0);
/*!40000 ALTER TABLE `mst_program_kerja_wilayah` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_sasaran`
--

DROP TABLE IF EXISTS `mst_sasaran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_sasaran` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_program_kerja` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=297 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_sasaran`
--

LOCK TABLES `mst_sasaran` WRITE;
/*!40000 ALTER TABLE `mst_sasaran` DISABLE KEYS */;
INSERT INTO `mst_sasaran` VALUES (1,'1. Penyusunan dan Pelaporan Inspektorat Daerah',0,0),(2,'Penyusunan Laporan Penyelenggaraan Pemerintahan Daerah (LPPD) 2020',0,1),(3,'Penyusunan Laporan Kinerja Instansi Pemerintah (LKIP) 2020',0,1),(4,'Penyusunan Laporan Keterangan Pertanggungjawaban (LKPJ) 2020',0,1),(5,'Penyusunan Rencana Kerja 2021',0,1),(6,'REVIU PERENCANAAN DAN ANGGARAN',0,1),(7,'II.',0,1),(8,'a',0,1),(9,'Penyusunan Evaluasi Kinerja Penyelenggaraan Pemerintahan Daerah (EKPPD)',0,1),(10,'Penyusunan Realisasi Anggaran  dan Kinerja (Tepra)',0,1),(11,'Penyusunan Laporan Hasil Pengawasan Semester',0,1),(12,'Penyusunan Laporan  Triwulanan penyerapan anggaran dan kinerja sesuai Program dan Kegiatan',0,1),(13,'Penyusunan Risk Register Inspektorat',0,1),(14,'2. REVIU PERENCANAAN DAN ANGGARAN',0,0),(15,'RKPD Tahun 2021',0,1),(16,'RKPD Perubahan Tahun 2020',0,1),(17,'Renja Perangkat Daerah Tahun 2021',0,1),(18,'KUA PPAS',0,1),(19,'RKA PD 2021',0,1),(20,'3. REVIU LAPORAN KEUANGAN DAERAH (LKPD)',0,0),(21,'Laporan Keuangan Pemerintah Daerah (LKPD) Tahun 2019',0,1),(22,'4. REVIU PENGELOLAAN ANGGARAN',0,0),(23,'Penyerapan Anggaran Keuangan Perangkat Daerah di Badan Keuangan dan Aset Daerah dan Bagian Pengadaan Barang dan Jasa Setda',0,1),(24,'5. REVIU DANA ALOKASI KHUSUS',0,0),(25,'DAK 2019',0,0),(26,'DAK 2020 Tahap I, II , III',0,0),(27,'6. AKUNTABILITAS KINERJA INSTANSI PEMERINTAH (AKIP)',0,0),(28,'Reviu LAKIP tingkat Kota',0,0),(29,'Evaluasi SAKIP Perangkat Daerah Tahun 2019',0,0),(30,'Pembinaan Sistem Akuntabilitas Kinerja Instansi Pemerintahan (SAKIP)',0,0),(31,'7. PEMERIKSAAN DENGAN TUJUAN TERTENTU',0,0),(32,'Atas ketaatan pelaksanaan Pengadaan Barang dan Jasa pada Bagian Umum Setda Kota Bogor',0,0),(33,'Atas Pengelolaan Aset (Penggunaan Tanah Atau Bangunan  Yang Dikuasai Oleh Pihak Lain) pada Badan Keuangan dan Aset Daerah',0,0),(34,'Atas Pendapatan Pajak Restoran pada Badan Pendapatan Daerah',0,0),(35,'Atas Belanja Belanja Perjalanan Dinas Dalam dan Luar Daerah pada Sekretariat Dewan dan Dinas Pekerjaan Umum dan Penataan Ruang',0,0),(36,'Atas Aspek Keuangan Tertentu pada Dinas Sosial Realisasi Anggaran Kegiatan Tahun 2019 dan Sistim Pengendalian Internal (SPI)',0,0),(37,'Atas Ketaatan atas Perjalanan Dinas pada Badan Perencanaan Daerah',0,0),(38,'8. AUDIT KEUANGAN',0,0),(39,'Atas Pengelolaan Dana Bantuan Operasional Sekolah (BOS) pada Dinas Pendidikan',0,0),(40,'Stock Kas Opname',0,0),(41,'9. PEMERIKSAAN KINERJA',0,0),(42,'Atas Pelayanan dan Pengelolaan Kearsipan dan Perpustakaan pada Dinas Kerasipan dan Perpustakaan Daerah',0,0),(43,'Atas Pengelolaan Persampahan pada Dinas Lingkungan Hidup Kota Bogor',0,0),(44,'Atas Pengeloaan Aset Dan Kewajiban Pada Dinas Pemuda dan Olah Raga Kota Bogor',0,0),(45,'Atas Pelayanan Administrasi Kependudukan pada Dinas Kependudukan dan Catatan Sipil',0,0),(46,'Atas Pelayanan Kesehatan Ibu dan Anak pada Puskesmas Tanah Sareal',0,0),(47,'Atas Penyelenggaraan Terminal Tipe-C pada Dinas Perhubungan',0,0),(48,'10. MONITORING',0,0),(49,'Mal Pelayanan Publik',0,0),(50,'Pembangunan Sarana Olah Raga Setiap Kecamatan pada Dinas Pemuda dan Olah Raga Kota Bogor',0,0),(51,'SPM Pendidikan Inklusi pada Dinas Pendidikan',0,0),(52,'Sekolah Ibu di Kec. Bogor Tengah dan Kec. Bogor Barat',0,0),(53,'Sekolah Ibu di Kec. Tanah Sareal dan Kec. Bogor Timur',0,0),(54,'Sekolah Ibu di Kec. Bogor Utara dan Kec. Bogor Selatan',0,0),(55,'Rumah Tidak Layak Huni (RTLH) di Kec. Bogor Selatan dan Kec. Bogor Utara',0,0),(56,'Rumah Tidak Layak Huni (RTLH) di Kec. Tanah Sareal dan Kec. Bogor Timur',0,0),(57,'Rumah Tidak Layak Huni (RTLH) di Kec. Bogor Tengah dan Kec. Bogor Barat',0,0),(58,'Pembangunan Pusat Kuliner di setiap Kecamatan',0,0),(59,'Kampung KB pada Dinas Pengendalian Penduduk dan Keluarga Berencana',0,0),(60,'Penyertaan Modal pada BUMD',0,0),(61,'Kunjungan Dokter Ke Keluarga',0,0),(62,'Penataan Kawasan Stasiun Kereta Api (PKL)',0,0),(63,'Menciptakan Lapangan Kerja pada Dinas Tenaga Kerja dan Transmigrasi',0,0),(64,'Pajak dan Retribusi Daerah pada DPUPR dan Dishub',0,0),(65,'DAU Kelurahan',0,0),(66,'SPJ Belanja BLUD pada Rumah Sakit Umum Daerah',0,0),(67,'Kampung Tematik (Kel Mulyaharja dan Kel  Babakan Pasar)',0,0),(68,'Pajak Pusat pada Kec. Bogor Utara dan Badan Kesatuan Bangsa dan Politik',0,0),(69,'Pajak Pusat pada Dinas Ketahanan Pangan dan Pertanian dan Kecamatan Bogor Selatan',0,0),(70,'Pajak Pusat pada Dinas Perindustrian dan Perdagangan dan Satuan Polisi Pamong Praja',0,0),(71,'Pajak Pusat pada Kecamatan Bogor Tengah dan Badan Penanggulangan Bencana Daerah',0,0),(72,'Pajak Pusat pada Dinas Tenaga Kerja dan Transmigrasi, Dinas Komunikasi dan Informatika, Badan Kepegawaian Pendidikan dan Sumber Daya Manusia; Dinas Kesehatan Kota)',0,0),(73,'Keuangan dan Pengelolaan Aset Tetap Perusahaan Daerah Jasa Transportasi (PDJT)',0,0),(74,'SPJ Kegiatan Non DAU (PD dan Kelurahan) untuk semua PPTK',0,0),(75,'Reformasi Birokrasi pada seluruh Perangkat Daerah yang akan dilakukan penilaian',0,0),(76,'Pelaksanaan Perjanjian Kerja Waktu Tertentu (PKWT) pada Dinas Lingkungan Hidup',0,0),(77,'Pemantauan atas DED Eks Gedung DPRD pada Dinas Kerasipan dan Perpustakaan',0,0),(78,'Aset dan Persediaan',0,0),(79,'11. EVALUASI',0,0),(80,'Pengelolaan Merger Dinas',0,0),(81,'Perencanaan dan Penganggaran yang Berbasis Gender (PPRG) pada Dinas Pemberdayaan Masyarakat Perempuan dan Perlindungan Anak',0,0),(82,'12. PEMUTAKHIRAN DATA HASIL PEMERIKSAAN',0,0),(83,'Pemantauan Tindaklanjut Hasil Pemeriksaan (LHP) Inspektorat Kota Bogor',0,0),(84,'Penyusunan Rekapitulasi Tindaklanjut Hasil Pemeriksaan (LHP) BPK-RI dan Inspektorat Provinsi Jawa Barat',0,0),(85,'Pembahasan Hasil Tindaklanjut Hasil Pemeriksaan (LHP) Ke BPK-RI dan Inspektorat Provinsi Jawa Barat',0,0),(86,'Penyusunan rekapitulasi Tindaklanjut Hasil Pemeriksaan (LHP) BPK-RI dan Inspektorat Provinsi Jawa Barat',0,0),(87,'13. VERIFIKASI LHKASN (LAPORAN HASIL KEKAYAAN APARATUR SIPIL NEGARA)',0,0),(88,'Laporan Harta Kekayaan Aparatur Sipil Negara (LHKASN)',0,0),(89,'14. SISTEM PENGENDALIAN INTERN PEMERINTAH (SPIP)',0,0),(90,'SPIP',0,0),(91,'Risk Register OPD 2020 lingkup Irban',0,0),(92,'Risk Register  Tahun 2021 untuk 36 PD',0,0),(93,'15. PROBITY AUDIT',0,0),(94,'Atas Pembangunan Jalur Pedestrian',0,0),(95,'Atas Pembangunan Revitalisasi Perpustakaan Kota (bekas Gedung DPRD)',0,0),(96,'16. KAPABILITAS APIP',0,0),(97,'Penyusunan PKPT',0,0),(98,'Penyusunan Audit Universe dan Peta Auditan',0,0),(99,'Penyusunan dan Evaluasi Dokumen NSPK',0,0),(100,'Pelatihan di Kantor Sendiri (PKS) / PPSDM',0,0),(101,'a. Reviu DAK dan Reviu RKPD',0,0),(102,'b. Pemeriksaan Kinerja',0,0),(103,'c. Reviu Risk Register',0,0),(104,'d. Reviu DAK',0,0),(105,'e. Perencanaan dan Penganggaran yang Berbasis Gender (Responsive Gender) / PPRG',0,0),(106,'f. KUA PPAS',0,0),(107,'g. Dana Alokasi Umum (DAU)',0,0),(108,'h. Sosialisasi Manajemen Risiko',0,0),(109,'Sharing pengetahuan antar Auditor / P2UPD / Audiwan lingkup Inspektorat untuk peningkatan kompetensi',0,0),(110,'Sertifikasi Profesi',0,0),(111,'17. MONITORING KORDINASI SUPERVISI PENCEGAHAN DAN PEMBERANTASAN KORUPSI',0,0),(112,'Penyusunan Rencana Aksi (Renaksi) Kota Bogor',0,0),(113,'Monitoring Centre for Prevention (MCP) dan Rencana Aksi (Renaksi) KPK',0,0),(114,'18. PEMBINAAN',0,0),(115,'SPJ Kegiatan Non Dana Alokasi Umum (Non DAU) (PD dan Kelurahan) untuk semua PPTK',0,0),(116,'Dana Alokasi Umum (DAU) Kelurahan',0,0),(117,'Sosialisasi Peraturan terkait Dana Alokasi Umum (DAU) Kelurahan',0,0),(118,'19. PEMBANGUNAN ZONA INTEGRITAS KOTA BOGOR DAN MONITORING AKSI PENCEGAHAN DAN PEMBERANTASAN KORUPSI',0,0),(119,'Penilaian Zona Integritas menuju WBK / WBBM pada 8 PD (Inspektorat, Bapenda, Dinkes, DPMPTSP, Disdukcapil, Setda, BKPSDM, RSUD)',0,0),(120,'20. NON PKPT',0,0),(121,'Pengumpulan  Bahan LPPD',0,0),(122,'Penyusunan Cascading Inspektur, Sekretaris dan Kasubag',0,0),(123,'Penyusunan Perjanjian Kinerja Inspektur, Sekretaris, Kasubag Tahun 2020, Eselon 2 , 3 dan 4',0,0),(124,'Penyusunan Kompilasi Program Kerja Pengawasan Tahunan  Tahun 2021',0,0),(125,'Pembahasan Renja di Bappeda untuk masuk dalam RKPD',0,0),(126,'Pemeriksaan Khusus (non PKPT)',0,0),(127,'Pengaduan Masyarakat',0,0),(128,'Instruksi Wali Kota',0,0),(129,'Audit Keuangan Tujuan Tertentu',0,0),(130,'sasaran',0,1),(131,'sasaraan',0,1),(132,'sasaran',0,0),(133,'sasaraan',0,0),(134,'ini sasaran',0,0),(135,'sasaran lain',0,0),(136,'tes tes',0,1),(137,'tes tes',0,1),(138,'test wadadaw',0,0),(139,'sasaran 1',0,1),(140,'sasaran 2',0,1),(141,'sasaran 3',0,1),(142,'sasaran 1',0,1),(143,'sasaran 2',0,1),(144,'sasaran 3',0,1),(145,'sasaran 1',0,1),(146,'sasaran 2',0,1),(147,'sasaran baru',0,1),(148,'sasaran lama',0,1),(149,'sasaran 1',0,0),(150,'sasaran 1',0,0),(151,'sasaran 2',0,0),(152,'sasaran 3',0,0),(153,'sasaran 1',0,0),(154,'sasaran 2',0,0),(155,'sasaran 3',0,0),(156,'sasaran baru',0,0),(157,'sasaran terbaru',0,0),(158,'sasaran 1',0,0),(159,'sasaran 2',0,0),(160,'sasaran 3',0,0),(161,'sasaran 1',0,1),(162,'sasaran 2',0,1),(163,'sasaran 3',0,1),(164,'sasaran 1',0,0),(165,'sasaran 2',0,0),(166,'sasaran 1',0,0),(167,'sasaran 1',0,0),(168,'sasaran 2',0,0),(169,'sasaran 3',0,0),(170,'sasaran 1',0,1),(171,'sasaran 2',0,1),(172,'sasaran 3',0,1),(173,'Mengawasi Kelas 9 SMPN 19 Kota Bogor',0,1),(174,'sasaran awal',0,0),(175,'sasaran kedua',0,0),(176,'Sasaran 1',0,1),(177,'Sasaran 2',0,1),(178,'sasaran 1',0,1),(179,'sasaran 2',0,1),(180,'sasaran 3',0,1),(181,'sasaran 1',0,0),(182,'sasaran 2',0,0),(183,'sasaran 3',0,0),(184,'Ini sasaran Kegiatan',0,0),(185,'sasaran 1',0,0),(186,'sasaran 2',0,0),(187,'sasaran 3',0,0),(188,'Sasaran 1',0,1),(189,'Sasaran 2',0,1),(190,'asd',0,1),(191,'ddd',0,1),(192,'www',0,1),(193,'asd',0,1),(194,'ddd',0,1),(195,'www',0,1),(196,'ssrn 1',0,1),(197,'ssrn 2',0,1),(198,'asd',0,0),(199,'ddd',0,0),(200,'www',0,0),(201,'ssrn 1',0,1),(202,'ssrn 2',0,1),(203,'ssrn 1',0,0),(204,'ssrn 2',0,0),(205,'sasaran 1',27,1),(206,'sasaran 2',27,1),(207,'sasaran 1',27,1),(208,'sasaran 2',27,1),(209,'sasaran terbaru',27,1),(210,'Sasaran 1',28,1),(211,'Sasaran 2',28,1),(212,'sasaran baru',29,1),(213,'sasaran baru lagi',29,1),(214,'sasaran baru',29,1),(215,'sasaran baru lagi',29,1),(216,'sasaran baru',29,1),(217,'sasaran baru lagi',29,1),(218,'sasaran baru',29,1),(219,'sasaran baru lagi',29,1),(220,'sasaran baru',29,1),(221,'sasaran baru lagi',29,1),(222,'pengawasan 1',30,1),(223,'pengawasan 2',30,1),(224,'pengawasan 3',30,1),(225,'sasaran pertama',1,1),(226,'sasaran kedua',1,1),(227,'sasaran ketiga',1,1),(228,'ke 1',2,1),(229,'ke 2',2,1),(230,'ke 3',2,1),(231,'Sasaran ke 1',3,1),(232,'Sasaran ke 2',3,1),(233,'Sasaran ke 3',3,1),(234,'Sasaran ke 1',4,1),(235,'Sasaran ke 2',4,1),(236,'Sasaran ke 3',4,1),(237,'123123',5,1),(238,'123123',6,1),(239,'123123',7,1),(240,'123123',8,1),(241,'123123',9,1),(242,'123123',10,1),(243,'123123',11,1),(244,'123123',12,1),(245,'123123',13,1),(246,'123123',14,1),(247,'123123',15,1),(248,'Sasaran ke 1',4,1),(249,'Sasaran ke 2',4,1),(250,'Sasaran ke 3',4,1),(251,'Sasaran ke 1',4,1),(252,'Sasaran ke 1',4,1),(253,'Sasaran ke 2',4,1),(254,'Sasaran ke 3',4,1),(255,'Sasaran ke 2',4,1),(256,'Sasaran ke 3',4,1),(257,'Sasarann Contoh 1',16,1),(258,'Sasaran Contoh 2',16,1),(259,'Sasarann Contoh 1',16,1),(260,'Sasaran Contoh 2',16,1),(261,'Sasarann Contoh 1',16,1),(262,'Sasarann Contoh 1',16,1),(263,'Sasaran Contoh 2',16,1),(264,'Sasaran Contoh 2',16,1),(265,'Sasarann Contoh 1',16,1),(266,'Sasaran Contoh 2',16,1),(267,'Contoh Sasaran 1',17,1),(268,'Contoh Sasaran 2',17,1),(269,'Memeriksa PBJ',4,1),(270,'Sasaran ke 2',4,1),(271,'Sasaran ke 3',4,1),(272,'Sasaran ke 2',4,1),(273,'Sasaran ke 3',4,1),(274,'melaksanakan review',50,0),(275,'melaksanakan review terbaru',51,0),(276,'tes sasaran',1,1),(277,'tes sasaran',1,0),(278,'Pengelolaan Parkir',2,0),(279,'Pengelolaan Pelayanan Kearsipan',3,0),(280,'Pengelolaan Pelayanan Kearsipan',4,0),(281,'Pengelolaan Pelayanan Kearsipan',5,0),(282,'Perencanaan Penyelenggaraan Responsif Gender (PPRG)',6,0),(283,'Kelurahan Destinasi Wisata (pelaksanaan kegiatan) : 1. Kel. Mulyaharja (wisata alam) 2. Kel. Sukaresmi (camping ground dan ecoriparian)',7,1),(284,'Kelurahan Destinasi Wisata (pelaksanaan kegiatan) : 1. Kel. Mulyaharja (wisata alam)',7,1),(285,'Kelurahan Destinasi Wisata (pelaksanaan kegiatan) : 1. Kel. Mulyaharja (wisata alam)',7,0),(286,'2. Kel. Sukaresmi (camping ground dan ecoriparian)',7,0),(287,'Kegiatan yang terkait dengan pembumian nilai- nilai pancasila di daerah',8,0),(288,'PROGRAM PENGELOLAAN PERSAMPAHAN, KEGIATAN Pengelolaan Sampah, SUB KEGIATAN Pengurangan Sampah dengan melakukan Pembatasan, Pendauran Ulang dan Pemanfaatan Kembali',9,0),(289,'Program Pengendalian Pencemaran Dan/Atau Kerusakan Lingkungan Hidup',10,0),(290,'Program Pengendalian Pencemaran Dan/Atau Kerusakan Lingkungan Hidup',11,0),(291,'Pelayanan IT',12,0),(292,'Pelayanan Pembinaan Koperasi',13,0),(293,'KUPA PPAS',14,0),(294,'contoh sasaran',15,0),(295,'contoh sasaran 2',16,0),(296,'menidentifikasi',17,0);
/*!40000 ALTER TABLE `mst_sasaran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_sasaran_tujuan`
--

DROP TABLE IF EXISTS `mst_sasaran_tujuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_sasaran_tujuan` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_sasaran_tujuan`
--

LOCK TABLES `mst_sasaran_tujuan` WRITE;
/*!40000 ALTER TABLE `mst_sasaran_tujuan` DISABLE KEYS */;
INSERT INTO `mst_sasaran_tujuan` VALUES (1,'Dasar Pemeriksaan Tujuan Tertentu',NULL,0,NULL,0,NULL,0,0),(2,'Ruang Lingkup',NULL,0,NULL,0,NULL,0,0),(3,'Tujuan Audit',NULL,0,NULL,0,NULL,0,0),(4,'Metodelogi Audit',NULL,0,NULL,0,NULL,0,0),(5,'Tahapan Audit',NULL,0,NULL,0,NULL,0,0);
/*!40000 ALTER TABLE `mst_sasaran_tujuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_satuan`
--

DROP TABLE IF EXISTS `mst_satuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_satuan` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_satuan`
--

LOCK TABLES `mst_satuan` WRITE;
/*!40000 ALTER TABLE `mst_satuan` DISABLE KEYS */;
INSERT INTO `mst_satuan` VALUES (1,'buku'),(2,'lembar'),(3,'OJ');
/*!40000 ALTER TABLE `mst_satuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_skpd`
--

DROP TABLE IF EXISTS `mst_skpd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_skpd` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `singkatan_pd` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pimpinan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_wilayah` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_skpd`
--

LOCK TABLES `mst_skpd` WRITE;
/*!40000 ALTER TABLE `mst_skpd` DISABLE KEYS */;
INSERT INTO `mst_skpd` VALUES (1,'Dinas Perhubungan',NULL,'H. Eko Prabowo, A.P., M.Si.',4,'2021-01-04 15:34:53','2021-01-04 15:34:53',0,57,57,NULL,0),(2,'Dinas Perhubungan',NULL,'H. Eko Prabowo, A.P., M.Si.',4,'2021-01-04 15:34:53','2021-01-04 15:35:06',1,57,57,'2021-01-04 15:35:06',57),(3,'Dinas Pendidikan',NULL,'Fahrudin, S.Pd.',4,'2021-01-04 15:36:09','2021-01-04 15:36:09',0,57,57,NULL,0),(4,'Dinas Pemberdayaan Perempuan & Perlindungan Anak',NULL,'Iceu Pujiati, S.H, M.M',4,'2021-01-04 15:39:44','2021-01-04 15:39:44',0,57,57,NULL,0),(5,'Dinas arsip dan Perpustakaan',NULL,'Drs. Agung Prihanto',4,'2021-01-04 15:41:12','2021-01-05 08:10:08',0,57,57,NULL,0),(6,'Dinas Ketahanan Pangan dan Pertanian',NULL,'Drs. Anas S. Rasmana, M.M.',4,'2021-01-04 15:43:00','2021-01-04 15:43:00',0,57,57,NULL,0),(7,'Dinas Pekerjaan Umum dan Penataan Ruang',NULL,'Ir. H. Chusnul Rozaqi, M.M.',4,'2021-01-04 15:44:41','2021-01-04 15:44:41',0,57,57,NULL,0),(8,'Dinas Pariwisata dan Kebudayaan',NULL,'Atep Budiman, S.STP.,MM.',4,'2021-01-04 15:46:29','2021-01-04 15:46:29',0,57,57,NULL,0),(9,'Badan Kesatuan Bangsa dan Politik',NULL,'Drs. Dadang Sugiarta, M.Si.',4,'2021-01-04 15:48:13','2021-01-04 15:48:13',0,57,57,NULL,0),(10,'Kecamatan Bogor Selatan',NULL,'Hidayatulloh, S.P., M.Si.',6,'2021-01-04 15:49:08','2021-01-04 15:49:08',0,57,57,NULL,0),(11,'Kecamatan Bogor Utara',NULL,'Marse Hendra Saputra, S.STP.',4,'2021-01-04 15:50:00','2021-01-04 15:50:00',0,57,57,NULL,0),(12,'Badan Perencanaan Pembangunan Daerah',NULL,'Drs. Hanafi, M,Si',5,'2021-01-04 15:51:42','2021-01-04 15:51:42',0,57,57,NULL,0),(13,'Dinas Penanaman Modal dan Pelayanan Terpadu Satu Pintu',NULL,'Drs. Firdaus, M.Si',5,'2021-01-04 15:52:58','2021-01-04 15:52:58',0,57,57,NULL,0),(14,'Sekretariat Daerah',NULL,'Dr. Ir. Hj. Syarifah Sofiah D., M.Si.',5,'2021-01-04 15:56:24','2021-01-04 15:56:24',0,57,57,NULL,0),(15,'Sekretariat DPRD',NULL,'Boris Derurasman, SH, Sp.N, MH',4,'2021-01-04 15:58:32','2021-01-04 15:58:32',0,57,57,NULL,0),(16,'Satuan Polisi Pamong Praja',NULL,'Agustian Syah, S.STP.',5,'2021-01-04 16:00:11','2021-01-04 16:00:11',0,57,57,NULL,0),(17,'Dinas Sosial',NULL,'Hj. Anggraeny Iswara, S.H.',5,'2021-01-04 16:02:19','2021-01-04 16:02:19',0,57,57,NULL,0),(18,'Dinas Perdagangan dan Perindustrian',NULL,'Ganjar Gunawan, A.P',5,'2021-01-04 16:03:36','2021-01-05 08:09:44',0,57,57,NULL,0),(19,'Dinas Pemuda dan Olah Raga',NULL,'Drs. Herry Karnadi, M.Si.',5,'2021-01-04 16:04:45','2021-01-04 16:04:45',0,57,57,NULL,0),(20,'Dinas Lingkungan Hidup',NULL,'Denni Wismanto, S.E., M.M.',5,'2021-01-04 16:06:00','2021-01-04 16:06:00',0,57,57,NULL,0),(21,'Dinas Pengendalian Penduduk dan Keluarga Berencana',NULL,'Dra. Rakhmawati, M.Si.',5,'2021-01-04 16:07:48','2021-01-04 16:07:48',0,57,57,NULL,0),(22,'Badan Penanggulangan Bencana Daerah',NULL,'Drs. Priyatnasyamsah',5,'2021-01-04 16:12:31','2021-01-04 16:12:31',0,57,57,NULL,0),(23,'Badan Keuangan dan Aset Daerah',NULL,'H. Denny Mulyadi, S.E.',6,'2021-01-05 07:45:44','2021-01-05 07:45:44',0,57,57,NULL,0),(24,'Badan Pendapatan Daerah',NULL,'Ir. Deni Hendana, M.Si',6,'2021-01-05 07:47:01','2021-01-05 07:47:01',0,57,57,NULL,0),(25,'Dinas Kesehatan',NULL,'dr. Sri Nowo Retno, M. A. R. S.',6,'2021-01-05 07:47:58','2021-01-05 07:47:58',0,57,57,NULL,0),(26,'Badan Kepegawaian Pendidikan dan Sumber Daya Manusia',NULL,'Taufik, S.H.',6,'2021-01-05 07:53:26','2021-01-05 07:53:26',0,57,57,NULL,0),(27,'Dinas Tenaga Kerja',NULL,'Elia Buntang, S.Pi., M.M.',6,'2021-01-05 07:54:48','2021-01-05 08:10:49',0,57,57,NULL,0),(28,'Dinas Koperasi Usaha Kecil dan Menengah',NULL,'Samson Purba, S.E., M.M.',6,'2021-01-05 07:55:42','2021-01-05 07:55:42',0,57,57,NULL,0),(29,'Dinas Komunikasi dan Informatika',NULL,'Rahmat Hidayat, S.Sos, MM',6,'2021-01-05 07:57:13','2021-01-05 07:57:13',0,57,57,NULL,0),(30,'Dinas Perumahan dan Permukiman',NULL,'Ir. Deni Susanto',6,'2021-01-05 07:58:47','2021-01-05 07:58:47',0,57,57,NULL,0),(31,'Dinas Kependudukan dan Pencatatan Sipil',NULL,'H. Sujatmiko Baliarto, Atd, M.M',6,'2021-01-05 08:00:36','2021-01-05 08:00:36',0,57,57,NULL,0),(32,'Inspektorat Daerah Kota Bogor',NULL,'Drs. Pupung Wahyu Purnama, M.Si',6,'2021-01-05 08:01:19','2021-01-05 08:01:19',0,57,57,NULL,0),(33,'Kecamatan Tanah Sareal',NULL,'Sahib Khan, S.STP., M P A',5,'2021-01-05 08:02:33','2021-01-05 08:02:33',0,57,57,NULL,0),(34,'Kecamatan Bogor Timur',NULL,'Wawan Sanwani, S.STP, M.Si',6,'2021-01-05 08:03:03','2021-01-05 08:03:03',0,57,57,NULL,0),(35,'Rumah Sakit Umum Daerah',NULL,'Dr. H. Ilham Chaidir, M.Kes',6,'2021-01-05 08:04:44','2021-01-05 08:04:44',0,57,57,NULL,0),(36,'Kecamatan Bogor Barat',NULL,'Rr. Juniarti Estiningsih, S.E., M.M.',4,'2021-01-05 08:06:46','2021-01-05 08:06:46',0,57,57,NULL,0),(37,'Kecamatan Bogor Tengah',NULL,'Abdul Wahid, S.Ag., M.Si.',6,'2021-01-05 08:08:11','2021-01-05 08:08:11',0,57,57,NULL,0),(38,'Perusahaan Daerah Jasa Transportasi',NULL,NULL,4,'2021-01-11 17:15:58','2021-01-11 17:15:58',0,1,1,NULL,0),(39,'Perusahaan Umum Daerah Bank Perkreditan Rakyat',NULL,NULL,4,'2021-01-11 17:17:19','2021-01-11 17:17:19',0,1,1,NULL,0),(40,'Inspektorat Daerah',NULL,'Drs. Pupung Wahyu Purnama, M.Si',7,'2021-01-11 18:25:13','2021-01-11 18:25:33',0,1,1,NULL,0),(41,'Tidak Ada Perangkat Daerah',NULL,'kosong',9,'2021-01-11 19:57:37','2021-01-11 19:57:37',0,1,1,NULL,0);
/*!40000 ALTER TABLE `mst_skpd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_urusan_pemerintahan`
--

DROP TABLE IF EXISTS `mst_urusan_pemerintahan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_urusan_pemerintahan` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_urusan_pemerintahan`
--

LOCK TABLES `mst_urusan_pemerintahan` WRITE;
/*!40000 ALTER TABLE `mst_urusan_pemerintahan` DISABLE KEYS */;
INSERT INTO `mst_urusan_pemerintahan` VALUES (1,'402','PENGAWASAN',NULL,0,NULL,0,NULL,0,0);
/*!40000 ALTER TABLE `mst_urusan_pemerintahan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_wilayah`
--

DROP TABLE IF EXISTS `mst_wilayah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_wilayah` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_inspektur_pembantu` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_wilayah`
--

LOCK TABLES `mst_wilayah` WRITE;
/*!40000 ALTER TABLE `mst_wilayah` DISABLE KEYS */;
INSERT INTO `mst_wilayah` VALUES (1,'Irban I',1,'2020-02-10 08:51:04',1,'2020-02-10 15:47:00',1,'2020-03-02 11:31:09',1,1),(2,'Irban II',1,'2020-02-10 09:03:24',1,'2020-02-10 16:02:40',1,'2020-03-02 11:31:11',1,1),(3,'Irban III',1,'2020-02-10 15:29:06',1,'2020-02-10 16:14:34',1,'2020-03-02 11:31:12',1,1),(4,'Inspektur Pembantu I',0,'2020-03-02 12:05:16',1,'2020-06-08 01:24:03',1,NULL,0,0),(5,'Inspektur Pembantu II',0,'2020-03-02 12:08:00',1,'2020-06-08 01:24:10',1,NULL,0,0),(6,'Inspektur Pembantu III',0,'2020-03-02 12:10:33',1,'2020-06-08 01:24:16',1,NULL,0,0),(7,'Sekretaris',0,'2020-06-13 14:22:20',1,NULL,0,NULL,0,0),(8,'Inspektur',0,'2020-06-13 14:22:34',1,NULL,0,NULL,0,0),(9,'Inspektur Pembantu Khusus',0,'2020-07-13 13:07:49',1,NULL,0,NULL,0,0),(10,'Kasubag PAE',NULL,NULL,0,NULL,0,NULL,0,0),(11,'Kasubag ADUM',NULL,NULL,0,NULL,0,NULL,0,0);
/*!40000 ALTER TABLE `mst_wilayah` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_wilayah_anggota`
--

DROP TABLE IF EXISTS `mst_wilayah_anggota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_wilayah_anggota` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_wilayah` int(11) NOT NULL,
  `id_anggota` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_wilayah_anggota`
--

LOCK TABLES `mst_wilayah_anggota` WRITE;
/*!40000 ALTER TABLE `mst_wilayah_anggota` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_wilayah_anggota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_wilayah_skpd`
--

DROP TABLE IF EXISTS `mst_wilayah_skpd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_wilayah_skpd` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_wilayah` int(11) NOT NULL,
  `id_skpd` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=189 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_wilayah_skpd`
--

LOCK TABLES `mst_wilayah_skpd` WRITE;
/*!40000 ALTER TABLE `mst_wilayah_skpd` DISABLE KEYS */;
INSERT INTO `mst_wilayah_skpd` VALUES (1,1,2,1),(2,1,4,1),(3,1,2,1),(4,1,4,1),(5,2,1,1),(6,3,1,1),(7,1,2,1),(8,1,6,1),(9,1,10,1),(10,1,12,1),(11,1,2,1),(12,1,2,1),(13,1,6,1),(14,1,10,1),(15,1,12,1),(16,1,430,1),(17,1,2,1),(18,1,3,1),(19,1,7,1),(20,1,37,1),(21,1,32,1),(22,1,45,1),(23,1,40,1),(24,1,2,1),(25,1,6,1),(26,1,10,1),(27,1,12,1),(28,1,430,1),(29,1,2,1),(30,1,3,1),(31,1,7,1),(32,1,37,1),(33,1,32,1),(34,1,45,1),(35,1,40,1),(36,1,431,1),(37,1,2,0),(38,1,6,0),(39,1,10,0),(40,1,12,0),(41,1,430,0),(42,1,2,0),(43,1,3,0),(44,1,7,0),(45,1,37,0),(46,1,32,0),(47,1,45,0),(48,1,40,0),(49,1,431,0),(50,1,432,0),(51,2,433,1),(52,2,13,1),(53,2,1,1),(54,2,434,1),(55,2,4,1),(56,2,14,1),(57,2,433,1),(58,2,13,1),(59,2,1,1),(60,2,434,1),(61,2,4,1),(62,2,14,1),(63,2,435,1),(64,2,44,1),(65,2,18,1),(66,2,38,1),(67,2,41,1),(68,2,42,1),(69,2,433,0),(70,2,13,0),(71,2,1,0),(72,2,434,0),(73,2,4,0),(74,2,14,0),(75,2,435,0),(76,2,44,0),(77,2,18,0),(78,2,38,0),(79,2,41,0),(80,2,42,0),(81,2,436,0),(82,2,437,0),(83,3,8,1),(84,3,23,1),(85,3,19,1),(86,3,8,1),(87,3,23,1),(88,3,19,1),(89,3,438,1),(90,3,8,1),(91,3,23,1),(92,3,19,1),(93,3,438,1),(94,3,439,1),(95,3,8,1),(96,3,23,1),(97,3,19,1),(98,3,438,1),(99,3,439,1),(100,3,440,1),(101,3,31,1),(102,3,8,1),(103,3,23,1),(104,3,19,1),(105,3,438,1),(106,3,439,1),(107,3,440,1),(108,3,31,1),(109,3,441,1),(110,3,8,1),(111,3,23,1),(112,3,19,1),(113,3,438,1),(114,3,439,1),(115,3,440,1),(116,3,31,1),(117,3,441,1),(118,3,442,1),(119,3,26,1),(120,3,39,1),(121,3,47,1),(122,3,8,1),(123,3,23,1),(124,3,19,1),(125,3,438,1),(126,3,439,1),(127,3,440,1),(128,3,31,1),(129,3,441,1),(130,3,442,1),(131,3,26,1),(132,3,39,1),(133,3,47,1),(134,3,443,1),(135,3,8,0),(136,3,23,0),(137,3,19,0),(138,3,438,0),(139,3,439,0),(140,3,440,0),(141,3,31,0),(142,3,441,0),(143,3,442,0),(144,3,26,0),(145,3,39,0),(146,3,47,0),(147,3,443,0),(148,3,444,0),(149,4,1,0),(150,4,10,0),(151,4,12,0),(152,4,5,0),(153,4,2,0),(154,4,3,0),(155,4,7,0),(156,4,37,0),(157,4,32,0),(158,4,45,0),(159,4,40,0),(160,4,431,0),(161,4,432,0),(162,5,433,0),(163,5,13,0),(164,5,1,0),(165,5,28,0),(166,5,4,0),(167,5,14,0),(168,5,16,0),(169,5,44,0),(170,5,18,0),(171,5,38,0),(172,5,41,0),(173,5,42,0),(174,5,436,0),(175,5,437,0),(176,6,8,0),(177,6,23,0),(178,6,19,0),(179,6,438,0),(180,6,25,0),(181,6,20,0),(182,6,31,0),(183,6,24,0),(184,6,21,0),(185,6,26,0),(186,6,39,0),(187,6,47,0),(188,6,444,0);
/*!40000 ALTER TABLE `mst_wilayah_skpd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pgw_eselon`
--

DROP TABLE IF EXISTS `pgw_eselon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pgw_eselon` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pgw_eselon`
--

LOCK TABLES `pgw_eselon` WRITE;
/*!40000 ALTER TABLE `pgw_eselon` DISABLE KEYS */;
INSERT INTO `pgw_eselon` VALUES (1,'IIA',0,2),(2,'IIB',0,2),(3,'IIIA',0,3),(4,'IIIB',0,3),(5,'IVA',0,4),(6,'IVB',0,4),(7,'Staff',0,5);
/*!40000 ALTER TABLE `pgw_eselon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pgw_jabatan`
--

DROP TABLE IF EXISTS `pgw_jabatan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pgw_jabatan` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1446 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pgw_jabatan`
--

LOCK TABLES `pgw_jabatan` WRITE;
/*!40000 ALTER TABLE `pgw_jabatan` DISABLE KEYS */;
INSERT INTO `pgw_jabatan` VALUES (29,'Inspektur Daerah Kota Bogor',0,NULL,0,NULL,0,NULL,0),(36,'Sekretaris Inspektorat Daerah Kota Bogor',0,NULL,0,NULL,0,NULL,0),(49,'Inspektur Pembantu II pada Inspektorat Daerah Kota Bogor',0,NULL,0,NULL,0,NULL,0),(56,'Inspektur Pembantu I pada Inspektorat Daerah Kota Bogor',0,NULL,0,NULL,0,NULL,0),(74,'Inspektur Pembantu III pada Inspektorat Daerah Kota Bogor',0,NULL,0,NULL,0,NULL,0),(364,'Kasubag Administrasi Umum dan Keuangan pada Inspektorat Daerah Kota Bogor',0,NULL,0,NULL,0,NULL,0),(606,'Kasubag Perencanaan, Analisis dan Evaluasi pada Inspektorat Daerah Kota Bogor',0,NULL,0,NULL,0,NULL,0),(977,'Auditor Ahli Madya',0,NULL,0,NULL,0,NULL,0),(978,'ANALIS SDM APARATUR',0,NULL,0,NULL,0,NULL,0),(1001,'Pengawas Penyelenggaraan Urusan Pemerintahan di Daerah Ahli Madya',0,NULL,0,NULL,0,NULL,0),(1009,'Auditor Ahli Muda',0,NULL,0,NULL,0,NULL,0),(1020,'Auditor Ahli Pertama',0,NULL,0,NULL,0,NULL,0),(1031,'ANALIS PERENCANAAN, EVALUASI DAN PELAPORAN (940)',0,NULL,0,NULL,0,NULL,0),(1035,'Pengawas Penyelenggaraan Urusan Pemerintahan di Daerah Ahli Muda',0,NULL,0,NULL,0,NULL,0),(1042,'PENGADMINISTRASI UMUM',0,NULL,0,NULL,0,NULL,0),(1095,'BENDAHARA',0,NULL,0,NULL,0,NULL,0),(1136,'PENGELOLA PEMANFAATAN BARANG MILIK DAERAH',0,NULL,0,NULL,0,NULL,0),(1143,'PENGELOLA DATA ADMINISTRASI PEMERIKSAAN',0,NULL,0,NULL,0,NULL,0),(1220,'Auditor Kepegawaian Ahli Auditor Kepegawaian Pertama',0,NULL,0,NULL,0,NULL,0),(1333,'Pengawas Penyelenggaraan Urusan Pemerintahan di Daerah Ahli Pertama',0,NULL,0,NULL,0,NULL,0),(1442,'Auditor Ahli Utama',0,NULL,0,NULL,0,NULL,0),(1443,'Auditor Pelaksana',0,NULL,0,NULL,0,NULL,0),(1444,'Auditor Pelaksana Lanjutan',0,NULL,0,NULL,0,NULL,0),(1445,'Auditor Penyelia',0,NULL,0,NULL,0,NULL,0);
/*!40000 ALTER TABLE `pgw_jabatan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pgw_pangkat`
--

DROP TABLE IF EXISTS `pgw_pangkat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pgw_pangkat` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pgw_pangkat`
--

LOCK TABLES `pgw_pangkat` WRITE;
/*!40000 ALTER TABLE `pgw_pangkat` DISABLE KEYS */;
INSERT INTO `pgw_pangkat` VALUES (1,'Pembina Utama Madya',0),(2,'Pembina Utama Muda',0),(3,'Pembina Tingkat I',0),(4,'Pembina',0),(5,'Penata Tingkat I',0),(6,'Penata',0),(7,'Penata Muda Tingkat I',0),(8,'Penata Muda',0),(9,'Pembina Utama',0),(10,'Pengatur Tingkat I',0),(11,'Pengatur',0),(12,'Pengatur Muda Tingkat I',0),(13,'Pengatur Muda',0),(14,'Juru Tingkat I',0),(15,'Juru',0),(16,'Juru Muda Tingkat I',0),(17,'Juru Muda',0);
/*!40000 ALTER TABLE `pgw_pangkat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pgw_pangkat_golongan`
--

DROP TABLE IF EXISTS `pgw_pangkat_golongan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pgw_pangkat_golongan` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pgw_pangkat_golongan`
--

LOCK TABLES `pgw_pangkat_golongan` WRITE;
/*!40000 ALTER TABLE `pgw_pangkat_golongan` DISABLE KEYS */;
INSERT INTO `pgw_pangkat_golongan` VALUES (1,'IV/d',0),(2,'IV/c',0),(3,'IV/b',0),(4,'IV/a',0),(5,'III/d',0),(6,'III/c',0),(7,'III/b',0),(8,'III/a',0),(9,'IV/e',0),(10,'II/d',0),(11,'II/c',0),(12,'II/b',0),(13,'II/a',0),(14,'I/d',0),(15,'I/c',0),(16,'I/b',0),(17,'I/a',0);
/*!40000 ALTER TABLE `pgw_pangkat_golongan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pgw_pegawai`
--

DROP TABLE IF EXISTS `pgw_pegawai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pgw_pegawai` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_skpd` bigint(20) NOT NULL,
  `id_eselon` bigint(20) NOT NULL,
  `id_pangkat` bigint(20) NOT NULL,
  `id_pangkat_golongan` bigint(20) NOT NULL,
  `id_jabatan` bigint(20) NOT NULL,
  `id_level` int(11) NOT NULL DEFAULT '0',
  `id_peran` int(11) DEFAULT '1',
  `id_wilayah` int(11) DEFAULT '1',
  `atasan_langsung` int(11) NOT NULL DEFAULT '0',
  `nip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_asli` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenjab` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `score_angka_credit` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pgw_pegawai`
--

LOCK TABLES `pgw_pegawai` WRITE;
/*!40000 ALTER TABLE `pgw_pegawai` DISABLE KEYS */;
INSERT INTO `pgw_pegawai` VALUES (1,1,2,3,2,29,4,0,8,8,'197007151990091002','Drs. Pupung Wahyu Purnama, M.Si','Pupung Wahyu Purnama','Inspektur',0,0,NULL,0,'2021-01-05 08:22:31',56,NULL,0),(2,1,3,3,3,36,3,0,8,8,'196304081983031007','Arie Sarsono Budiraharjo, S.E.,M.Pd.','Arie Sarsono Budiraharjo','STRUKTURAL',0,0,NULL,0,'2021-01-11 05:43:15',1,NULL,0),(3,26,3,3,3,49,3,3,5,5,'196204041992112001','Dra. Hj. Ira Sulistyanti, M.M.','Ira Sulistyanti','STRUKTURAL',1,0,NULL,0,'2021-01-04 23:32:18',56,'2021-01-04 23:32:18',56),(4,1,3,3,3,56,3,0,4,8,'197209181999011001','Novy Hasbhy Munnawar, S.H., M.Si.','Novy Hasbhy Munnawar','STRUKTURAL',0,0,NULL,0,'2021-01-05 00:18:02',56,NULL,0),(5,1,3,4,4,74,3,0,6,8,'196606261993031007','Drs. Dwi Raharjo','Dwi Raharjo','STRUKTURAL',0,0,NULL,0,'2021-01-05 08:21:55',56,NULL,0),(6,1,5,5,5,364,2,0,7,7,'197406142006042010','Indriyani Yuni Nugraha, S.H.','Indriyani Yuni Nugraha','STRUKTURAL',0,0,NULL,0,'2021-01-05 08:27:37',56,NULL,0),(7,1,5,6,1,606,2,0,7,7,'198310012010011013','Riki Riswan Deris, S.T., MM','Riki Riswan Deris','STRUKTURAL',0,0,NULL,0,'2021-01-05 08:30:07',56,NULL,0),(8,1,7,2,2,977,6,0,5,5,'196507271991032008','Dra. Siti Nuryani','Siti Nuryani','Fungsional',0,0,NULL,0,'2021-01-05 08:22:11',56,NULL,0),(9,1,7,3,3,977,6,0,4,4,'196607051997031005','Aa Pardikusumah, S.E.','Aa Pardikusumahh','Fungsional',0,0,NULL,0,'2021-01-04 21:10:18',56,NULL,0),(10,1,7,3,3,49,6,0,5,8,'197006161996122001','Ayi Suryaning Ati, S.E.','Ayi Suryaning Ati','STRUKTURAL',0,0,NULL,0,'2021-01-05 08:15:42',56,NULL,0),(11,26,7,3,3,977,6,1,0,0,'196004181987012001','Titik Supiati, SE','Titik Supiati','JFT',1,0,NULL,0,'2021-01-05 00:47:14',56,'2021-01-05 00:47:14',56),(12,1,7,4,4,977,6,0,5,5,'197106071999032005','Eny Sadyantri, S.H , M.Si','Eny Sadyantri','Fungsional',0,0,NULL,0,'2021-01-05 08:25:05',56,NULL,0),(13,1,7,4,4,977,6,0,6,6,'197101221998032004','Firdiani, S.H., M.Si','Firdiani','Fungsional',0,0,NULL,0,'2021-01-05 08:26:51',56,NULL,0),(14,1,7,4,4,977,6,0,4,4,'197604201998032003','Lilis Suliyanti, S.E ,M.Si.','Lilis Suliyanti','Fungsional',0,0,NULL,0,'2021-01-11 05:20:36',1,NULL,0),(15,1,7,4,4,1001,6,0,6,6,'196509101985031009','Raden Herry Suherman Suryana, S.H., M.Si','Raden Herry Suherman Suryana','Fungsional',0,0,NULL,0,'2021-01-05 08:29:42',56,NULL,0),(16,1,7,5,5,1009,6,0,4,4,'196905282005011003','Ade Hendar Purnawan, S.T , M.P.','Ade Hendar Purnawan','Fungsional',0,0,NULL,0,'2021-01-04 21:34:46',56,NULL,0),(17,1,7,5,5,978,6,0,11,11,'197304242005011004','Andreis Prilesmana Sukanda, S.E.','Andreis Prilesmana Sukanda','PELAKSANA',0,0,NULL,0,'2021-01-05 13:48:04',56,NULL,0),(18,1,7,5,5,1009,6,0,6,6,'197607042006041011','Budi Yulistiawan, S.T.','Budi Yulistiawan','Fungsional',0,0,NULL,0,'2021-01-05 08:17:22',56,NULL,0),(19,1,7,5,5,1020,6,0,6,6,'198507042003122001','Choeriah Fitriani, S.STP.','Choeriah Fitriani','Fungsional',0,0,NULL,0,'2021-01-05 08:17:27',56,NULL,0),(20,1,7,5,4,977,6,0,9,9,'196808091997032001','E. Sulistiawarni, SE, Ak','E. Sulistiawarni','Fungsional',0,0,NULL,0,'2021-01-05 08:23:00',56,NULL,0),(21,1,7,5,5,1009,6,0,5,5,'197304222005011010','Edi Kurniadi Kosasih, ST.','Edi Kurniadi Kosasih','Fungsional',0,0,NULL,0,'2021-01-05 08:23:13',56,NULL,0),(22,1,7,5,5,1020,6,0,5,5,'198402102003122001','Ferani Miranty, S.STP, MM','Ferani Miranty','Fungsional',0,0,NULL,0,'2021-01-11 05:44:38',1,NULL,0),(23,1,7,5,5,1031,6,0,10,10,'197406121997031005','Ficki Abdullah Rizky, B.E., M.Si.','Ficki Abdullah Rizky','PELAKSANA',0,0,NULL,0,'2021-01-05 13:49:16',56,NULL,0),(24,1,7,5,5,1035,6,0,5,5,'197102071998031010','Hilman Haerudin, S.T., M T.','Hilman Haerudin','Fungsional',0,0,NULL,0,'2021-01-05 08:27:21',56,NULL,0),(25,1,7,5,5,1009,6,0,4,4,'198210202006042006','Mahdalena, S.E , M.Si','Mahdalena','Fungsional',0,0,NULL,0,'2021-01-11 05:45:12',1,NULL,0),(26,1,7,5,5,1009,6,0,5,5,'197503271994032002','Siti Nurlaelah, SAP','Siti Nurlaelah','Fungsional',0,0,NULL,0,'2021-01-05 08:32:36',56,NULL,0),(27,1,7,5,5,1035,6,0,4,4,'196611121994031006','Tonina Gunawan, S.T.','Tonina Gunawan','Fungsional',0,0,NULL,0,'2021-01-11 05:21:53',1,NULL,0),(28,1,7,5,5,1009,6,0,6,6,'197503162010011009','Widiatmoko, S.T, M.M','Widiatmoko','Fungsional',0,0,NULL,0,'2021-01-05 08:33:56',56,NULL,0),(29,1,7,6,6,1009,6,0,5,5,'197509052006042016','Dewi Ekaningsih, S.E.','Dewi Ekaningsih','Fungsional',0,0,NULL,0,'2021-01-05 08:21:02',56,NULL,0),(30,1,7,6,6,1009,6,0,6,6,'196907061997032003','Dewi Lesmana, SE','Dewi Lesmana','Fungsional',0,0,NULL,0,'2021-01-05 08:21:28',56,NULL,0),(31,1,7,6,6,1009,6,0,5,5,'198308072010012017','Ferawaty Sitorus, S.E.','Ferawaty Sitorus','Fungsional',0,0,NULL,0,'2021-01-05 08:25:51',56,NULL,0),(32,1,7,6,6,1009,6,0,9,9,'197505262009021001','Makmur Ridho, S.T.','Makmur Ridho','Fungsional',0,0,NULL,0,'2021-01-05 08:28:09',56,NULL,0),(33,1,7,6,6,1009,6,0,4,4,'198109182010011012','Rizki Satrianegara , S.E.','Rizki Satrianegara','Fungsional',0,0,NULL,0,'2021-01-11 05:21:23',1,NULL,0),(34,1,7,6,6,1009,6,0,6,6,'196801231993031003','Sarmudi, S.E','Sarmudi','Fungsional',0,0,NULL,0,'2021-01-05 08:30:59',56,NULL,0),(35,1,7,6,6,1009,6,0,6,6,'198509012009022002','Septi Ekariani, S.E.','Septi Ekariani','Fungsional',0,0,NULL,0,'2021-01-05 08:31:11',56,NULL,0),(36,1,7,6,6,1009,6,0,6,6,'197309192003122002','Sisca Irma Trisiana, S.E.','Sisca Irma Trisiana','Fungsional',0,0,NULL,0,'2021-01-05 08:32:13',56,NULL,0),(37,1,7,6,6,1009,6,0,4,4,'198007162010011012','Tri Suharto, S.E.','Tri Suharto','Fungsional',0,0,NULL,0,'2021-01-11 05:21:58',1,NULL,0),(38,1,7,6,6,1445,6,0,5,5,'197008281993032008','Yusfa Reno','Yusfa Reno','PELAKSANA',0,0,NULL,0,'2021-01-05 08:34:18',56,NULL,0),(39,1,7,7,7,1020,6,0,9,9,'198804172015022001','Apriessa Seventienna, S.E.','Apriessa Seventienna','Fungsional',0,0,NULL,0,'2021-01-05 08:15:07',56,NULL,0),(40,1,7,7,7,1020,6,0,5,5,'197803102010012011','Areh Setiawati, SE','Areh Setiawati','Fungsional',0,0,NULL,0,'2021-01-05 08:15:25',56,NULL,0),(41,1,7,7,7,1020,6,0,9,9,'198407302015021001','Bernadus Danarjati, ST','Bernadus Danarjati','Fungsional',0,0,NULL,0,'2021-01-05 08:16:26',56,NULL,0),(42,1,7,7,8,1220,6,0,9,9,'198009062008011007','Mamat Rohimat, S.Sos','Mamat Rohimat','Fungsional',0,0,NULL,0,'2021-01-05 08:29:08',56,NULL,0),(43,26,7,7,7,1042,6,1,0,0,'196208271998031002','Purnomo','Purnomo','PELAKSANA',1,0,NULL,0,'2021-01-05 00:19:02',56,'2021-01-05 00:19:02',56),(44,1,7,7,7,1042,6,0,11,11,'196803241996011001','Rasdi Cahyadi','Rasdi Cahyadi','PELAKSANA',0,0,NULL,0,'2021-01-05 13:48:30',56,NULL,0),(45,1,7,7,7,1020,6,0,4,4,'198304042015022001','Ratih Werdiningsih Suherman, S.Pi., MM.','Ratih Werdiningsih Suherman','Fungsional',0,0,NULL,0,'2021-01-11 05:21:12',1,NULL,0),(46,1,7,7,7,1020,6,0,9,9,'198603182015021001','Supian Ardyanumbara, SE','Supian Ardyanumbara','Fungsional',0,0,NULL,0,'2021-01-05 08:32:49',56,NULL,0),(47,1,7,8,8,1020,6,0,4,4,'198309292010011001','Muhamad Dahlan, SE','Muhamad Dahlan','Fungsional',0,0,NULL,0,'2021-01-11 05:21:00',1,NULL,0),(48,1,7,8,8,1333,6,0,9,9,'197802232014091001','Rudy Suryadi, SE','Rudy Suryadi','Fungsional',0,0,NULL,0,'2021-01-05 08:30:20',56,NULL,0),(49,1,7,8,8,1333,6,0,5,5,'198007062008012007','Sutiyawati, S.E.','Sutiyawati','Fungsional',0,0,NULL,0,'2021-01-05 08:33:14',56,NULL,0),(50,1,7,8,8,1095,6,0,11,11,'198502152010012014','Vina Mardiana Saragi, A.Md','Vina Mardiana Saragi','Pelaksana',0,0,NULL,0,'2021-01-05 13:48:58',56,NULL,0),(51,26,7,8,8,1333,6,1,0,0,'197301152008011005','Wardi Suwardi, SE','Wardi Suwardi','',1,0,NULL,0,'2021-01-05 00:50:04',56,'2021-01-05 00:50:04',56),(52,1,7,10,10,1136,6,0,11,11,'196505042007011018','Alpian','Alpian','Pelaksana',0,0,NULL,0,'2021-01-05 13:47:47',56,NULL,0),(53,1,1,1,8,1020,0,0,0,0,'197007061997031004','Pegawai Contoh 1, SE','Pegawai Contoh 1','JFT',1,0,'2020-12-03 10:27:58',1,'2020-12-03 11:32:17',1,'2020-12-03 11:32:17',1),(54,1,1,1,1,1020,0,0,0,0,'039170913758735','Pegawai Contoh 1, SE','Pegawai Contoh 1','JFT',1,0,'2020-12-03 11:34:00',1,'2020-12-03 11:34:07',1,'2020-12-03 11:34:07',1),(55,1,1,1,6,1020,0,0,5,5,'87548176587136','Pegawai Contoh 1, SE','Pegawai Contoh 1','JFT',1,0,'2020-12-03 11:41:33',1,'2021-01-05 00:18:35',56,'2021-01-05 00:18:35',56),(56,1,1,1,1,29,0,0,0,0,'196905282005011004','kiki','Aa Pardikusumahd','JFT',1,0,'2021-01-04 16:26:53',1,'2021-01-04 16:28:18',1,'2021-01-04 16:28:18',1),(57,1,1,1,1,29,0,0,0,0,'196905282005011004','kiki','Aa Pardikusumahd','JFT',1,0,'2021-01-04 16:26:53',1,'2021-01-04 16:28:22',1,'2021-01-04 16:28:22',1),(58,1,1,1,3,74,0,0,9,8,'197312131994031005','Jimmy Ventius Parluhutan H., A.P., M.P.','JIMMY VENTIUS PARLUHUTAN','STRUKTURAL',0,0,'2021-01-05 00:57:12',56,'2021-01-25 10:55:09',1,NULL,0),(59,1,1,1,8,606,0,0,10,10,'198103202010012001','Yayuk Hersayuk Herwiyani, S.Sos','YAYUK HERSAYUK HERWIYANI','Pelaksana',0,0,'2021-01-05 01:00:38',56,'2021-01-05 13:48:50',56,NULL,0);
/*!40000 ALTER TABLE `pgw_pegawai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pgw_peran`
--

DROP TABLE IF EXISTS `pgw_peran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pgw_peran` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_anggota` tinyint(1) NOT NULL DEFAULT '0',
  `kode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pgw_peran`
--

LOCK TABLES `pgw_peran` WRITE;
/*!40000 ALTER TABLE `pgw_peran` DISABLE KEYS */;
INSERT INTO `pgw_peran` VALUES (1,'Anggota','2020-03-25 23:00:41',1,'2020-03-25 23:00:44',1,'0000-00-00 00:00:00',0,0,1,'anggota'),(2,'Inspektur','2020-03-25 23:02:36',1,'2020-03-26 00:51:55',1,NULL,0,0,0,'inspektur'),(3,'Inspektur Pembantu','2020-03-25 23:05:57',1,'2020-03-25 23:26:09',1,NULL,0,0,0,'inspektur_pembantu'),(4,'Sekretaris','2020-03-25 23:55:50',1,NULL,0,NULL,0,0,0,'sekretaris'),(5,'Wakil Sekretaris','2020-03-25 23:56:18',1,NULL,0,NULL,0,0,0,'wakil_sekretaris'),(6,'Wakil Inspektur Pembantu','2020-03-25 23:56:38',1,NULL,0,NULL,0,0,0,'wakil_inspektur_pembantu'),(7,'Pengendali Mutu','2020-03-25 23:57:25',1,NULL,0,NULL,0,0,0,'pengendali_mutu'),(8,'Pengendali Teknis','2020-03-25 23:57:47',1,NULL,0,NULL,0,0,0,'pengendali_teknis'),(9,'Ketua Tim','2020-03-25 23:58:16',1,NULL,0,NULL,0,0,0,'ketua_tim');
/*!40000 ALTER TABLE `pgw_peran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pgw_peran_jabatan`
--

DROP TABLE IF EXISTS `pgw_peran_jabatan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pgw_peran_jabatan` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_peran` int(11) NOT NULL,
  `id_jabatan` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pgw_peran_jabatan`
--

LOCK TABLES `pgw_peran_jabatan` WRITE;
/*!40000 ALTER TABLE `pgw_peran_jabatan` DISABLE KEYS */;
INSERT INTO `pgw_peran_jabatan` VALUES (1,2,29,1),(2,3,49,1),(3,3,56,1),(4,3,74,1),(5,3,56,1),(6,3,49,1),(7,3,74,1),(8,3,1143,1),(9,3,56,1),(10,3,49,1),(11,3,74,1),(12,3,56,0),(13,3,49,0),(14,3,74,0),(15,4,36,0),(16,5,36,0),(17,6,56,0),(18,6,49,0),(19,6,74,0),(20,7,1220,0),(21,8,977,0),(22,9,977,0),(23,9,1009,0),(24,9,1020,0),(25,2,29,1),(26,2,29,0);
/*!40000 ALTER TABLE `pgw_peran_jabatan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pgw_tipe_auditor`
--

DROP TABLE IF EXISTS `pgw_tipe_auditor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pgw_tipe_auditor` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pgw_tipe_auditor`
--

LOCK TABLES `pgw_tipe_auditor` WRITE;
/*!40000 ALTER TABLE `pgw_tipe_auditor` DISABLE KEYS */;
INSERT INTO `pgw_tipe_auditor` VALUES (1,'Auditor Terampil','auditor_terampil',NULL,0,NULL,0,NULL,0,0),(2,'Auditor Ahli','auditor_ahli',NULL,0,NULL,0,NULL,0,0);
/*!40000 ALTER TABLE `pgw_tipe_auditor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pgw_tipe_auditor_jabatan`
--

DROP TABLE IF EXISTS `pgw_tipe_auditor_jabatan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pgw_tipe_auditor_jabatan` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_tipe_auditor` int(11) NOT NULL,
  `id_jabatan` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pgw_tipe_auditor_jabatan`
--

LOCK TABLES `pgw_tipe_auditor_jabatan` WRITE;
/*!40000 ALTER TABLE `pgw_tipe_auditor_jabatan` DISABLE KEYS */;
INSERT INTO `pgw_tipe_auditor_jabatan` VALUES (1,1,1443,NULL,0,NULL,0,NULL,0,0),(2,1,1444,NULL,0,NULL,0,NULL,0,0),(3,1,1445,NULL,0,NULL,0,NULL,0,0),(4,2,1009,NULL,0,NULL,0,NULL,0,0),(5,2,1020,NULL,0,NULL,0,NULL,0,0),(6,2,1442,NULL,0,NULL,0,NULL,0,0),(7,2,977,NULL,0,NULL,0,NULL,0,0),(8,2,1333,NULL,0,NULL,0,NULL,0,0),(9,2,1220,NULL,0,NULL,0,NULL,0,0),(10,2,1143,NULL,0,NULL,0,NULL,0,0),(11,2,1136,NULL,0,NULL,0,NULL,0,0),(12,2,1095,NULL,0,NULL,0,NULL,0,0),(13,2,1042,NULL,0,NULL,0,NULL,0,0),(14,2,1035,NULL,0,NULL,0,NULL,0,0),(15,2,1031,NULL,0,NULL,0,NULL,0,0),(16,2,1001,NULL,0,NULL,0,NULL,0,0),(17,2,978,NULL,0,NULL,0,NULL,0,0),(18,2,977,NULL,0,NULL,0,NULL,0,0),(19,2,606,NULL,0,NULL,0,NULL,0,0),(20,2,364,NULL,0,NULL,0,NULL,0,0),(21,2,74,NULL,0,NULL,0,NULL,0,0),(22,2,56,NULL,0,NULL,0,NULL,0,0),(23,2,49,NULL,0,NULL,0,NULL,0,0),(24,2,36,NULL,0,NULL,0,NULL,0,0),(25,2,29,NULL,0,NULL,0,NULL,0,0);
/*!40000 ALTER TABLE `pgw_tipe_auditor_jabatan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pkpt_surat_perintah`
--

DROP TABLE IF EXISTS `pkpt_surat_perintah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pkpt_surat_perintah` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_inspektur` int(11) NOT NULL,
  `jumlah_team` int(11) NOT NULL DEFAULT '1',
  `id_program_kerja` int(11) NOT NULL DEFAULT '0',
  `id_kegiatan` int(11) NOT NULL DEFAULT '0',
  `no_surat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dasar_surat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `untuk` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dari` datetime NOT NULL,
  `sampai` datetime NOT NULL,
  `tembusan` text COLLATE utf8mb4_unicode_ci,
  `is_approve` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_pkpt` tinyint(1) DEFAULT '1',
  `id_status_sp` int(11) NOT NULL DEFAULT '1',
  `is_approved_pka` int(11) NOT NULL DEFAULT '0',
  `no_lhp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_approved_tindak_lanjut` int(11) NOT NULL DEFAULT '0',
  `is_judul_lampiran` tinyint(1) NOT NULL DEFAULT '0',
  `is_lampiran` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pkpt_surat_perintah`
--

LOCK TABLES `pkpt_surat_perintah` WRITE;
/*!40000 ALTER TABLE `pkpt_surat_perintah` DISABLE KEYS */;
INSERT INTO `pkpt_surat_perintah` VALUES (1,1,1,20,5,'','SK Walikota','','2021-01-12 00:00:00','2021-01-14 00:00:00',NULL,0,'2021-01-11 06:33:37',1,'2021-01-11 06:53:27',1,'2021-01-11 06:53:27',1,1,1,1,0,NULL,0,0,0),(2,1,1,20,5,'','SK Walikota','','2021-01-12 00:00:00','2021-01-14 00:00:00','1\r\n2\r\n3',0,'2021-01-11 06:52:16',1,'2021-01-11 06:53:24',1,'2021-01-11 06:53:24',1,1,1,1,0,NULL,0,0,0),(3,1,1,20,5,'123','SK Walikota','','2021-01-12 00:00:00','2021-01-14 00:00:00','tembusan 1\r\ntembusan 2\r\ntembusan 3\r\ntembusan 4',1,'2021-01-11 07:08:41',1,'2021-01-11 07:47:16',1,'2021-01-11 07:47:16',1,1,1,1,0,NULL,0,0,0),(4,1,1,21,3,'121212','SK Walikota','','2021-01-05 00:00:00','2021-01-08 00:00:00','1. Wali Kota Bogor (Sebagai Laporan);\r\n2. Sekretaris Daerah Kota Bogor.\r\n3.\r\n4.\r\n5.\r\n6.',1,'2021-01-11 09:23:36',1,'2021-01-20 15:17:25',1,'2021-01-20 15:17:25',1,1,1,1,0,NULL,0,0,0),(5,1,1,61,9,'','SK Walikota','','2021-01-04 00:00:00','2021-01-06 00:00:00',NULL,0,'2021-01-11 18:52:07',1,'2021-01-12 10:35:07',1,'2021-01-12 10:35:07',1,1,1,1,0,NULL,0,0,0),(6,1,1,57,3,'','SK Walikota','','2021-08-02 00:00:00','2021-08-20 00:00:00',NULL,0,'2021-01-12 10:32:42',1,'2021-01-12 10:34:57',1,'2021-01-12 10:34:57',1,1,1,1,0,NULL,0,0,0),(7,1,1,24,3,'','SK Walikota','','2021-01-05 00:00:00','2021-01-08 00:00:00',NULL,0,'2021-01-12 10:33:31',1,'2021-01-12 10:35:01',1,'2021-01-12 10:35:01',1,1,1,1,0,NULL,0,0,0),(8,1,1,24,3,'','SK Walikota','','2021-01-05 00:00:00','2021-01-08 00:00:00',NULL,0,'2021-01-12 10:34:10',1,'2021-01-12 10:37:28',1,'2021-01-12 10:37:28',1,1,1,1,0,NULL,0,0,0),(9,1,1,45,3,'','SK Walikota','','2021-09-21 00:00:00','2021-10-08 00:00:00',NULL,0,'2021-01-12 10:37:09',1,'2021-01-12 10:37:25',1,'2021-01-12 10:37:25',1,1,1,1,0,NULL,0,0,0),(10,1,1,52,3,'','SK Walikota','','2021-06-28 00:00:00','2021-07-09 00:00:00',NULL,0,'2021-01-12 10:39:07',1,'2021-01-12 10:46:09',1,'2021-01-12 10:46:09',1,1,1,1,0,NULL,0,0,0),(11,1,1,24,3,'','SK Walikota','','2021-01-05 00:00:00','2021-01-08 00:00:00',NULL,0,'2021-01-12 10:40:20',1,'2021-01-12 10:46:13',1,'2021-01-12 10:46:13',1,1,1,1,0,NULL,0,0,0),(12,1,1,138,11,'121212','SK Walikota','','2021-01-04 00:00:00','2021-01-08 00:00:00',NULL,1,'2021-01-12 10:45:59',1,'2021-01-20 15:17:34',1,'2021-01-20 15:17:34',1,1,1,1,0,NULL,0,0,0),(13,1,1,138,11,'700/45-itda','SK Walikota','','2021-01-04 00:00:00','2021-01-08 00:00:00','1. tembusan ke 1\r\n2. tembusan ke 2\r\n3. tembusan ke 3',1,'2021-01-12 10:48:50',1,'2021-01-20 15:17:31',1,'2021-01-20 15:17:31',1,1,1,1,0,NULL,0,0,0),(14,1,1,24,3,'','SK Walikota','','2021-01-05 00:00:00','2021-01-08 00:00:00','1.  Te,nusam Kepada Walikota\r\n2.  TeSekretaris',0,'2021-01-20 17:09:28',1,'2021-01-26 15:34:50',1,'2021-01-26 15:34:50',1,1,1,1,0,NULL,0,0,0),(15,1,1,140,3,'122/summit','SK Walikota','','2021-01-18 00:00:00','2021-01-22 00:00:00','1. tembusan no 1\r\n2. tembusan no 2\r\n3. tembusan no 3',1,'2021-01-17 21:11:24',1,'2021-01-20 15:17:38',1,'2021-01-20 15:17:38',1,1,1,1,1,NULL,0,0,0),(16,1,1,31,3,'001/INS/01/2021','SK Walikota','','2021-10-25 00:00:00','2021-11-05 00:00:00',NULL,1,'2021-01-18 10:23:57',1,'2021-01-20 15:17:48',1,'2021-01-20 15:17:48',1,1,2,1,0,NULL,0,0,0),(17,1,1,24,3,'','SK Walikota','','2021-01-05 00:00:00','2021-01-08 00:00:00',NULL,0,'2021-01-19 14:35:26',1,'2021-01-26 15:34:54',1,'2021-01-26 15:34:54',1,1,2,1,0,NULL,0,0,0),(18,1,1,140,3,'012/ins/!/2021','SK Walikota','','2021-01-18 00:00:00','2021-01-22 00:00:00','tembusan 1\r\ntembusan 2\r\ntembusan 3',1,'2021-01-20 15:09:02',1,'2021-01-27 10:32:02',1,'2021-01-27 10:32:02',1,1,1,7,1,'001/LHP/1/2021',0,0,0),(19,1,1,24,3,'','SK Walikota','','2021-01-05 00:00:00','2021-01-08 00:00:00',NULL,0,'2021-01-26 15:33:29',1,'2021-01-26 15:34:57',1,'2021-01-26 15:34:57',1,1,2,1,0,NULL,0,0,2),(20,1,1,24,3,'','SK Walikota','','2021-01-05 00:00:00','2021-01-08 00:00:00',NULL,0,'2021-01-26 15:33:58',1,'2021-01-26 15:34:59',1,'2021-01-26 15:34:59',1,1,2,1,0,NULL,0,0,2),(21,1,1,24,3,'','SK Walikota','','2021-01-05 00:00:00','2021-01-08 00:00:00',NULL,0,'2021-01-26 16:04:58',1,'2021-01-27 10:31:57',1,'2021-01-27 10:31:57',1,1,2,1,0,NULL,0,0,2),(22,1,1,59,3,'','SK Walikota','','2021-09-06 00:00:00','2021-09-10 00:00:00',NULL,0,'2021-01-26 16:06:49',1,'2021-01-27 10:31:59',1,'2021-01-27 10:31:59',1,1,1,1,0,NULL,0,0,1),(23,1,1,41,3,'001/INS/VI/2020','SK Walikota','','2021-01-11 00:00:00','2021-01-15 00:00:00','1.\r\n2.\r\n3.',1,'2021-01-27 10:32:48',1,'2021-02-08 15:02:37',1,NULL,0,0,1,7,1,'001/LHP/I/2020',0,0,1);
/*!40000 ALTER TABLE `pkpt_surat_perintah` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pkpt_surat_perintah_anggota`
--

DROP TABLE IF EXISTS `pkpt_surat_perintah_anggota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pkpt_surat_perintah_anggota` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_surat_perintah` int(11) NOT NULL,
  `id_anggota` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `id_surat_perintah_tim` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pkpt_surat_perintah_anggota`
--

LOCK TABLES `pkpt_surat_perintah_anggota` WRITE;
/*!40000 ALTER TABLE `pkpt_surat_perintah_anggota` DISABLE KEYS */;
INSERT INTO `pkpt_surat_perintah_anggota` VALUES (1,1,5,1,1),(2,1,7,1,1),(3,1,13,1,1),(4,2,5,1,2),(5,2,6,1,2),(6,2,7,1,2),(7,3,15,1,3),(8,3,16,1,3),(9,3,12,1,3),(10,3,15,1,4),(11,3,16,1,4),(12,3,12,1,4),(13,3,52,1,4),(14,4,5,1,5),(15,4,1,1,5),(16,7,5,1,7),(17,7,13,1,7),(18,8,6,1,8),(19,8,28,1,8),(20,10,15,1,10),(21,10,21,1,10),(22,11,9,1,11),(23,11,17,1,11),(24,12,17,1,12),(25,12,26,1,12),(26,13,17,1,13),(27,13,18,1,13),(28,13,19,1,13),(29,13,15,1,13),(30,13,21,1,14),(31,13,49,1,14),(32,13,30,1,14),(33,14,15,1,15),(34,14,16,1,15),(35,14,25,1,15),(36,15,21,1,16),(37,15,19,1,16),(38,15,48,1,16),(39,15,38,1,16),(40,16,6,1,17),(41,16,12,1,17),(42,16,15,1,17),(43,16,16,1,17),(44,16,1,1,18),(45,17,6,1,19),(46,17,23,1,19),(47,17,18,1,19),(48,17,32,1,20),(49,17,48,1,20),(50,18,4,1,21),(51,18,6,1,21),(52,14,15,1,22),(53,14,16,1,22),(54,14,25,1,22),(55,20,6,1,24),(56,20,13,1,24),(57,21,13,1,25),(58,21,14,1,25),(59,21,37,1,26),(60,21,18,1,26),(61,21,13,1,27),(62,21,14,1,27),(63,21,37,1,28),(64,21,18,1,28),(65,21,13,1,29),(66,21,14,1,29),(67,21,37,1,30),(68,21,18,1,30),(69,22,14,1,31),(70,22,17,1,31),(71,22,34,1,31),(72,22,25,1,31),(73,23,5,0,32),(74,23,13,0,32);
/*!40000 ALTER TABLE `pkpt_surat_perintah_anggota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pkpt_surat_perintah_sasaran`
--

DROP TABLE IF EXISTS `pkpt_surat_perintah_sasaran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pkpt_surat_perintah_sasaran` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_surat_perintah` int(11) NOT NULL,
  `id_sasaran` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pkpt_surat_perintah_sasaran`
--

LOCK TABLES `pkpt_surat_perintah_sasaran` WRITE;
/*!40000 ALTER TABLE `pkpt_surat_perintah_sasaran` DISABLE KEYS */;
/*!40000 ALTER TABLE `pkpt_surat_perintah_sasaran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pkpt_surat_perintah_skpd`
--

DROP TABLE IF EXISTS `pkpt_surat_perintah_skpd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pkpt_surat_perintah_skpd` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_surat_perintah` int(11) NOT NULL,
  `id_surat_perintah_tim` int(11) NOT NULL,
  `id_skpd` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pkpt_surat_perintah_skpd`
--

LOCK TABLES `pkpt_surat_perintah_skpd` WRITE;
/*!40000 ALTER TABLE `pkpt_surat_perintah_skpd` DISABLE KEYS */;
INSERT INTO `pkpt_surat_perintah_skpd` VALUES (1,1,1,1,NULL,0,NULL,0,NULL,0,0),(2,2,2,1,NULL,0,NULL,0,NULL,0,0),(3,3,3,1,NULL,0,NULL,0,NULL,0,1),(4,3,4,1,NULL,0,NULL,0,NULL,0,0),(5,4,5,3,NULL,0,NULL,0,NULL,0,0),(6,4,5,1,NULL,0,NULL,0,NULL,0,0),(7,4,5,1,NULL,0,NULL,0,NULL,0,0),(8,4,5,1,NULL,0,NULL,0,NULL,0,0),(9,4,5,1,NULL,0,NULL,0,NULL,0,0),(10,8,8,1,NULL,0,NULL,0,NULL,0,0),(11,10,10,12,NULL,0,NULL,0,NULL,0,0),(12,11,11,1,NULL,0,NULL,0,NULL,0,0),(13,12,12,1,NULL,0,NULL,0,NULL,0,0),(14,13,13,1,NULL,0,NULL,0,NULL,0,0),(15,13,14,1,NULL,0,NULL,0,NULL,0,0),(16,14,15,3,NULL,0,NULL,0,NULL,0,1),(17,15,16,1,NULL,0,NULL,0,NULL,0,0),(18,16,17,1,NULL,0,NULL,0,NULL,0,0),(19,16,18,1,NULL,0,NULL,0,NULL,0,0),(20,17,19,3,NULL,0,NULL,0,NULL,0,0),(21,17,20,1,NULL,0,NULL,0,NULL,0,0),(22,18,21,1,NULL,0,NULL,0,NULL,0,0),(23,14,22,3,NULL,0,NULL,0,NULL,0,0),(24,20,24,24,NULL,0,NULL,0,NULL,0,0),(25,21,25,10,NULL,0,NULL,0,NULL,0,1),(26,21,26,23,NULL,0,NULL,0,NULL,0,1),(27,21,27,10,NULL,0,NULL,0,NULL,0,1),(28,21,28,23,NULL,0,NULL,0,NULL,0,1),(29,21,29,10,NULL,0,NULL,0,NULL,0,0),(30,21,30,23,NULL,0,NULL,0,NULL,0,0),(31,22,31,23,NULL,0,NULL,0,NULL,0,0),(32,23,32,1,NULL,0,NULL,0,NULL,0,0);
/*!40000 ALTER TABLE `pkpt_surat_perintah_skpd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pkpt_surat_perintah_status`
--

DROP TABLE IF EXISTS `pkpt_surat_perintah_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pkpt_surat_perintah_status` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pkpt_surat_perintah_status`
--

LOCK TABLES `pkpt_surat_perintah_status` WRITE;
/*!40000 ALTER TABLE `pkpt_surat_perintah_status` DISABLE KEYS */;
INSERT INTO `pkpt_surat_perintah_status` VALUES (1,'draft','Menunggu Persetujuan Ketua Tim','2020-11-29 05:34:13',NULL,'2020-11-29 05:34:13',NULL,NULL,0,0),(2,'review_audit','Perlu Di Revisi Auditor','2020-11-29 05:34:13',NULL,'2020-11-29 05:34:13',NULL,NULL,0,0),(3,'approved_audit','Sudah Di Setujui Ketua Tim','2020-11-29 05:34:13',NULL,'2020-11-29 05:34:13',NULL,NULL,0,0),(4,'review_nhp','Perlu Di Revisi Ketua Tim','2020-11-29 05:34:13',NULL,'2020-11-29 05:34:13',NULL,NULL,0,0),(5,'approved_nhp','Sudah Di Setujui Pengendali Teknis','2020-11-29 05:34:13',NULL,'2020-11-29 05:34:13',NULL,NULL,0,0),(6,'review_lhp','Perlu Di Revisi Pengendali Teknis','2020-11-29 05:34:13',NULL,'2020-11-29 05:34:13',NULL,NULL,0,0),(7,'approved_lhp','Sudah Di Setujui Inspektur','2020-11-29 05:34:13',NULL,'2020-11-29 05:34:13',NULL,NULL,0,0);
/*!40000 ALTER TABLE `pkpt_surat_perintah_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pkpt_surat_perintah_tim`
--

DROP TABLE IF EXISTS `pkpt_surat_perintah_tim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pkpt_surat_perintah_tim` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `no_tim` int(11) NOT NULL DEFAULT '1',
  `id_surat_perintah` int(11) NOT NULL,
  `id_inspektur` int(11) NOT NULL,
  `id_inspektur_pembantu` int(11) NOT NULL,
  `id_pengendali_teknis` int(11) NOT NULL,
  `id_ketua_tim` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pkpt_surat_perintah_tim`
--

LOCK TABLES `pkpt_surat_perintah_tim` WRITE;
/*!40000 ALTER TABLE `pkpt_surat_perintah_tim` DISABLE KEYS */;
INSERT INTO `pkpt_surat_perintah_tim` VALUES (1,1,1,1,4,9,14,NULL,0,NULL,0,NULL,0,0),(2,1,2,1,4,9,14,NULL,0,NULL,0,NULL,0,0),(3,1,3,1,4,9,25,NULL,0,NULL,0,NULL,0,1),(4,1,3,1,4,9,25,NULL,0,NULL,0,NULL,0,0),(5,1,4,1,4,9,9,NULL,0,NULL,0,NULL,0,0),(8,1,8,1,4,8,8,NULL,0,NULL,0,NULL,0,0),(10,1,10,1,10,8,8,NULL,0,NULL,0,NULL,0,0),(11,1,11,1,4,8,8,NULL,0,NULL,0,NULL,0,0),(12,1,12,1,4,9,9,NULL,0,NULL,0,NULL,0,0),(13,1,13,1,4,9,9,NULL,0,NULL,0,NULL,0,0),(14,2,13,1,4,14,45,NULL,0,NULL,0,NULL,0,0),(15,1,14,1,4,8,13,NULL,0,NULL,0,NULL,0,1),(16,1,15,1,4,9,47,'2021-01-17 21:11:24',1,'2021-01-17 21:11:24',1,NULL,0,0),(17,1,16,1,4,8,9,'2021-01-18 10:23:57',1,'2021-01-18 10:23:57',1,NULL,0,0),(18,2,16,1,4,8,8,'2021-01-18 10:23:57',1,'2021-01-18 10:23:57',1,NULL,0,0),(19,1,17,1,4,8,12,'2021-01-19 14:35:26',1,'2021-01-19 14:35:26',1,NULL,0,0),(20,2,17,1,4,8,12,'2021-01-19 14:35:26',1,'2021-01-19 14:35:26',1,NULL,0,0),(21,1,18,1,4,9,14,'2021-01-20 15:09:02',1,'2021-01-20 15:09:02',1,NULL,0,0),(22,1,14,1,4,8,13,'2021-01-20 17:09:28',1,'2021-01-20 17:09:28',1,NULL,0,0),(24,1,20,1,4,8,8,'2021-01-26 15:33:58',1,'2021-01-26 15:33:58',1,NULL,0,0),(25,1,21,1,4,8,13,'2021-01-26 15:59:17',1,'2021-01-26 15:59:17',1,NULL,0,1),(26,2,21,1,4,8,31,'2021-01-26 15:59:17',1,'2021-01-26 15:59:17',1,NULL,0,1),(27,1,21,1,4,8,13,'2021-01-26 16:04:22',1,'2021-01-26 16:04:22',1,NULL,0,1),(28,2,21,1,4,8,31,'2021-01-26 16:04:22',1,'2021-01-26 16:04:22',1,NULL,0,1),(29,1,21,1,4,8,13,'2021-01-26 16:04:58',1,'2021-01-26 16:04:58',1,NULL,0,0),(30,2,21,1,4,8,31,'2021-01-26 16:04:58',1,'2021-01-26 16:04:58',1,NULL,0,0),(31,1,22,1,5,13,13,'2021-01-26 16:06:49',1,'2021-01-26 16:06:49',1,NULL,0,0),(32,1,23,1,4,9,25,'2021-01-27 10:32:48',1,'2021-01-27 10:32:48',1,NULL,0,0);
/*!40000 ALTER TABLE `pkpt_surat_perintah_tim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pkpt_surat_perintah_tindak_lanjut_review`
--

DROP TABLE IF EXISTS `pkpt_surat_perintah_tindak_lanjut_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pkpt_surat_perintah_tindak_lanjut_review` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_surat_perintah` int(11) NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pkpt_surat_perintah_tindak_lanjut_review`
--

LOCK TABLES `pkpt_surat_perintah_tindak_lanjut_review` WRITE;
/*!40000 ALTER TABLE `pkpt_surat_perintah_tindak_lanjut_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `pkpt_surat_perintah_tindak_lanjut_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pkpt_surat_perintah_wilayah`
--

DROP TABLE IF EXISTS `pkpt_surat_perintah_wilayah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pkpt_surat_perintah_wilayah` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_surat_perintah` int(11) NOT NULL,
  `id_wilayah` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pkpt_surat_perintah_wilayah`
--

LOCK TABLES `pkpt_surat_perintah_wilayah` WRITE;
/*!40000 ALTER TABLE `pkpt_surat_perintah_wilayah` DISABLE KEYS */;
INSERT INTO `pkpt_surat_perintah_wilayah` VALUES (1,1,4,NULL,0,NULL,0,NULL,0,0),(2,2,4,NULL,0,NULL,0,NULL,0,0),(3,3,4,NULL,0,NULL,0,NULL,0,1),(4,3,4,NULL,0,NULL,0,NULL,0,0),(5,4,4,NULL,0,NULL,0,NULL,0,0),(6,8,4,NULL,0,NULL,0,NULL,0,0),(7,8,5,NULL,0,NULL,0,NULL,0,0),(8,8,6,NULL,0,NULL,0,NULL,0,0),(9,10,5,NULL,0,NULL,0,NULL,0,0),(10,11,4,NULL,0,NULL,0,NULL,0,0),(11,11,5,NULL,0,NULL,0,NULL,0,0),(12,11,6,NULL,0,NULL,0,NULL,0,0),(13,12,4,NULL,0,NULL,0,NULL,0,0),(14,13,4,NULL,0,NULL,0,NULL,0,0),(15,14,4,NULL,0,NULL,0,NULL,0,1),(16,14,5,NULL,0,NULL,0,NULL,0,1),(17,14,6,NULL,0,NULL,0,NULL,0,1),(18,15,4,NULL,0,NULL,0,NULL,0,0),(19,16,4,NULL,0,NULL,0,NULL,0,0),(20,16,5,NULL,0,NULL,0,NULL,0,0),(21,16,6,NULL,0,NULL,0,NULL,0,0),(22,17,4,NULL,0,NULL,0,NULL,0,0),(23,17,5,NULL,0,NULL,0,NULL,0,0),(24,17,6,NULL,0,NULL,0,NULL,0,0),(25,18,4,NULL,0,NULL,0,NULL,0,0),(26,14,4,NULL,0,NULL,0,NULL,0,0),(27,14,5,NULL,0,NULL,0,NULL,0,0),(28,14,6,NULL,0,NULL,0,NULL,0,0),(29,20,4,NULL,0,NULL,0,NULL,0,0),(30,20,5,NULL,0,NULL,0,NULL,0,0),(31,20,6,NULL,0,NULL,0,NULL,0,0),(32,21,4,NULL,0,NULL,0,NULL,0,1),(33,21,5,NULL,0,NULL,0,NULL,0,1),(34,21,6,NULL,0,NULL,0,NULL,0,1),(35,21,4,NULL,0,NULL,0,NULL,0,1),(36,21,5,NULL,0,NULL,0,NULL,0,1),(37,21,6,NULL,0,NULL,0,NULL,0,1),(38,21,4,NULL,0,NULL,0,NULL,0,0),(39,21,5,NULL,0,NULL,0,NULL,0,0),(40,21,6,NULL,0,NULL,0,NULL,0,0),(41,22,6,NULL,0,NULL,0,NULL,0,0),(42,23,4,NULL,0,NULL,0,NULL,0,0);
/*!40000 ALTER TABLE `pkpt_surat_perintah_wilayah` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pkpt_type_pkpt`
--

DROP TABLE IF EXISTS `pkpt_type_pkpt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pkpt_type_pkpt` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pkpt_type_pkpt`
--

LOCK TABLES `pkpt_type_pkpt` WRITE;
/*!40000 ALTER TABLE `pkpt_type_pkpt` DISABLE KEYS */;
INSERT INTO `pkpt_type_pkpt` VALUES (1,'PKPT Tim','pkpt_tim',NULL,0,NULL,0,NULL,0,0),(2,'PKPT Banyak Tim','pkpt_banyak_tim',NULL,0,NULL,0,NULL,0,0),(3,'PKPT Non Tim','pkpt_non_tim',NULL,0,NULL,0,NULL,0,0),(4,'Non-PKPT','non_pkpt',NULL,0,NULL,0,NULL,0,0);
/*!40000 ALTER TABLE `pkpt_type_pkpt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `renstra_kegiatan`
--

DROP TABLE IF EXISTS `renstra_kegiatan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `renstra_kegiatan` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_program` int(11) NOT NULL,
  `kode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `renstra_kegiatan`
--

LOCK TABLES `renstra_kegiatan` WRITE;
/*!40000 ALTER TABLE `renstra_kegiatan` DISABLE KEYS */;
/*!40000 ALTER TABLE `renstra_kegiatan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `renstra_program`
--

DROP TABLE IF EXISTS `renstra_program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `renstra_program` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_organisasi` int(11) NOT NULL,
  `kode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `renstra_program`
--

LOCK TABLES `renstra_program` WRITE;
/*!40000 ALTER TABLE `renstra_program` DISABLE KEYS */;
/*!40000 ALTER TABLE `renstra_program` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rka_indikator_kinerja`
--

DROP TABLE IF EXISTS `rka_indikator_kinerja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rka_indikator_kinerja` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_rka` int(11) NOT NULL,
  `indikator` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rka_indikator_kinerja`
--

LOCK TABLES `rka_indikator_kinerja` WRITE;
/*!40000 ALTER TABLE `rka_indikator_kinerja` DISABLE KEYS */;
INSERT INTO `rka_indikator_kinerja` VALUES (1,1,'Capaian',NULL,0,NULL,0,NULL,0,0),(2,1,'Masukan',NULL,0,NULL,0,NULL,0,0),(3,1,'Keluaran',NULL,0,NULL,0,NULL,0,0),(4,1,'Dampak',NULL,0,NULL,0,NULL,0,0),(5,2,'Masukan',NULL,0,NULL,0,NULL,0,0),(6,2,'Keluaran',NULL,0,NULL,0,NULL,0,0),(7,2,'Dampak',NULL,0,NULL,0,NULL,0,0),(8,3,'Capaian',NULL,0,NULL,0,NULL,0,0),(9,3,'Masukan',NULL,0,NULL,0,NULL,0,0),(10,3,'Keluaran',NULL,0,NULL,0,NULL,0,0),(11,3,'Dampak',NULL,0,NULL,0,NULL,0,0);
/*!40000 ALTER TABLE `rka_indikator_kinerja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rka_indikator_kinerja_detail`
--

DROP TABLE IF EXISTS `rka_indikator_kinerja_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rka_indikator_kinerja_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_indikator_kinerja` int(11) NOT NULL,
  `tolak_ukur_kinerja` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_kinerja` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rka_indikator_kinerja_detail`
--

LOCK TABLES `rka_indikator_kinerja_detail` WRITE;
/*!40000 ALTER TABLE `rka_indikator_kinerja_detail` DISABLE KEYS */;
INSERT INTO `rka_indikator_kinerja_detail` VALUES (1,1,'Persentase Perangkat daerah Yang dilakukan Pengawasan','100 %',0),(2,2,'Dana/Anggaran','132.550.000 Rupiah',0),(3,3,'Jumlah perangkat daerah yang dilakukan Pemeriksaan Kinerja','8 laporan',0),(4,4,'Terwujudnya Pemerintahan yang Cerdas dan melayani (Smart government) untuk mencapai Indeks Reformasi Birokrasi pada akhir Tahun 2024','1 A',0),(5,5,'Dana/Anggaran','20.800.000 Rupiah',0),(6,6,'Laporan Hasil Monitoring','2 Laporan',0),(7,7,'Terwujudnya Pemerintahan yang Cerdas dan melayani (Smart government) untuk mencapai Indeks Reformasi Birokrasi pada akhir Tahun 2024','1 A',0),(8,8,'Persentase Perangkat daerah Yang dilakukan Pengawasan','100 %',0),(9,9,'Dana/Anggaran','132.550.000 Rupiah',0),(10,10,'Jumlah perangkat daerah yang dilakukan Pemeriksaan Kinerja','8 laporan',0),(11,11,'Terwujudnya Pemerintahan yang Cerdas dan melayani (Smart government) untuk mencapai Indeks Reformasi Birokrasi pada akhir Tahun 2024','1 A',0);
/*!40000 ALTER TABLE `rka_indikator_kinerja_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rka_kegiatan`
--

DROP TABLE IF EXISTS `rka_kegiatan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rka_kegiatan` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_program` int(11) NOT NULL,
  `kode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rka_kegiatan`
--

LOCK TABLES `rka_kegiatan` WRITE;
/*!40000 ALTER TABLE `rka_kegiatan` DISABLE KEYS */;
INSERT INTO `rka_kegiatan` VALUES (1,1,'402.40201.15.013','Pengawasan internal secara berkala','2020-06-11 21:50:17',0,'2020-06-11 21:50:17',0,NULL,0,0),(2,1,'402.40201.15.004','Reviu Laporan Keuangan Pemerintah Daerah','2020-06-11 21:52:55',0,'2020-06-11 21:52:55',0,NULL,0,0);
/*!40000 ALTER TABLE `rka_kegiatan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rka_program`
--

DROP TABLE IF EXISTS `rka_program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rka_program` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_organisasi` int(11) NOT NULL,
  `kode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rka_program`
--

LOCK TABLES `rka_program` WRITE;
/*!40000 ALTER TABLE `rka_program` DISABLE KEYS */;
INSERT INTO `rka_program` VALUES (1,1,'402.15','Peningkatan Sistem Pengawasan Internal dan Pengendalian Pelaksanaan Kebijakan KDH',NULL,0,NULL,0,NULL,0,0);
/*!40000 ALTER TABLE `rka_program` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rka_rincian_anggaran`
--

DROP TABLE IF EXISTS `rka_rincian_anggaran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rka_rincian_anggaran` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_rka` int(11) NOT NULL,
  `id_kode_rekening` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rka_rincian_anggaran`
--

LOCK TABLES `rka_rincian_anggaran` WRITE;
/*!40000 ALTER TABLE `rka_rincian_anggaran` DISABLE KEYS */;
INSERT INTO `rka_rincian_anggaran` VALUES (1,1,1,132550000),(2,1,2,132550000),(3,1,3,17300000),(4,1,4,14700000),(5,1,5,2600000),(6,1,6,115250000),(7,1,7,115250000),(8,2,1,20800000),(9,2,2,20800000),(10,2,3,2800000),(11,2,4,655000),(12,2,5,2145000),(13,2,6,18000000),(14,2,7,18000000),(15,3,1,132550000),(16,3,2,132550000),(17,3,3,17300000),(18,3,4,14700000),(19,3,5,2600000),(20,3,6,115250000),(21,3,7,115250000);
/*!40000 ALTER TABLE `rka_rincian_anggaran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rka_rincian_anggaran_detail`
--

DROP TABLE IF EXISTS `rka_rincian_anggaran_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rka_rincian_anggaran_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_rincian_anggaran` int(11) NOT NULL,
  `uraian` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `volume` int(11) NOT NULL,
  `id_satuan` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rka_rincian_anggaran_detail`
--

LOCK TABLES `rka_rincian_anggaran_detail` WRITE;
/*!40000 ALTER TABLE `rka_rincian_anggaran_detail` DISABLE KEYS */;
INSERT INTO `rka_rincian_anggaran_detail` VALUES (1,4,'Belanja Cetak',0,0,0,14700000,0),(2,4,'- Cetak NHP dan LHP',160,1,60000,9600000,0),(3,4,'- Cetak Hasil Reviu Perencanaan dan Penganggaran',32,1,60000,1920000,0),(4,4,'- Cetak Buku Tindak Lanjut Hasil Pemeriksaan',13,1,60000,780000,0),(5,4,'- Cetak PKPT, Revisi PKPT, Risk Register, GAP',40,1,60000,2400000,0),(6,5,'- Belanja Penggandaan',13000,2,200,2600000,0),(7,7,'Belanja Jasa Narasumber Pengajar PNS - Reviu Perencanaan dan Penganggaran',0,0,0,40000000,0),(8,7,'- Narasumber (esselon 3/fungsional)',40,3,1000000,40000000,0),(9,7,'Belanja Jasa Narasumber Pengajar PNS - Pendampingan Pemeriksan',0,0,0,64000000,0),(10,7,'- Narasumber (esselon 3/fungsional)',64,3,1000000,64000000,0),(11,7,'Belanja Jasa Narasumber Pengajar PNS - Gelar Pengawasan',0,0,0,11250000,0),(12,7,'- Narasumber (esselon 2/fungsional)',9,3,1250000,11250000,0),(13,11,'- Cetak Laporan Hasil Reviu',8,1,60000,480000,0),(14,11,'- Cetak Laporan Kegiatan',5,1,35000,175000,0),(15,12,'- Fotocopy',10725,2,200,2145000,0),(16,14,'Belanja Narasumber Reviu LKPD',0,0,0,18000000,0),(17,14,'- Honor Narasumber Pendampingan Eselon III/Fungsional  ( 2 Orang X 9 Jam)',18,3,1000000,18000000,0),(18,18,'Belanja Cetak',0,0,0,14700000,0),(19,18,'- Cetak NHP dan LHP',160,1,60000,9600000,0),(20,18,'- Cetak Hasil Reviu Perencanaan dan Penganggaran',32,1,60000,1920000,0),(21,18,'- Cetak Buku Tindak Lanjut Hasil Pemeriksaan',13,1,60000,780000,0),(22,18,'- Cetak PKPT, Revisi PKPT, Risk Register, GAP',40,1,60000,2400000,0),(23,19,'- Belanja Penggandaan',13000,2,200,2600000,0),(24,21,'Belanja Jasa Narasumber Pengajar PNS - Reviu Perencanaan dan Penganggaran',0,0,0,40000000,0),(25,21,'- Narasumber (esselon 3/fungsional)',40,3,1000000,40000000,0),(26,21,'Belanja Jasa Narasumber Pengajar PNS - Pendampingan Pemeriksan',0,0,0,64000000,0),(27,21,'- Narasumber (esselon 3/fungsional)',64,3,1000000,64000000,0),(28,21,'Belanja Jasa Narasumber Pengajar PNS - Gelar Pengawasan',0,0,0,11250000,0),(29,21,'- Narasumber (esselon 2/fungsional)',9,3,1250000,11250000,0);
/*!40000 ALTER TABLE `rka_rincian_anggaran_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rka_rka`
--

DROP TABLE IF EXISTS `rka_rka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rka_rka` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_urusan_pemerintahan` int(11) NOT NULL,
  `id_organisasi` int(11) NOT NULL,
  `id_program` int(11) NOT NULL,
  `id_kegiatan` int(11) NOT NULL,
  `lokasi_kegiatan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktu_pelaksanaan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sumber_dana` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `n_min` int(11) NOT NULL,
  `n` int(11) NOT NULL,
  `n_max` int(11) NOT NULL,
  `n_min_year` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rka_rka`
--

LOCK TABLES `rka_rka` WRITE;
/*!40000 ALTER TABLE `rka_rka` DISABLE KEYS */;
INSERT INTO `rka_rka` VALUES (1,1,1,1,1,'KOTA BOGOR','','',215225000,132550000,225000000,2019,NULL,0,NULL,0,NULL,0,0),(2,1,1,1,2,'KOTA BOGOR','','',5650000,20800000,150000000,2019,NULL,0,NULL,0,NULL,0,0),(3,1,1,1,1,'KOTA BOGOR','','',215225000,132550000,225000000,2019,NULL,0,NULL,0,NULL,0,0);
/*!40000 ALTER TABLE `rka_rka` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sp_langkah_kerja_pemeriksaan`
--

DROP TABLE IF EXISTS `sp_langkah_kerja_pemeriksaan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sp_langkah_kerja_pemeriksaan` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_surat_perintah` int(11) NOT NULL,
  `judul_tugas` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_judul_tugas` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `tujuan_pemeriksaan` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sp_langkah_kerja_pemeriksaan`
--

LOCK TABLES `sp_langkah_kerja_pemeriksaan` WRITE;
/*!40000 ALTER TABLE `sp_langkah_kerja_pemeriksaan` DISABLE KEYS */;
INSERT INTO `sp_langkah_kerja_pemeriksaan` VALUES (1,1,'tes judul tugas','sub judul 2','tes judul pemeriksaan','2020-11-10 01:22:32',1,'2020-11-10 01:22:32',1,NULL,0,0),(2,5,'ini judul tugas','ini sub judul tugas 1','ini tujuan pemeriksaan','2020-11-29 07:04:50',9,'2020-11-29 07:04:50',9,NULL,0,0),(3,6,'contoh judul tugas','sub judul tugas 1','contoh tujuan pemeriksaan','2020-12-02 18:40:57',1,'2020-12-02 18:40:57',1,NULL,0,0),(4,8,'Judul Tugas','Sub Judul Tugas 1','Tujuan Pemeriksaan','2020-12-07 07:15:28',13,'2020-12-07 07:15:28',13,NULL,0,0),(5,12,'Tugas 1','Sub Judul Tugas 1','Tujuan Pemeriksaan 1','2020-12-09 20:07:06',1,'2020-12-09 20:07:06',1,NULL,0,0),(6,15,'Lorem ipsum dolor sit amet, ','Lorem ipsum dolor sit amet, consectetur ','Lorem ipsum dolor sit ','2021-01-19 07:44:33',1,'2021-01-19 07:44:33',1,NULL,0,0),(7,18,'judul tugas','sub judul tugas 1','tujuan pemeriksaan','2021-01-20 08:35:07',1,'2021-01-20 08:35:07',1,NULL,0,0),(8,23,'tes','tes','testing','2021-02-08 07:20:00',1,'2021-02-08 07:20:00',1,NULL,0,0);
/*!40000 ALTER TABLE `sp_langkah_kerja_pemeriksaan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sp_langkah_kerja_pemeriksaan_prosedur`
--

DROP TABLE IF EXISTS `sp_langkah_kerja_pemeriksaan_prosedur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sp_langkah_kerja_pemeriksaan_prosedur` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_lkp` int(11) NOT NULL,
  `prosedur` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sp_langkah_kerja_pemeriksaan_prosedur`
--

LOCK TABLES `sp_langkah_kerja_pemeriksaan_prosedur` WRITE;
/*!40000 ALTER TABLE `sp_langkah_kerja_pemeriksaan_prosedur` DISABLE KEYS */;
INSERT INTO `sp_langkah_kerja_pemeriksaan_prosedur` VALUES (1,1,'tes uraian','2020-11-10 01:22:32',1,'2020-11-10 01:22:32',1,NULL,0,0),(2,2,'prosedur 1','2020-11-29 07:04:50',9,'2020-11-29 07:04:50',9,NULL,0,0),(3,3,'prosedur 1','2020-12-02 18:40:57',1,'2020-12-02 18:40:57',1,NULL,0,0),(4,3,'prosedur 2','2020-12-02 18:40:57',1,'2020-12-02 18:40:57',1,NULL,0,0),(5,4,'Prosedur Pemeriksaan 1','2020-12-07 07:15:28',13,'2020-12-07 07:15:28',13,NULL,0,0),(6,4,'Prosedur Pemeriksaan 2','2020-12-07 07:15:28',13,'2020-12-07 07:15:28',13,NULL,0,0),(7,5,'Prosedur Pemeriksaan 1','2020-12-09 20:07:06',1,'2020-12-09 20:07:06',1,NULL,0,0),(8,5,'Prosedur Pemeriksaan 2','2020-12-09 20:07:06',1,'2020-12-09 20:07:06',1,NULL,0,0),(9,6,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam','2021-01-19 07:44:33',1,'2021-01-19 07:44:33',1,NULL,0,0),(10,7,'prosedur pemeriksaan 1','2021-01-20 08:35:07',1,'2021-01-20 08:35:07',1,NULL,0,0),(11,7,'prosedur pemeriksaan 2','2021-01-20 08:35:07',1,'2021-01-20 08:35:07',1,NULL,0,0),(12,8,'testing 1','2021-02-08 07:20:00',1,'2021-02-08 07:20:00',1,NULL,0,0),(13,8,'testing 2','2021-02-08 07:20:00',1,'2021-02-08 07:20:00',1,NULL,0,0);
/*!40000 ALTER TABLE `sp_langkah_kerja_pemeriksaan_prosedur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sp_langkah_kerja_pemeriksaan_prosedur_detail`
--

DROP TABLE IF EXISTS `sp_langkah_kerja_pemeriksaan_prosedur_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sp_langkah_kerja_pemeriksaan_prosedur_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_prosedur` int(11) NOT NULL,
  `prosedur_detail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sp_langkah_kerja_pemeriksaan_prosedur_detail`
--

LOCK TABLES `sp_langkah_kerja_pemeriksaan_prosedur_detail` WRITE;
/*!40000 ALTER TABLE `sp_langkah_kerja_pemeriksaan_prosedur_detail` DISABLE KEYS */;
INSERT INTO `sp_langkah_kerja_pemeriksaan_prosedur_detail` VALUES (1,1,'tes detail uraian','2020-11-10 01:22:32',1,'2020-11-10 01:22:32',1,NULL,0,0),(2,2,'detail prosedurnya 1','2020-11-29 07:04:50',9,'2020-11-29 07:04:50',9,NULL,0,0),(3,2,'detail prosedurnya 2','2020-11-29 07:04:50',9,'2020-11-29 07:04:50',9,NULL,0,0),(4,3,'detail 1','2020-12-02 18:40:57',1,'2020-12-02 18:40:57',1,NULL,0,0),(5,3,'detail 2','2020-12-02 18:40:57',1,'2020-12-02 18:40:57',1,NULL,0,0),(6,4,'detail 1','2020-12-02 18:40:57',1,'2020-12-02 18:40:57',1,NULL,0,0),(7,5,'Detail 1','2020-12-07 07:15:28',13,'2020-12-07 07:15:28',13,NULL,0,0),(8,5,'Detail 2','2020-12-07 07:15:28',13,'2020-12-07 07:15:28',13,NULL,0,0),(9,6,'Detail 1','2020-12-07 07:15:28',13,'2020-12-07 07:15:28',13,NULL,0,0),(10,6,'Detail 2','2020-12-07 07:15:28',13,'2020-12-07 07:15:28',13,NULL,0,0),(11,7,'Detail Prosedur Pemeriksaan 1','2020-12-09 20:07:06',1,'2020-12-09 20:07:06',1,NULL,0,0),(12,7,'Detail Prosedur Pemeriksaan 2','2020-12-09 20:07:06',1,'2020-12-09 20:07:06',1,NULL,0,0),(13,8,'Detail Prosedur Pemeriksaan 3','2020-12-09 20:07:06',1,'2020-12-09 20:07:06',1,NULL,0,0),(14,10,'detail prosedur pemeriksaan 1','2021-01-20 08:35:07',1,'2021-01-20 08:35:07',1,NULL,0,0),(15,11,'detail prosedur pemeriksaan 2','2021-01-20 08:35:07',1,'2021-01-20 08:35:07',1,NULL,0,0),(16,12,'testing 1.1','2021-02-08 07:20:00',1,'2021-02-08 07:20:00',1,NULL,0,0),(17,13,'testing 2.2','2021-02-08 07:20:00',1,'2021-02-08 07:20:00',1,NULL,0,0);
/*!40000 ALTER TABLE `sp_langkah_kerja_pemeriksaan_prosedur_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sp_langkah_kerja_pemeriksaan_prosedur_pelaksana`
--

DROP TABLE IF EXISTS `sp_langkah_kerja_pemeriksaan_prosedur_pelaksana`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sp_langkah_kerja_pemeriksaan_prosedur_pelaksana` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_prosedur` int(11) NOT NULL,
  `id_pelaksana_rencana` int(11) NOT NULL,
  `id_pelaksana_realisasi` int(11) NOT NULL,
  `durasi_rencana` int(11) NOT NULL,
  `durasi_realisasi` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sp_langkah_kerja_pemeriksaan_prosedur_pelaksana`
--

LOCK TABLES `sp_langkah_kerja_pemeriksaan_prosedur_pelaksana` WRITE;
/*!40000 ALTER TABLE `sp_langkah_kerja_pemeriksaan_prosedur_pelaksana` DISABLE KEYS */;
INSERT INTO `sp_langkah_kerja_pemeriksaan_prosedur_pelaksana` VALUES (1,3,6,6,0,0,'2020-12-02 18:40:57',1,'2020-12-02 18:40:57',1,NULL,0,0),(2,4,7,7,0,0,'2020-12-02 18:40:57',1,'2020-12-02 18:40:57',1,NULL,0,0),(3,5,6,6,0,0,'2020-12-07 07:15:28',13,'2020-12-07 07:15:28',13,NULL,0,0),(4,6,7,7,0,0,'2020-12-07 07:15:28',13,'2020-12-07 07:15:28',13,NULL,0,0),(5,7,20,20,2,0,'2020-12-09 20:07:06',1,'2020-12-09 20:07:06',1,NULL,0,0),(6,8,22,20,2,0,'2020-12-09 20:07:06',1,'2020-12-09 20:07:06',1,NULL,0,0),(7,9,19,48,1,1,'2021-01-19 07:44:33',1,'2021-01-19 07:44:33',1,NULL,0,0),(8,10,6,6,6,6,'2021-01-20 08:35:07',1,'2021-01-20 08:35:07',1,NULL,0,0),(9,11,4,4,6,6,'2021-01-20 08:35:07',1,'2021-01-20 08:35:07',1,NULL,0,0),(10,12,13,13,0,0,'2021-02-08 07:20:00',1,'2021-02-08 07:20:00',1,NULL,0,0),(11,13,5,5,0,0,'2021-02-08 07:20:00',1,'2021-02-08 07:20:00',1,NULL,0,0);
/*!40000 ALTER TABLE `sp_langkah_kerja_pemeriksaan_prosedur_pelaksana` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sp_langkah_kerja_pemeriksaan_review`
--

DROP TABLE IF EXISTS `sp_langkah_kerja_pemeriksaan_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sp_langkah_kerja_pemeriksaan_review` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_langkah_kerja_pemeriksaan` int(11) NOT NULL,
  `isi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sp_langkah_kerja_pemeriksaan_review`
--

LOCK TABLES `sp_langkah_kerja_pemeriksaan_review` WRITE;
/*!40000 ALTER TABLE `sp_langkah_kerja_pemeriksaan_review` DISABLE KEYS */;
INSERT INTO `sp_langkah_kerja_pemeriksaan_review` VALUES (1,4,'','2020-12-07 15:16:34',0,'2020-12-07 15:16:34',0,NULL,0,0),(2,5,'<p>ganti tugas 1 menjadi tugas 1+1</p>','2020-12-09 20:21:02',0,'2020-12-09 20:24:31',0,NULL,0,1);
/*!40000 ALTER TABLE `sp_langkah_kerja_pemeriksaan_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sp_langkah_kerja_pemeriksaan_sub_judul`
--

DROP TABLE IF EXISTS `sp_langkah_kerja_pemeriksaan_sub_judul`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sp_langkah_kerja_pemeriksaan_sub_judul` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_lkp` int(11) NOT NULL,
  `sub_judul` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sp_langkah_kerja_pemeriksaan_sub_judul`
--

LOCK TABLES `sp_langkah_kerja_pemeriksaan_sub_judul` WRITE;
/*!40000 ALTER TABLE `sp_langkah_kerja_pemeriksaan_sub_judul` DISABLE KEYS */;
INSERT INTO `sp_langkah_kerja_pemeriksaan_sub_judul` VALUES (1,2,'ini sub judul tugas 2','2020-11-29 07:04:50',9,'2020-11-29 07:04:50',9,NULL,0,0),(2,4,'Sub Judul Tugas 2','2020-12-07 07:15:28',13,'2020-12-07 07:15:28',13,NULL,0,0),(3,5,'Sub Judul Tugas 2','2020-12-09 20:07:06',1,'2020-12-09 20:07:06',1,'2021-01-18 03:50:02',1,1),(4,5,'Sub Judul Tugas 2','2021-01-18 03:50:02',1,'2021-01-18 03:50:02',1,NULL,0,0),(5,7,'sub judul tugas 2','2021-01-20 08:35:07',1,'2021-01-20 08:35:07',1,NULL,0,0);
/*!40000 ALTER TABLE `sp_langkah_kerja_pemeriksaan_sub_judul` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sp_penentuan_sasaran_tujuan`
--

DROP TABLE IF EXISTS `sp_penentuan_sasaran_tujuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sp_penentuan_sasaran_tujuan` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_surat_perintah` int(11) NOT NULL,
  `id_sasaran_tujuan` int(11) NOT NULL,
  `isi` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sp_penentuan_sasaran_tujuan`
--

LOCK TABLES `sp_penentuan_sasaran_tujuan` WRITE;
/*!40000 ALTER TABLE `sp_penentuan_sasaran_tujuan` DISABLE KEYS */;
INSERT INTO `sp_penentuan_sasaran_tujuan` VALUES (1,1,1,'<p>adawdakwfhkahwdhaksjhdkajhfkajhwjdhakjhjkshfkajhwkjhdkjahkshkfjhakjhkdjhajhwdtes</p>','2020-11-10 01:19:22',1,'2020-11-19 13:25:22',0,NULL,0,1),(2,1,2,'<p>awdjkajhskjfhakwduhasdjhakwudhk</p>','2020-11-10 01:19:22',1,'2020-11-19 13:25:22',0,NULL,0,1),(3,1,3,'<p>awdasnfanw,ndauwndamsbfmabwdaw</p>','2020-11-10 01:19:22',1,'2020-11-19 13:25:22',0,NULL,0,1),(4,1,4,'<p>gwfyawdaawda,snfambwfbawjygdansvdanbvy</p>','2020-11-10 01:19:22',1,'2020-11-19 13:25:22',0,NULL,0,1),(5,1,5,'<p>awdasfawdasdawfsegseffawdasdaf</p>','2020-11-10 01:19:22',1,'2020-11-19 13:25:22',0,NULL,0,1),(6,1,1,'<p>adawdakwfhkahwdhaksjhdkajhfkajhwjdhakjhjkshfkajhwkjhdkjahkshkfjhakjhkdjhajhwdtes</p>','2020-11-10 01:19:31',1,'2020-11-19 13:25:22',0,NULL,0,1),(7,1,2,'<p>awdjkajhskjfhakwduhasdjhakwudhk</p>','2020-11-10 01:19:31',1,'2020-11-19 13:25:22',0,NULL,0,1),(8,1,3,'<p>awdasnfanw,ndauwndamsbfmabwdaw</p>','2020-11-10 01:19:31',1,'2020-11-19 13:25:22',0,NULL,0,1),(9,1,4,'<p>gwfyawdaawda,snfambwfbawjygdansvdanbvy</p>','2020-11-10 01:19:31',1,'2020-11-19 13:25:22',0,NULL,0,1),(10,1,5,'<p>awdasfawdasdawfsegseffawdasdaf</p>','2020-11-10 01:19:31',1,'2020-11-19 13:25:22',0,NULL,0,1),(11,1,1,'<p>jkjawldjalhfalhwdkhalkhsdlkajlkjwldkjalkdj</p>','2020-11-10 07:54:16',1,'2020-11-19 13:25:22',0,NULL,0,1),(12,1,2,'<p>awdjkajhskjfhakwduhasdjhakwudhk</p>','2020-11-10 07:54:16',1,'2020-11-19 13:25:22',0,NULL,0,1),(13,1,3,'<p>awdasnfanw,ndauwndamsbfmabwdaw</p>','2020-11-10 07:54:16',1,'2020-11-19 13:25:22',0,NULL,0,1),(14,1,4,'<p>gwfyawdaawda,snfambwfbawjygdansvdanbvy</p>','2020-11-10 07:54:16',1,'2020-11-19 13:25:22',0,NULL,0,1),(15,1,5,'<p>jaanwdjawhjahsjdhakwjhdjkahsjkfhakjhwda</p>','2020-11-10 07:54:16',1,'2020-11-19 13:25:22',0,NULL,0,1),(16,1,1,'<p>jkjawldjalhfalhwdkhalkhsdlkajlkjwldkjalkdj</p>','2020-11-19 13:25:22',1,'2020-11-19 13:25:22',0,NULL,0,0),(17,1,2,'<p>awdjkajhskjfhakwduhasdjhakwudhk</p>','2020-11-19 13:25:22',1,'2020-11-19 13:25:22',0,NULL,0,0),(18,1,3,'<p>awdasnfanw,ndauwndamsbfmabwdaw</p>','2020-11-19 13:25:22',1,'2020-11-19 13:25:22',0,NULL,0,0),(19,1,4,'<p>gwfyawdaawda,snfambwfbawjygdansvdanbvy</p>','2020-11-19 13:25:22',1,'2020-11-19 13:25:22',0,NULL,0,0),(20,1,5,'<p>jaanwdjawhjahsjdhakwjhdjkahsjkfhakjhwda</p>','2020-11-19 13:25:22',1,'2020-11-19 13:25:22',0,NULL,0,0),(21,5,1,'<p>Ini isi Daftar Pemeriksaan Tujuan Tertentu</p>','2020-11-29 06:33:56',9,'2020-11-29 06:33:56',0,NULL,0,0),(22,5,2,'<p>Ini isi Ruang Lingkup</p>','2020-11-29 06:33:56',9,'2020-11-29 06:33:56',0,NULL,0,0),(23,5,3,'<p>Ini Isi Tujuan Audit</p>','2020-11-29 06:33:56',9,'2020-11-29 06:33:56',0,NULL,0,0),(24,5,4,'<p>Ini isi Metodelogi Audit</p>','2020-11-29 06:33:56',9,'2020-11-29 06:33:56',0,NULL,0,0),(25,5,5,'<p>Ini Isi Tahapan Audit</p>','2020-11-29 06:33:56',9,'2020-11-29 06:33:56',0,NULL,0,0),(26,6,1,'<p>ini isian dari daftar pemeriksaan tujuan tertentu</p>','2020-12-02 18:38:46',1,'2020-12-02 18:38:46',0,NULL,0,0),(27,6,2,'<p>ini isian dari ruang lingkup</p>','2020-12-02 18:38:46',1,'2020-12-02 18:38:46',0,NULL,0,0),(28,6,3,'<p>ini isian dari tujuan audit</p>','2020-12-02 18:38:46',1,'2020-12-02 18:38:46',0,NULL,0,0),(29,6,4,'<p>ini isian dari metodelogi audit</p>','2020-12-02 18:38:46',1,'2020-12-02 18:38:46',0,NULL,0,0),(30,6,5,'<p>ini isian dari tahapan audit</p>','2020-12-02 18:38:46',1,'2020-12-02 18:38:46',0,NULL,0,0),(31,8,1,'<p>&nbsp;Ini adalah isian dari Dasar Pemeriksaan Tujuan Tertentu</p>','2020-12-07 07:03:06',11,'2020-12-07 07:03:06',0,NULL,0,0),(32,8,2,'<p>Ini adalah isian dari Ruang Lingkup</p>','2020-12-07 07:03:06',11,'2020-12-07 07:03:06',0,NULL,0,0),(33,8,3,'<p>Ini adalah isian dari Tujuan Audit</p>','2020-12-07 07:03:06',11,'2020-12-07 07:03:06',0,NULL,0,0),(34,8,4,'<p>Ini adalah isian dari Metodelogi Audit</p>','2020-12-07 07:03:06',11,'2020-12-07 07:03:06',0,NULL,0,0),(35,8,5,'<p>Ini adalah isian dari Tahapan Audit</p>','2020-12-07 07:03:06',11,'2020-12-07 07:03:06',0,NULL,0,0),(36,12,1,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>','2020-12-09 19:08:58',1,'2020-12-21 07:22:22',0,NULL,0,1),(37,12,2,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>','2020-12-09 19:08:58',1,'2020-12-21 07:22:22',0,NULL,0,1),(38,12,3,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>','2020-12-09 19:08:58',1,'2020-12-21 07:22:22',0,NULL,0,1),(39,12,4,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>','2020-12-09 19:08:58',1,'2020-12-21 07:22:22',0,NULL,0,1),(40,12,5,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>','2020-12-09 19:08:58',1,'2020-12-21 07:22:22',0,NULL,0,1),(41,12,1,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>','2020-12-21 07:22:22',1,'2020-12-21 07:22:22',0,NULL,0,0),(42,12,2,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>','2020-12-21 07:22:22',1,'2020-12-21 07:22:22',0,NULL,0,0),(43,12,3,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>','2020-12-21 07:22:22',1,'2020-12-21 07:22:22',0,NULL,0,0),(44,12,4,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>','2020-12-21 07:22:22',1,'2020-12-21 07:22:22',0,NULL,0,0),(45,12,5,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>','2020-12-21 07:22:22',1,'2020-12-21 07:22:22',0,NULL,0,0),(46,13,1,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>','2021-01-19 07:25:27',1,'2021-01-19 07:25:27',0,NULL,0,0),(47,13,2,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>','2021-01-19 07:25:27',1,'2021-01-19 07:25:27',0,NULL,0,0),(48,13,3,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>','2021-01-19 07:25:27',1,'2021-01-19 07:25:27',0,NULL,0,0),(49,13,4,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>','2021-01-19 07:25:27',1,'2021-01-19 07:25:27',0,NULL,0,0),(50,13,5,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>','2021-01-19 07:25:27',1,'2021-01-19 07:25:27',0,NULL,0,0),(51,15,1,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>','2021-01-19 07:43:34',1,'2021-01-19 07:43:34',0,NULL,0,0),(52,15,2,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>','2021-01-19 07:43:34',1,'2021-01-19 07:43:34',0,NULL,0,0),(53,15,3,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>','2021-01-19 07:43:34',1,'2021-01-19 07:43:34',0,NULL,0,0),(54,15,4,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>','2021-01-19 07:43:34',1,'2021-01-19 07:43:34',0,NULL,0,0),(55,15,5,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>','2021-01-19 07:43:34',1,'2021-01-19 07:43:34',0,NULL,0,0),(56,18,1,'<p>ini di isikan sasaran tujuan</p>','2021-01-20 08:18:46',1,'2021-01-20 08:28:48',0,NULL,0,1),(57,18,2,'<p>ini di isikan ruang lingkup</p>','2021-01-20 08:18:46',1,'2021-01-20 08:28:48',0,NULL,0,1),(58,18,3,'<p>ini di isikan tujuan audit</p>','2021-01-20 08:18:46',1,'2021-01-20 08:28:48',0,NULL,0,1),(59,18,4,'<p>ini di isikan metodologi audit</p>','2021-01-20 08:18:46',1,'2021-01-20 08:28:48',0,NULL,0,1),(60,18,5,'<p>ini di isikan tahapan audit</p>','2021-01-20 08:18:46',1,'2021-01-20 08:28:48',0,NULL,0,1),(61,18,1,'<p>ini di isikan sasaran tujuan</p>','2021-01-20 08:28:48',10,'2021-01-20 08:28:48',0,NULL,0,0),(62,18,2,'<p>ini di isikan ruang lingkup</p>','2021-01-20 08:28:48',10,'2021-01-20 08:28:48',0,NULL,0,0),(63,18,3,'<p>ini di isikan tujuan audit</p>','2021-01-20 08:28:48',10,'2021-01-20 08:28:48',0,NULL,0,0),(64,18,4,'<p>ini di isikan metodologi audit</p>','2021-01-20 08:28:48',10,'2021-01-20 08:28:48',0,NULL,0,0),(65,18,5,'<p>ini di isikan tahapan audit</p>','2021-01-20 08:28:48',10,'2021-01-20 08:28:48',0,NULL,0,0),(66,23,1,'<p>qdwdjkuawkudahwd</p>','2021-02-08 07:18:48',1,'2021-02-08 07:18:48',0,NULL,0,0),(67,23,2,'<p>awdawdawawd</p>','2021-02-08 07:18:48',1,'2021-02-08 07:18:48',0,NULL,0,0),(68,23,3,'<p>wadawdawdawd</p>','2021-02-08 07:18:48',1,'2021-02-08 07:18:48',0,NULL,0,0),(69,23,4,'<p>awdawdawdawd</p>','2021-02-08 07:18:48',1,'2021-02-08 07:18:48',0,NULL,0,0),(70,23,5,'<p>awdawdawdawda</p>','2021-02-08 07:18:48',1,'2021-02-08 07:18:48',0,NULL,0,0);
/*!40000 ALTER TABLE `sp_penentuan_sasaran_tujuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sp_program_kerja_audit`
--

DROP TABLE IF EXISTS `sp_program_kerja_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sp_program_kerja_audit` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_surat_perintah` int(11) NOT NULL,
  `id_program_kerja_audit` int(11) NOT NULL,
  `isi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sp_program_kerja_audit`
--

LOCK TABLES `sp_program_kerja_audit` WRITE;
/*!40000 ALTER TABLE `sp_program_kerja_audit` DISABLE KEYS */;
INSERT INTO `sp_program_kerja_audit` VALUES (1,1,1,'<p>jwkdjakwhfkahjwhdkahskjfhakgshfagwhjdgjasgjhdgajhwgdawdsd</p>','2020-11-10 01:22:32',1,'2020-11-10 01:22:32',0,NULL,0,1),(2,1,2,'<p>awfasdhajshdjkhaygfaygjfagsdgahwdtfasgdfgahwdasd</p>','2020-11-10 01:22:32',1,'2020-11-10 01:22:32',0,NULL,0,1),(3,1,3,'<p>ashkfhajshfkjashkdhajshdkjhajkshfkjhaskjhdkjahjksd</p>','2020-11-10 01:22:32',1,'2020-11-10 01:22:32',0,NULL,0,1),(4,1,4,'<p>asfjahsjhfkjahkshdkwfgyjasgahgwjhdgahsdwda</p>','2020-11-10 01:22:32',1,'2020-11-10 01:22:32',0,NULL,0,1),(5,1,5,'<p>afskhfkjhawkfagsdjgahwgdjygashjgfjhagwjydgashgdawd</p>','2020-11-10 01:22:32',1,'2020-11-10 01:22:32',0,NULL,0,1),(6,5,1,'<p>ini isinya judul</p>','2020-11-29 07:04:50',9,'2020-11-29 07:04:50',0,NULL,0,0),(7,5,2,'<p>ini isinya pendahuluan</p>','2020-11-29 07:04:50',9,'2020-11-29 07:04:50',0,NULL,0,0),(8,5,3,'<p>ini isinya tujuan pemeriksaan</p>','2020-11-29 07:04:50',9,'2020-11-29 07:04:50',0,NULL,0,0),(9,5,4,'<p>ini isinya ruang lingkup pemeriksaan</p>','2020-11-29 07:04:50',9,'2020-11-29 07:04:50',0,NULL,0,0),(10,5,5,'<p>ini isinya waktu pelaksanaan</p>','2020-11-29 07:04:50',9,'2020-11-29 07:04:50',0,NULL,0,0),(11,6,1,'<p>ini isian dari judul</p>','2020-12-02 19:48:04',13,'2020-12-02 19:48:04',0,NULL,0,1),(12,6,2,'<p>ini isian dari pendahuluan</p>','2020-12-02 19:48:04',13,'2020-12-02 19:48:04',0,NULL,0,1),(13,6,3,'<p>ini isian dari tujuan pemeriksaan</p>','2020-12-02 19:48:04',13,'2020-12-02 19:48:04',0,NULL,0,1),(14,6,4,'<p>ini isian dari ruang lingkup pemeriksaan</p>','2020-12-02 19:48:04',13,'2020-12-02 19:48:04',0,NULL,0,1),(15,6,5,'<p>ini isian dari waktu pelaksanaan</p>','2020-12-02 19:48:04',13,'2020-12-02 19:48:04',0,NULL,0,1),(16,8,1,'<p>ini adalah isian dari Judul</p>','2020-12-07 07:15:28',13,'2020-12-07 07:15:28',0,NULL,0,0),(17,8,2,'<p>ini adalah isian dari Pendahuluan</p>','2020-12-07 07:15:28',13,'2020-12-07 07:15:28',0,NULL,0,0),(18,8,3,'<p>ini adalah isian dari Tujuan Pemeriksaan</p>','2020-12-07 07:15:28',13,'2020-12-07 07:15:28',0,NULL,0,0),(19,8,4,'<p>ini adalah isian dari Ruang Lingkup Pemeriksaan</p>','2020-12-07 07:15:28',13,'2020-12-07 07:15:28',0,NULL,0,0),(20,8,5,'<p>ini adalah isian dari Waktu Pelaksanaan</p>','2020-12-07 07:15:28',13,'2020-12-07 07:15:28',0,NULL,0,0),(21,12,1,'<p>Judul 1 Lorem ipsum dolor sit amet, c</p>\r\n\r\n<p>&nbsp;</p>','2021-01-18 03:50:02',1,'2021-01-18 03:50:02',0,NULL,0,1),(22,12,2,'<p>Pendahuluan 1 Lorem ipsum dolor sit amet,</p>','2021-01-18 03:50:02',1,'2021-01-18 03:50:02',0,NULL,0,1),(23,12,3,'<p>Tujuan Pemeriksaan 1 Lorem ipsum dolor sit amet,</p>','2021-01-18 03:50:02',1,'2021-01-18 03:50:02',0,NULL,0,1),(24,12,4,'<p>Ruang Lingkup Pemeriksaan 1 Lorem ipsum dolor sit amet,</p>','2021-01-18 03:50:02',1,'2021-01-18 03:50:02',0,NULL,0,1),(25,12,5,'<p>Waktu Pelaksanaan 1 Lorem ipsum dolor sit amet,</p>','2021-01-18 03:50:02',1,'2021-01-18 03:50:02',0,NULL,0,1),(26,15,1,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>','2021-01-19 07:44:33',1,'2021-01-19 07:44:33',0,NULL,0,0),(27,15,2,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>','2021-01-19 07:44:33',1,'2021-01-19 07:44:33',0,NULL,0,0),(28,15,3,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>','2021-01-19 07:44:33',1,'2021-01-19 07:44:33',0,NULL,0,0),(29,15,4,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>','2021-01-19 07:44:33',1,'2021-01-19 07:44:33',0,NULL,0,0),(30,15,5,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>','2021-01-19 07:44:33',1,'2021-01-19 07:44:33',0,NULL,0,0),(31,18,1,'<p>ini di isikan judul</p>','2021-01-20 08:35:07',1,'2021-01-20 08:35:07',0,NULL,0,0),(32,18,2,'<p>ini di isikan pendahuluan</p>','2021-01-20 08:35:07',1,'2021-01-20 08:35:07',0,NULL,0,0),(33,18,3,'<p>ini di isikan tujuan pemeriksaan</p>','2021-01-20 08:35:07',1,'2021-01-20 08:35:07',0,NULL,0,0),(34,18,4,'<p>ini di isikan ruang lingkup pemeriksaan</p>','2021-01-20 08:35:07',1,'2021-01-20 08:35:07',0,NULL,0,0),(35,18,5,'<p>ini di isikan waktu pelaksanaan</p>','2021-01-20 08:35:07',1,'2021-01-20 08:35:07',0,NULL,0,0),(36,23,1,'<p>dawdawdawdawd</p>','2021-02-08 07:20:00',1,'2021-02-08 07:20:00',0,NULL,0,0),(37,23,2,'<p>fsefsefsefseawd</p>','2021-02-08 07:20:00',1,'2021-02-08 07:20:00',0,NULL,0,0),(38,23,3,'<p>fawawdawdaw</p>','2021-02-08 07:20:00',1,'2021-02-08 07:20:00',0,NULL,0,0),(39,23,4,'<p>sefsefsegsef</p>','2021-02-08 07:20:00',1,'2021-02-08 07:20:00',0,NULL,0,0),(40,23,5,'<p>fsefsefsefsadawd</p>','2021-02-08 07:20:00',1,'2021-02-08 07:20:00',0,NULL,0,0);
/*!40000 ALTER TABLE `sp_program_kerja_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sp_program_kerja_audit_review`
--

DROP TABLE IF EXISTS `sp_program_kerja_audit_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sp_program_kerja_audit_review` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_surat_perintah` int(11) NOT NULL,
  `id_program_kerja_audit` int(11) NOT NULL,
  `isi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sp_program_kerja_audit_review`
--

LOCK TABLES `sp_program_kerja_audit_review` WRITE;
/*!40000 ALTER TABLE `sp_program_kerja_audit_review` DISABLE KEYS */;
INSERT INTO `sp_program_kerja_audit_review` VALUES (1,8,1,'','2020-12-07 15:16:34',1,'2020-12-07 15:16:34',0,NULL,0,0),(2,8,2,'','2020-12-07 15:16:34',1,'2020-12-07 15:16:34',0,NULL,0,0),(3,8,3,'','2020-12-07 15:16:34',1,'2020-12-07 15:16:34',0,NULL,0,0),(4,8,4,'','2020-12-07 15:16:34',1,'2020-12-07 15:16:34',0,NULL,0,0),(5,8,5,'','2020-12-07 15:16:34',1,'2020-12-07 15:16:34',0,NULL,0,0),(6,12,1,'<p>ganti judul menjadi tugas lain</p>','2020-12-09 20:21:02',1,'2020-12-09 20:21:02',0,NULL,0,0),(7,12,2,'<p>ganti menjadi pendahuluan lain</p>','2020-12-09 20:21:02',1,'2020-12-09 20:21:02',0,NULL,0,0),(8,12,3,'<p>ganti menjadi tujuan pemeriksaan lain</p>','2020-12-09 20:21:02',1,'2020-12-09 20:21:02',0,NULL,0,0),(9,12,4,'<p>ganti ruang lingkup</p>','2020-12-09 20:21:02',1,'2020-12-09 20:21:02',0,NULL,0,0),(10,12,5,'<p>ganti waktu pelaksanaan</p>','2020-12-09 20:21:02',1,'2020-12-09 20:21:02',0,NULL,0,0);
/*!40000 ALTER TABLE `sp_program_kerja_audit_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temp_kode_rekening`
--

DROP TABLE IF EXISTS `temp_kode_rekening`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp_kode_rekening` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `start_letter` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_letter` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp_kode_rekening`
--

LOCK TABLES `temp_kode_rekening` WRITE;
/*!40000 ALTER TABLE `temp_kode_rekening` DISABLE KEYS */;
/*!40000 ALTER TABLE `temp_kode_rekening` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temp_kode_rekening_detail`
--

DROP TABLE IF EXISTS `temp_kode_rekening_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp_kode_rekening_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `row` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kode_rekening` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp_kode_rekening_detail`
--

LOCK TABLES `temp_kode_rekening_detail` WRITE;
/*!40000 ALTER TABLE `temp_kode_rekening_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `temp_kode_rekening_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_role` int(11) NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','super_administrator@localhost.com',NULL,'$2y$10$pceYbCvUBGGpoAmYCJ/pceBrEo96eWUQS4TSZDFXU/FMzIHauEpwO',NULL,NULL,NULL,1,NULL,0),(2,'197007151990091002','197007151990091002@inspektorat.com',NULL,'$2y$10$WrKluz.5Z.Uigw3GQAmcHezH6BQpcqAfjHXrb1VwI.S6wz79AKonG',NULL,'2020-11-28 22:34:55','2020-11-28 22:34:55',3,NULL,0),(3,'196304081983031007','196304081983031007@inspektorat.com',NULL,'$2y$10$vNqlf5wus/pGpQUBZBo0UOFvd0V5gIsSGDD9QeBU6LMtyduH73XSG',NULL,'2020-11-28 22:34:55','2020-11-28 22:34:55',3,NULL,0),(4,'196204041992112001','196204041992112001@inspektorat.com',NULL,'$2y$10$5M3VKGZIYNAnPx6.bayZC.N7sZtrSOTvPBOKEdWYeSsUHaEXFphkG',NULL,'2020-11-28 22:34:55','2020-11-28 22:34:55',3,NULL,0),(5,'197209181999011001','197209181999011001@inspektorat.com',NULL,'$2y$10$8hrwgx9MfIsZjTi.asm3euB5H97XxufDHjps7xsS2EmuLcqO6PrW6',NULL,'2020-11-28 22:34:55','2020-11-28 22:34:55',3,NULL,0),(6,'196606261993031007','196606261993031007@inspektorat.com',NULL,'$2y$10$nxR6guqjKJBsXX08TbTwW.b8Mhq4jmokshBiZ2dV7D6YOGNPsFkvq',NULL,'2020-11-28 22:34:55','2020-11-28 22:34:55',3,NULL,0),(7,'197406142006042010','197406142006042010@inspektorat.com',NULL,'$2y$10$hKO.nC0uU3xBPlii6oz1EuJT/drij35n0H/kwfRkmeKix996dS1te',NULL,'2020-11-28 22:34:55','2020-11-28 22:34:55',3,NULL,0),(8,'198310012010011013','198310012010011013@inspektorat.com',NULL,'$2y$10$QjrQBEC4rCbaPgxeJSTm5.mbaInvGytXMGEvypGoDU9td8ZJyGjxW',NULL,'2020-11-28 22:34:56','2020-11-28 22:34:56',3,NULL,0),(9,'196507271991032008','196507271991032008@inspektorat.com',NULL,'$2y$10$9y4v2Py/JyGPYXA/ein/9OB0dcJgSKot4lNjyoeJV2gdThYlp9ETC',NULL,'2020-11-28 22:34:56','2020-11-28 22:34:56',3,NULL,0),(10,'196607051997031005','196607051997031005@inspektorat.com',NULL,'$2y$10$zF.E3dVKtxJXuBOwI3loguqTLvSjgRH3PiEwMFR2VuzZ85v7rA0lu',NULL,'2020-11-28 22:34:56','2020-11-28 22:34:56',3,NULL,0),(11,'197006161996122001','197006161996122001@inspektorat.com',NULL,'$2y$10$jX5Hix8nsqCeX1N1IQcNcOGi3TdZW6W3qlxNR3pN5xtDPc1FXhoRa',NULL,'2020-11-28 22:34:56','2020-11-28 22:34:56',3,NULL,0),(12,'196004181987012001','196004181987012001@inspektorat.com',NULL,'$2y$10$vryZiUHKEJTTTfcYt/aWKuwLsW1rHotsl/jT.BVG7P6J6eyrXe2Eq',NULL,'2020-11-28 22:34:56','2020-11-28 22:34:56',3,NULL,0),(13,'197106071999032005','197106071999032005@inspektorat.com',NULL,'$2y$10$7hvuW9GS1fjt.0YY1rhx8u7b6bwMTVnemGdcWQV02SNzjrwLUwv6q',NULL,'2020-11-28 22:34:56','2020-11-28 22:34:56',3,NULL,0),(14,'197101221998032004','197101221998032004@inspektorat.com',NULL,'$2y$10$Vp5sShnbGk7125.O.j/lOOZr77SmyQ2r7ijlJr9SwzJxWPguxkFiS',NULL,'2020-11-28 22:34:56','2020-11-28 22:34:56',3,NULL,0),(15,'197604201998032003','197604201998032003@inspektorat.com',NULL,'$2y$10$KvdIi6UcNxLqVfRLlLivfeOsA39aY2ssbJMEApPN6cfHLCpL/pRYu',NULL,'2020-11-28 22:34:56','2020-11-28 22:34:56',3,NULL,0),(16,'196509101985031009','196509101985031009@inspektorat.com',NULL,'$2y$10$ydwB5Y09mtiHyNrcPnA58.lXe1c.MwNx85uEkQ0l/CrhiZd6JYu7G',NULL,'2020-11-28 22:34:56','2020-11-28 22:34:56',3,NULL,0),(17,'196905282005011003','196905282005011003@inspektorat.com',NULL,'$2y$10$o6A4uOF5Q/RJs72Tf8QtOuOlimJ5sHd5Dh1E5VaDtdQgyanZt8R9K',NULL,'2020-11-28 22:34:56','2020-11-28 22:34:56',3,NULL,0),(18,'197304242005011004','197304242005011004@inspektorat.com',NULL,'$2y$10$2tR4pehd/7a1ayHHpf8VOuKMJ1gMeK89vfpLfLqAS8HlrVLeyOc4W',NULL,'2020-11-28 22:34:56','2020-11-28 22:34:56',3,NULL,0),(19,'197607042006041011','197607042006041011@inspektorat.com',NULL,'$2y$10$FRMZ6Mhr25w3L6xuY1YPdeixpkE2KE4YfmKmCySjjhMgXZkLUu8Tu',NULL,'2020-11-28 22:34:56','2020-11-28 22:34:56',3,NULL,0),(20,'198507042003122001','198507042003122001@inspektorat.com',NULL,'$2y$10$jD5qAgsFBzFb9H4..HB6g.jrRO6pCgFIfuDBsEcOQJwxIG6JicVG.',NULL,'2020-11-28 22:34:56','2020-11-28 22:34:56',3,NULL,0),(21,'196808091997032001','196808091997032001@inspektorat.com',NULL,'$2y$10$pCknyrA74wyIlP8AbvQk9uGXfMxD68nvaMdPeukmAyE1CET1vH4VW',NULL,'2020-11-28 22:34:57','2020-11-28 22:34:57',3,NULL,0),(22,'197304222005011010','197304222005011010@inspektorat.com',NULL,'$2y$10$8Ho3i/HoVGiJigEy0gcJbu2ctKIlfGdkHWx3RJtyeUp.qK3VDYaly',NULL,'2020-11-28 22:34:57','2020-11-28 22:34:57',3,NULL,0),(23,'198402102003122001','198402102003122001@inspektorat.com',NULL,'$2y$10$wyDoePcB6Juc8WtnIgsLze5iNtZphwf22tDiU9N9lK41Adb2hk7.2',NULL,'2020-11-28 22:34:57','2020-11-28 22:34:57',3,NULL,0),(24,'197406121997031005','197406121997031005@inspektorat.com',NULL,'$2y$10$2kyomWxyVQdXEf7tsQX/7O29hZR/jdOg4.vMW8pijCpumpRmpPWYi',NULL,'2020-11-28 22:34:57','2020-11-28 22:34:57',3,NULL,0),(25,'197102071998031010','197102071998031010@inspektorat.com',NULL,'$2y$10$nK4.D2mpenEzITfMEIofg.PmF4/ODK9weNZbbQFUJTb9R5ShoFTy2',NULL,'2020-11-28 22:34:57','2020-11-28 22:34:57',3,NULL,0),(26,'198210202006042006','198210202006042006@inspektorat.com',NULL,'$2y$10$.emjGG1M4czTWd2Q1gB5FeSdRjJePXF46XNLmwjni1nNOPhkMEH7W',NULL,'2020-11-28 22:34:57','2020-11-28 22:34:57',3,NULL,0),(27,'197503271994032002','197503271994032002@inspektorat.com',NULL,'$2y$10$e3GQ5KUaWQnNAbSC8OYFy.fyptjDEJ4M95szwDWMK2MK3XHLvatJm',NULL,'2020-11-28 22:34:57','2020-11-28 22:34:57',3,NULL,0),(28,'196611121994031006','196611121994031006@inspektorat.com',NULL,'$2y$10$D3VjTZr49NcmOqOXuisFv.KQfsaO3dMy7NNg0hhwi0ysVUkCIh5GK',NULL,'2020-11-28 22:34:57','2020-11-28 22:34:57',3,NULL,0),(29,'197503162010011009','197503162010011009@inspektorat.com',NULL,'$2y$10$SBsGWZ7Oe6gn091v1RnuB.UX.uJmWDZ.2wSUEsCUmrQFweC4GPm2q',NULL,'2020-11-28 22:34:57','2020-11-28 22:34:57',3,NULL,0),(30,'197509052006042016','197509052006042016@inspektorat.com',NULL,'$2y$10$0i4VaPSAVgmm9uSHwhyBk.lGs1p5lrly3numojzpT2sjypItmV6Aq',NULL,'2020-11-28 22:34:57','2020-11-28 22:34:57',3,NULL,0),(31,'196907061997032003','196907061997032003@inspektorat.com',NULL,'$2y$10$0YvcdD.bKDUGgYgxXsIxVeF5b5oDklL5Mk1A6dbVjPSbe62rYO2tO',NULL,'2020-11-28 22:34:57','2020-11-28 22:34:57',3,NULL,0),(32,'198308072010012017','198308072010012017@inspektorat.com',NULL,'$2y$10$V.h69G7BhP800TAbmIMxSOSEq5ZHm46Xfq9CFnS0eoeTw8vxt25TC',NULL,'2020-11-28 22:34:57','2020-11-28 22:34:57',3,NULL,0),(33,'197505262009021001','197505262009021001@inspektorat.com',NULL,'$2y$10$0Flkom6k9P.80cUdQFNgWu.TIcUTKCXr0ZDKOwPwbqWO5vcrxhowa',NULL,'2020-11-28 22:34:57','2020-11-28 22:34:57',3,NULL,0),(34,'198109182010011012','198109182010011012@inspektorat.com',NULL,'$2y$10$3W.cfq8DoT.tIiR1Mtzpde5ANS.RXboE0PmCYTT5lhTnN1khoHbrq',NULL,'2020-11-28 22:34:58','2020-11-28 22:34:58',3,NULL,0),(35,'196801231993031003','196801231993031003@inspektorat.com',NULL,'$2y$10$CfL/NsZ79jc.bHZK10hE8eZB8O6WyiUIdgX6D.r6qocKWXJCAm2O2',NULL,'2020-11-28 22:34:58','2020-11-28 22:34:58',3,NULL,0),(36,'198509012009022002','198509012009022002@inspektorat.com',NULL,'$2y$10$RLaFD3MHRQhSvPmYLSGlo.FgzBPNePt/iMD./HE2iEXkluLO4dXb6',NULL,'2020-11-28 22:34:58','2020-11-28 22:34:58',3,NULL,0),(37,'197309192003122002','197309192003122002@inspektorat.com',NULL,'$2y$10$IHmnMTxAyXE19HHJ.LHCtuul44OMOBUYsOq8Xrdu7qvwEB983Duzu',NULL,'2020-11-28 22:34:58','2020-11-28 22:34:58',3,NULL,0),(38,'198007162010011012','198007162010011012@inspektorat.com',NULL,'$2y$10$79OM1JXsVt64D3L3e0xU..WvEDxMgCeLVaLJ3ZjYr3paXib797NaK',NULL,'2020-11-28 22:34:58','2020-11-28 22:34:58',3,NULL,0),(39,'197008281993032008','197008281993032008@inspektorat.com',NULL,'$2y$10$m2.5mQH7VHgtj6CP4hWxOu9v5qVEJFJatrZojevIFCufkI34sBSf2',NULL,'2020-11-28 22:34:58','2020-11-28 22:34:58',3,NULL,0),(40,'198804172015022001','198804172015022001@inspektorat.com',NULL,'$2y$10$.aHdlmT8jb4xxCtyFeMsV.RnYNvyb9uXABgGUoRrhL/ITuvljYlEq',NULL,'2020-11-28 22:34:58','2020-11-28 22:34:58',3,NULL,0),(41,'197803102010012011','197803102010012011@inspektorat.com',NULL,'$2y$10$BHYKJTFe4Ds4KLpK16Bilu0hZdBeC.ZAc.YzebbQvFrDMttQcHcji',NULL,'2020-11-28 22:34:58','2020-11-28 22:34:58',3,NULL,0),(42,'198407302015021001','198407302015021001@inspektorat.com',NULL,'$2y$10$AM84FvWC8D.mPCuOw2sbAOfi41VPxk4dcjtWv48Rp3Gka1XIQLSBS',NULL,'2020-11-28 22:34:58','2020-11-28 22:34:58',3,NULL,0),(43,'198009062008011007','198009062008011007@inspektorat.com',NULL,'$2y$10$v68j75JYwvrC7EIvsVB.SeWJUPqmtwAj3/Z70VZ1i5.1ibFcCSCJu',NULL,'2020-11-28 22:34:58','2020-11-28 22:34:58',3,NULL,0),(44,'196208271998031002','196208271998031002@inspektorat.com',NULL,'$2y$10$sVK/seUXYrhTnh5Z/xjmVO85TN4W3.TCOj1uhD9bK6OyJwDLCBui6',NULL,'2020-11-28 22:34:58','2020-11-28 22:34:58',3,NULL,0),(45,'196803241996011001','196803241996011001@inspektorat.com',NULL,'$2y$10$8zR5GzMZfMEoMIkyUHfVVetXXfJiID1jXI81fxVUazF1hmg3cnNlO',NULL,'2020-11-28 22:34:58','2020-11-28 22:34:58',3,NULL,0),(46,'198304042015022001','198304042015022001@inspektorat.com',NULL,'$2y$10$3JJloQ1JnS.363V9mm8lm.l04zclYqEfOD.I9K1GXNmqb6Z7SgvV2',NULL,'2020-11-28 22:34:59','2020-11-28 22:34:59',3,NULL,0),(47,'198603182015021001','198603182015021001@inspektorat.com',NULL,'$2y$10$hWAZxkrrd2UKVx6g4I2iaO6GV6nAGJZDzt/14qzzRAai7zKLAmhDq',NULL,'2020-11-28 22:34:59','2020-11-28 22:34:59',3,NULL,0),(48,'198309292010011001','198309292010011001@inspektorat.com',NULL,'$2y$10$BSXNFJYJoB3F6BBS3U9wXO1uniDP40osYyGCLiA8JZm/Tnn.vUjTe',NULL,'2020-11-28 22:34:59','2020-11-28 22:34:59',3,NULL,0),(49,'197802232014091001','197802232014091001@inspektorat.com',NULL,'$2y$10$m/W9mmA/EYAPAxksugEis..nqu8eo2ZIIawW4NtWmsNGhNIDQsvdS',NULL,'2020-11-28 22:34:59','2020-11-28 22:34:59',3,NULL,0),(50,'198007062008012007','198007062008012007@inspektorat.com',NULL,'$2y$10$CmVRB6yX4ASNi7K.lYf.M.SYrtWTPkmLTjTi.ip4Wg3jcyeFhgo9G',NULL,'2020-11-28 22:34:59','2020-11-28 22:34:59',3,NULL,0),(51,'198502152010012014','198502152010012014@inspektorat.com',NULL,'$2y$10$5zVOIn8vL5IB9MvJ2EeA2uf0G3AMPCpXHtXsHN8ISNjwNbMhKcbvG',NULL,'2020-11-28 22:34:59','2020-11-28 22:34:59',3,NULL,0),(52,'197301152008011005','197301152008011005@inspektorat.com',NULL,'$2y$10$ZEAVh1f1PQxjNaMpIW9rNeg2RfMoKqcyKuVcMy2veEzsJgDK7K07G',NULL,'2020-11-28 22:34:59','2020-11-28 22:34:59',3,NULL,0),(53,'196504052007011018','196504052007011018@inspektorat.com',NULL,'$2y$10$yWs5ep1oJYOln.0x3zDKkeh9UQkM.eYkHOF7JmHAfT1OZ5fi2SrJK',NULL,'2020-11-28 22:34:59','2020-11-28 22:34:59',3,NULL,0),(54,'Inspektur','inspektur@inspektorat.com',NULL,'$2y$10$YMCoY5A4OlA8qGjGT6Z0KO5GjRhuaPuE8TVjORwVMu9uIZYHodtMe',NULL,'2020-12-08 05:34:17','2020-12-08 05:34:17',2,NULL,0),(55,'sekretaris','sekretaris@inspektorat.com',NULL,'$2y$10$LIpHFJZpDsPN6KOf..H1suKmzzY6PnN6a0RgtWwa66n4cA.wegBsa',NULL,'2020-12-08 05:35:33','2021-01-05 09:40:46',2,NULL,0),(56,'angga','anga@gmail.com',NULL,'$2y$10$7d3ExFwKbgBYlLJe0NdlDO6Mj91IhzKFFNi.5nDP2mWHx6QDeO7.u',NULL,'2021-01-04 11:30:04','2021-01-04 11:30:04',2,NULL,0),(57,'fani','fani@gmail.com',NULL,'$2y$10$19.OIihoz5wtUegrLgCWFeeEf9gvO7Rxje21nT.rb.5kEhcE7.O8y',NULL,'2021-01-04 11:31:03','2021-01-04 11:31:03',2,NULL,0),(58,'Irban1','irban_1@gmail.com',NULL,'$2y$10$Q2VsQkFU0YqVW6OIMa6.h.WQ/83PvvRTowGGI1ImPOgZnGX5efwCC',NULL,'2021-01-06 22:49:22','2021-01-06 22:49:22',2,NULL,0),(59,'irban2','irban_2@gmail.com',NULL,'$2y$10$xRqDZ9YVUtbSX8//LT1OteXv6W9e5m.DsAGJoO/1EUcW2F5Ay1MHW',NULL,'2021-01-06 22:49:47','2021-01-06 22:49:47',2,NULL,0),(60,'irban3','irban_3@gmail.com',NULL,'$2y$10$TK.6yFNsrC8UmBk2JXUux.6MNuQ4Je.5osQi2SOIevXj15dyzCXQK',NULL,'2021-01-06 22:50:58','2021-01-12 12:01:06',2,NULL,0),(61,'irbansus','irbansus@gmail.com',NULL,'$2y$10$/Dqu3zPNjopLu2BVq7gLseMVjH6MCQoDxih2B6zEi80QLkVpQj23q',NULL,'2021-01-19 18:41:45','2021-01-19 18:41:45',2,NULL,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_pegawai`
--

DROP TABLE IF EXISTS `users_pegawai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_pegawai` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_pegawai`
--

LOCK TABLES `users_pegawai` WRITE;
/*!40000 ALTER TABLE `users_pegawai` DISABLE KEYS */;
INSERT INTO `users_pegawai` VALUES (1,2,1),(2,3,2),(3,4,3),(4,5,4),(5,6,5),(6,7,6),(7,8,7),(8,9,8),(9,10,9),(10,11,10),(11,12,11),(12,13,12),(13,14,13),(14,15,14),(15,16,15),(16,17,16),(17,18,17),(18,19,18),(19,20,19),(20,21,20),(21,22,21),(22,23,22),(23,24,23),(24,25,24),(25,26,25),(26,27,26),(27,28,27),(28,29,28),(29,30,29),(30,31,30),(31,32,31),(32,33,32),(33,34,33),(34,35,34),(35,36,35),(36,37,36),(37,38,37),(38,39,38),(39,40,39),(40,41,40),(41,42,41),(42,43,42),(43,44,43),(44,45,44),(45,46,45),(46,47,46),(47,48,47),(48,49,48),(49,50,49),(50,51,50),(51,52,51),(52,53,52);
/*!40000 ALTER TABLE `users_pegawai` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-17  3:06:26
