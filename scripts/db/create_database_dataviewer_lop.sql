SELECT 'CREATE DATABASE dataviewer_db'
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'dataviewer_db')\gexec
	
\c dataviewer_db;

CREATE TABLE IF NOT EXISTS submissions (
	"environment" VARCHAR(30),
	"hitPercentage" NUMERIC(4,1) NOT NULL,
	"language" VARCHAR(10) NOT NULL,
	"char_change_number" INT NOT NULL,
	"timeConsuming" INT NOT NULL,
	"createdAt" VARCHAR(25) NOT NULL,
	"user" VARCHAR(70) NOT NULL,
	"question" VARCHAR(200) NOT NULL,
	"list" VARCHAR(100) NULL,
	"test" VARCHAR(100) NULL,
	"id_class" VARCHAR(50) NOT NULL,
	"registration" VARCHAR (30) NOT NULL
);

CREATE TABLE IF NOT EXISTS questions (    
	"id_list" VARCHAR(36) NULL,
        "list" VARCHAR(100) NULL,
        "question" VARCHAR(200) NOT NULL,
        "difficulty" SMALLINT NULL,
        "tag1" VARCHAR(100) NULL, 
        "tag2" VARCHAR(100) NULL,
        "tag3" VARCHAR(100) NULL,
        "tag4" VARCHAR(100) NULL,
        "tag5" VARCHAR(100) NULL,
        "id_test" VARCHAR(36) NULL, 
        "test" VARCHAR(100) NULL 
);

CREATE TABLE IF NOT EXISTS teachers_classes(
	"id_teacher" VARCHAR(36) NOT NULL, 
	"id_class" VARCHAR(50) NOT NULL,
	"name_teacher" VARCHAR(100) NOT NULL,
	"name_class" VARCHAR(100) NOT NULL,  
	"code" VARCHAR(20) NOT NULL, 
	"year" NUMERIC(5,1) NOT NULL, 
	"semester" NUMERIC(2,1) NOT NULL, 
	"studentsCount" NUMERIC(5,1) NOT NULL,
	"teachersCount" NUMERIC(3,1) NOT NULL 
);

CREATE TABLE IF NOT EXISTS lists (
	"id_list" VARCHAR(36) NOT NULL, 
	"list" VARCHAR(100) NOT NULL, 
	"shortTitle" VARCHAR(15) NOT NULL,
	"id_class" VARCHAR(50) NOT NULL,
	"author" VARCHAR(200) NOT NULL, 
	"createdAt" VARCHAR(25) NOT NULL 
);

CREATE TABLE IF NOT EXISTS tests (
	"id_test" VARCHAR(36) NOT NULL, 
	"test" VARCHAR(100) NOT NULL, 
	"shortTitle" VARCHAR(15) NOT NULL,
	"id_class" VARCHAR(50) NOT NULL,
	"author" VARCHAR(200) NOT NULL,
	"createdAt" VARCHAR(25) NOT NULL  
);