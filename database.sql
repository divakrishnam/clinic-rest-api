/*
 Navicat Premium Data Transfer

 Source Server         : mac postgre
 Source Server Type    : PostgreSQL
 Source Server Version : 100015
 Source Host           : localhost:5432
 Source Catalog        : postgres
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 100015
 File Encoding         : 65001

 Date: 01/02/2021 22:53:06
*/


-- ----------------------------
-- Sequence structure for clinic_user_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."clinic_user_id_seq";
CREATE SEQUENCE "public"."clinic_user_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."clinic_user_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Table structure for clinic_user
-- ----------------------------
DROP TABLE IF EXISTS "public"."clinic_user";
CREATE TABLE "public"."clinic_user" (
  "user_id" int4 NOT NULL DEFAULT nextval('clinic_user_id_seq'::regclass),
  "nama" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "username" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "password" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "role_id" int4 NOT NULL,
  "update_pass" timestamp(0),
  "kd_cabang" varchar(32) COLLATE "pg_catalog"."default",
  "st_aktif" int2 NOT NULL,
  "foto" varchar(100) COLLATE "pg_catalog"."default",
  "no_hp" varchar(20) COLLATE "pg_catalog"."default",
  "email" varchar(50) COLLATE "pg_catalog"."default",
  "tempat_lahir" varchar(50) COLLATE "pg_catalog"."default",
  "tanggal_lahir" date,
  "alamat" text COLLATE "pg_catalog"."default",
  "gender" varchar(50) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "public"."clinic_user" OWNER TO "postgres";

-- ----------------------------
-- Records of clinic_user
-- ----------------------------
BEGIN;
INSERT INTO "public"."clinic_user" VALUES (2, 'Diva Krishna', 'diva', 'diva', 1111, '2021-02-01 14:33:21', 'abc-123', 1, 'profile.png', '089677709045', 'divakrishnam@gmail.com', 'situbondo', '1999-05-05', 'gianyar, bali', 'pria');
INSERT INTO "public"."clinic_user" VALUES (3, 'Diva Krishna', 'diva', 'diva', 1111, '2021-02-01 14:33:21', 'abc-123', 1, 'profile.png', '089677709045', 'divakrishnam@gmail.com', 'situbondo', '1999-05-05', 'gianyar, bali', 'pria');
COMMIT;

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."clinic_user_id_seq"', 4, true);
