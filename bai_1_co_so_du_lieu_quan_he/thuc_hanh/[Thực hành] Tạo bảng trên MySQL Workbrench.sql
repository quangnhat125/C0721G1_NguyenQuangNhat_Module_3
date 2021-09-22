DROP DATABASE IF EXISTS table_student;
CREATE DATABASE IF NOT EXISTS table_student;
USE table_student;
CREATE TABLE student_manager (
`id` INT NOT NULL PRIMARY KEY,
`name` VARCHAR(45) NULL,
`age` INT NULL, 
`country` VARCHAR(45) NULL
);