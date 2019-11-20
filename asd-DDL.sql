CREATE SCHEMA ASD;

USE ASD;

CREATE USER 'jsp_admin'@'%' IDENTIFIED BY 'jsp_admin'; -- 아이디, 비밀번호 모두 'jsp_admin'

GRANT ALL PRIVILEGES ON ASD.* TO 'jsp_admin'@'%';

SHOW GRANTS FOR jsp_admin;

--------------------------------------------------------
--  파일이 생성됨 - 수요일-11월-20-2019
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table MEMBERS
--------------------------------------------------------

CREATE TABLE MEMBERS
(	EMAIL VARCHAR(30) NOT NULL, -- 실제 로그인에 쓰이는 아이디
PASSWD VARCHAR(20) NOT NULL,
USERNAME VARCHAR(20) NOT NULL, -- 닉네임(보여지는 이름)
REG_DATE DATE NOT NULL,
AGE INT NOT NULL,
RESIDENT_ID INT NOT NULL, -- 주민등록번호
GENDER VARCHAR(6) NOT NULL,
LOCAL VARCHAR(20) NOT NULL, -- 지역
MOBILE VARCHAR(20) NOT NULL, -- 폰번호
HOBBY1 VARCHAR(20) NOT NULL, -- 취미*3
HOBBY2 VARCHAR(20) NOT NULL,
HOBBY3 VARCHAR(20) NOT NULL,
INTRO TEXT -- 자기소개
);

--------------------------------------------------------
--  DDL for Index MEMBERS_PK
--------------------------------------------------------

CREATE UNIQUE INDEX MEMBERS_PK ON MEMBERS (EMAIL);

--------------------------------------------------------
--  Constraints for Table MEMBERS
--------------------------------------------------------

ALTER TABLE MEMBERS ADD CONSTRAINT MEMBERS_PK PRIMARY KEY (EMAIL);
