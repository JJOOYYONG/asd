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
(	EMAIL VARCHAR(30) NOT NULL,    -- 실제 로그인에 쓰이는 아이디
UNUM INT NOT NULL,               -- 회원 번호
PASSWD VARCHAR(20) NOT NULL,
USERNAME VARCHAR(20) NOT NULL,   -- 닉네임(보여지는 이름)
REG_DATE DATE NOT NULL,          -- * 수정불가항목
AGE INT NOT NULL,                -- 나이값은 주민등록번호에서 연산하여 구하기  * 수정불가항목
RESIDENT_ID VARCHAR(40) NOT NULL,-- 주민등록번호  * 수정불가항목
GENDER VARCHAR(6) NOT NULL,      --  * 수정불가항목
LOCAL VARCHAR(20) NOT NULL,      -- 지역
MOBILE VARCHAR(20) NOT NULL,     -- 폰번호
HOBBY1 VARCHAR(20) NOT NULL,     -- 취미*3
HOBBY2 VARCHAR(20) NOT NULL,
HOBBY3 VARCHAR(20) NOT NULL,
RECOMMENDED INT NOT NULL,        -- 추천수
INTRO VARCHAR(100),              -- 자기소개
MPIC VARCHAR(100)                -- 메인이미지 선택정보
);

--------------------------------------------------------
--  DDL for Table ATTACHS
--------------------------------------------------------

CREATE TABLE ATTACHS
( UUID VARCHAR(100) NOT NULL,
FILETYPE VARCHAR(20) NOT NULL,
PATH VARCHAR(200) NOT NULL,
NAME VARCHAR(100) NOT NULL,
UNUM INT NOT NULL
);

--------------------------------------------------------
--  DDL for Index
--------------------------------------------------------

CREATE UNIQUE INDEX MEMBERS_PK ON MEMBERS (EMAIL);
CREATE UNIQUE INDEX MEMBERS_UK_UNUM ON MEMBERS (UNUM);
CREATE UNIQUE INDEX ATTACHS_PK ON ATTACHS (UUID);

--------------------------------------------------------
--  Constraints
--------------------------------------------------------

ALTER TABLE MEMBERS ADD CONSTRAINT MEMBERS_PK PRIMARY KEY (EMAIL);
ALTER TABLE ATTACHS ADD CONSTRAINT ATTACHS_PK PRIMARY KEY (UUID);
ALTER TABLE ATTACHS ADD CONSTRAINT ATTACHS_FK FOREIGN KEY (UNUM) REFERENCES MEMBERS (UNUM);
