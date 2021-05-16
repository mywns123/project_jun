-- 내 스키마
DROP SCHEMA IF EXISTS MY_SCHEMA;

-- 내 스키마
CREATE SCHEMA MY_SCHEMA;

-- 사이트게시판
CREATE TABLE MY_SCHEMA.Board (
	BoardNo        VARCHAR(10) NOT NULL COMMENT '게시글번호', -- 게시글번호
	caregoryNo     INT(1)      NOT NULL COMMENT '게시글 분류', -- 게시글 분류
	BoardTItle     VARCHAR(50) NOT NULL COMMENT '공지제목', -- 공지제목
	BoardContent   LONGTEXT    NOT NULL COMMENT '공지내용', -- 공지내용
	BoardDate      DATE        NOT NULL COMMENT '작성일', -- 작성일
	BoardReadCount INTEGER(5)  NULL COMMENT '조회수' -- 조회수
)
COMMENT '사이트게시판';

-- 사이트게시판
ALTER TABLE MY_SCHEMA.Board
	ADD CONSTRAINT PK_Board -- 사이트게시판 기본키
		PRIMARY KEY (
			BoardNo -- 게시글번호
		);

-- 글분류
CREATE TABLE MY_SCHEMA.BoardCategor (
	caregoryNo   INT(1)      NOT NULL COMMENT '게시글 분류', -- 게시글 분류
	caregoryName VARCHAR(10) NOT NULL COMMENT '분류명' -- 분류명
)
COMMENT '글분류';

-- 글분류
ALTER TABLE MY_SCHEMA.BoardCategor
	ADD CONSTRAINT PK_BoardCategor -- 글분류 기본키
		PRIMARY KEY (
			caregoryNo -- 게시글 분류
		);

-- 사이트게시판
ALTER TABLE MY_SCHEMA.Board
	ADD CONSTRAINT FK_BoardCategor_TO_Board -- 글분류 -> 사이트게시판
		FOREIGN KEY (
			caregoryNo -- 게시글 분류
		)
		REFERENCES MY_SCHEMA.BoardCategor ( -- 글분류
			caregoryNo -- 게시글 분류
		);