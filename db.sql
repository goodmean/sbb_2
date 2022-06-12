DROP DATABASE IF EXISTS sbb_2nd;
CREATE DATABASE sbb_2nd;
USE sbb_2nd;

CREATE TABLE question (
    id BIGINT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    create_date DATETIME NOT NULL,
    `subject` VARCHAR(200),
    content TEXT NOT NULL
);

CREATE TABLE answer (
    id BIGINT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    create_date DATETIME NOT NULL,
    question_id BIGINT UNSIGNED NOT NULL,
    content TEXT NOT NULL
);

INSERT INTO question
SET create_date = NOW(),
`subject` = '테스트용 질문1',
content = '테스트용 질문의 내용1';

INSERT INTO question
SET create_date = NOW(),
`subject` = '테스트용 질문2',
content = '테스트용 질문의 내용2';

CREATE TABLE site_user (
    id BIGINT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    username CHAR(100) NOT NULL UNIQUE,
    `password` CHAR(100) NOT NULL,
    email CHAR(100) NOT NULL UNIQUE
);


SELECT * FROM question;