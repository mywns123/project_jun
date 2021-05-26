-- 회원정보
DROP TABLE IF EXISTS proj21_funding.UserInfo RESTRICT;

-- 회원(판매자)
DROP TABLE IF EXISTS proj21_funding.UserSeller RESTRICT;

-- 프로젝트
DROP TABLE IF EXISTS proj21_funding.Project RESTRICT;

-- 프로젝트구매옵션
DROP TABLE IF EXISTS proj21_funding.PrjOption RESTRICT;

-- 후원정보
DROP TABLE IF EXISTS proj21_funding.FundingInfo RESTRICT;

-- 관리자
DROP TABLE IF EXISTS proj21_funding.Admin RESTRICT;

-- 메세지
DROP TABLE IF EXISTS proj21_funding.Message RESTRICT;

-- 프로젝트게시판
DROP TABLE IF EXISTS proj21_funding.PrjBoard RESTRICT;

-- Q&A
DROP TABLE IF EXISTS proj21_funding.QnA RESTRICT;

-- 사이트게시판
DROP TABLE IF EXISTS proj21_funding.Board RESTRICT;

-- 글분류
DROP TABLE IF EXISTS proj21_funding.BoardCategory RESTRICT;

-- 주소
DROP TABLE IF EXISTS proj21_funding.addresses RESTRICT;

-- proj21_funding
DROP SCHEMA IF EXISTS proj21_funding;

-- proj21_funding
CREATE SCHEMA proj21_funding;

-- 회원정보
CREATE TABLE proj21_funding.UserInfo (
	UserNo        CHAR(10)     NOT NULL COMMENT '회원번호', -- 회원번호
	UserId        VARCHAR(10)  NOT NULL COMMENT '회원계정', -- 회원계정
	UserPw        CHAR(41)     NOT NULL COMMENT '비밀번호', -- 비밀번호
	UserName      VARCHAR(20)  NOT NULL COMMENT '회원성명', -- 회원성명
	Address       VARCHAR(100) NOT NULL COMMENT '주소', -- 주소
	DetailAddress VARCHAR(50)  NULL     COMMENT '상세주소', -- 상세주소
	UserPhone     VARCHAR(20)  NULL     COMMENT '회원H.P', -- 회원H.P
	Email         VARCHAR(100) NULL     COMMENT '이메일', -- 이메일
	BankAcoount   INT(20)      NULL     COMMENT '계좌번호', -- 계좌번호
	BankName      VARCHAR(10)  NULL     COMMENT '은행명' -- 은행명
)
COMMENT '회원정보';

-- 회원정보
ALTER TABLE proj21_funding.UserInfo
	ADD CONSTRAINT PK_UserInfo -- 회원정보 기본키
		PRIMARY KEY (
			UserNo -- 회원번호
		);

-- 회원(판매자)
CREATE TABLE proj21_funding.UserSeller (
	UserNo      CHAR(10)    NOT NULL COMMENT '회원번호', -- 회원번호
	BankAccount INT(20)     NOT NULL COMMENT '계좌번호', -- 계좌번호
	BankName    VARCHAR(10) NOT NULL COMMENT '은행명' -- 은행명
)
COMMENT '회원(판매자)';

-- 회원(판매자)
ALTER TABLE proj21_funding.UserSeller
	ADD CONSTRAINT PK_UserSeller -- 회원(판매자) 기본키
		PRIMARY KEY (
			UserNo -- 회원번호
		);

-- 프로젝트
CREATE TABLE proj21_funding.Project (
	PrjNo      CHAR(10)    NOT NULL COMMENT '프로젝트번호', -- 프로젝트번호
	UserNo     CHAR(10)    NOT NULL COMMENT '프로젝트관리자', -- 프로젝트관리자
	PrjName    VARCHAR(30) NOT NULL COMMENT '프로젝트명', -- 프로젝트명
	PrjContent LONGTEXT    NOT NULL COMMENT '프로젝트내용', -- 프로젝트내용
	PrjGoal    INT(10)     NOT NULL COMMENT '목표금액', -- 목표금액
	StartDate  DATE        NOT NULL COMMENT '시작일', -- 시작일
	EndDate    DATE        NOT NULL COMMENT '마감일', -- 마감일
	PayDate    DATE        NOT NULL COMMENT '결제일', -- 결제일
	EndYN      TINYINT     NOT NULL DEFAULT 0 COMMENT '마감여부' -- 마감여부
)
COMMENT '프로젝트';

-- 프로젝트
ALTER TABLE proj21_funding.Project
	ADD CONSTRAINT PK_Project -- 프로젝트 기본키
		PRIMARY KEY (
			PrjNo -- 프로젝트번호
		);

-- 프로젝트구매옵션
CREATE TABLE proj21_funding.PrjOption (
	OptNo      CHAR(10)    NOT NULL COMMENT '옵션번호', -- 옵션번호
	PrjNo      CHAR(10)    NOT NULL COMMENT '프로젝트번호', -- 프로젝트번호
	OptPrice   INT(10)     NOT NULL COMMENT '옵션금액', -- 옵션금액
	OptContent VARCHAR(50) NOT NULL COMMENT '옵션내용' -- 옵션내용
)
COMMENT '프로젝트구매옵션';

-- 프로젝트구매옵션
ALTER TABLE proj21_funding.PrjOption
	ADD CONSTRAINT PK_PrjOption -- 프로젝트구매옵션 기본키
		PRIMARY KEY (
			OptNo -- 옵션번호
		);

-- 후원정보
CREATE TABLE proj21_funding.FundingInfo (
	FundingNo CHAR(10) NOT NULL COMMENT '후원번호', -- 후원번호
	UserNo    CHAR(10) NOT NULL COMMENT '회원번호', -- 회원번호
	PrjNo     CHAR(10) NULL     COMMENT '프로젝트번호', -- 프로젝트번호
	OptNo     CHAR(10) NOT NULL COMMENT '옵션번호', -- 옵션번호
	AccountNo INT(20)  NOT NULL COMMENT '계좌(카드)번호', -- 계좌(카드)번호
	PayYN     TINYINT  NOT NULL DEFAULT 0 COMMENT '결제여부', -- 결제여부
	EndYN     TINYINT  NOT NULL DEFAULT 0 COMMENT '마감여부' -- 마감여부
)
COMMENT '후원정보';

-- 후원정보
ALTER TABLE proj21_funding.FundingInfo
	ADD CONSTRAINT PK_FundingInfo -- 후원정보 기본키
		PRIMARY KEY (
			FundingNo -- 후원번호
		);

-- 관리자
CREATE TABLE proj21_funding.Admin (
	AdminId   VARCHAR(10) NOT NULL COMMENT '관리자아이디', -- 관리자아이디
	AdminPw   CHAR(41)    NOT NULL COMMENT '관리자비밀번호', -- 관리자비밀번호
	AdminName VARCHAR(10) NULL     COMMENT '관리자이름', -- 관리자이름
	AdminTel  VARCHAR(20) NULL     COMMENT '관리자연락처' -- 관리자연락처
)
COMMENT '관리자';

-- 관리자
ALTER TABLE proj21_funding.Admin
	ADD CONSTRAINT PK_Admin -- 관리자 기본키
		PRIMARY KEY (
			AdminId -- 관리자아이디
		);

-- 메세지
CREATE TABLE proj21_funding.Message (
	MsgNo       CHAR(10)     NOT NULL COMMENT '메세지번호', -- 메세지번호
	SendUser    VARCHAR(10)  NOT NULL COMMENT '발신자', -- 발신자
	ReceiveUser VARCHAR(10)  NOT NULL COMMENT '수신자', -- 수신자
	MsgContent  VARCHAR(100) NOT NULL COMMENT '내용', -- 내용
	SendDate    DATE         NOT NULL COMMENT '발신일', -- 발신일
	ReadYN      TINYINT      NOT NULL DEFAULT 0 COMMENT '확인여부' -- 확인여부
)
COMMENT '메세지';

-- 메세지
ALTER TABLE proj21_funding.Message
	ADD CONSTRAINT PK_Message -- 메세지 기본키
		PRIMARY KEY (
			MsgNo -- 메세지번호
		);

-- 프로젝트게시판
CREATE TABLE proj21_funding.PrjBoard (
	PostNo      INT(10)     NOT NULL COMMENT '게시글번호', -- 게시글번호
	PrjNo       CHAR(10)    NOT NULL COMMENT '프로젝트번호', -- 프로젝트번호
	UserNo      CHAR(10)    NOT NULL COMMENT '글작성자', -- 글작성자
	PostTitle   VARCHAR(50) NOT NULL COMMENT '게시글제목', -- 게시글제목
	PostContent LONGTEXT    NOT NULL COMMENT '게시글내용' -- 게시글내용
)
COMMENT '프로젝트게시판';

-- 프로젝트게시판
ALTER TABLE proj21_funding.PrjBoard
	ADD CONSTRAINT PK_PrjBoard -- 프로젝트게시판 기본키
		PRIMARY KEY (
			PostNo, -- 게시글번호
			PrjNo   -- 프로젝트번호
		);

ALTER TABLE proj21_funding.PrjBoard
	MODIFY COLUMN PostNo INT(10) NOT NULL AUTO_INCREMENT COMMENT '게시글번호';

-- Q&A
CREATE TABLE proj21_funding.QnA (
	QnaNo      CHAR(10)     NOT NULL COMMENT '문의번호', -- 문의번호
	UserNo     CHAR(10)     NOT NULL COMMENT '문의작성자', -- 문의작성자
	AdminId    VARCHAR(10)  NOT NULL COMMENT '답글작성자', -- 답글작성자
	QnaTitle   VARCHAR(50)  NOT NULL COMMENT '문의제목', -- 문의제목
	QnaContent LONGTEXT     NOT NULL COMMENT '문의내용', -- 문의내용
	QnaReply   VARCHAR(300) NOT NULL COMMENT '문의답변' -- 문의답변
)
COMMENT 'Q&A';

-- Q&A
ALTER TABLE proj21_funding.QnA
	ADD CONSTRAINT PK_QnA -- Q&A 기본키
		PRIMARY KEY (
			QnaNo -- 문의번호
		);

-- 사이트게시판
CREATE TABLE proj21_funding.Board (
	BoardNo        CHAR(10)    NOT NULL COMMENT '게시글번호', -- 게시글번호
	CategoryNo     INT(1)      NOT NULL COMMENT '게시글 분류', -- 게시글 분류
	BoardTitle     VARCHAR(50) NOT NULL COMMENT '공지제목', -- 공지제목
	BoardContent   LONGTEXT    NOT NULL COMMENT '공지내용', -- 공지내용
	BoardDate      DATE        NOT NULL COMMENT '작성일', -- 작성일
	BoardReadCount INTEGER(5)  NOT NULL COMMENT '조회수' -- 조회수
)
COMMENT '사이트게시판';

-- 사이트게시판
ALTER TABLE proj21_funding.Board
	ADD CONSTRAINT PK_Board -- 사이트게시판 기본키
		PRIMARY KEY (
			BoardNo -- 게시글번호
		);

-- 글분류
CREATE TABLE proj21_funding.BoardCategory (
	CategoryNo   INT(1)      NOT NULL COMMENT '게시글 분류', -- 게시글 분류
	CategoryName VARCHAR(10) NOT NULL COMMENT '분류명' -- 분류명
)
COMMENT '글분류';

-- 글분류
ALTER TABLE proj21_funding.BoardCategory
	ADD CONSTRAINT PK_BoardCategory -- 글분류 기본키
		PRIMARY KEY (
			CategoryNo -- 게시글 분류
		);

-- 주소
CREATE TABLE proj21_funding.addresses (
	addr_id INT(11)     NOT NULL COMMENT '주소코드', -- 주소코드
	street  VARCHAR(50) NOT NULL COMMENT '도로', -- 도로
	city    VARCHAR(50) NOT NULL COMMENT '시', -- 시
	state   VARCHAR(50) NOT NULL COMMENT '구', -- 구
	zip     VARCHAR(10) NULL     COMMENT '우편번호', -- 우편번호
	country VARCHAR(50) NOT NULL COMMENT '읍' -- 읍
)
COMMENT '주소';

-- 주소
ALTER TABLE proj21_funding.addresses
	ADD CONSTRAINT
		PRIMARY KEY (
			addr_id -- 주소코드
		);

-- 회원(판매자)
ALTER TABLE proj21_funding.UserSeller
	ADD CONSTRAINT FK_UserInfo_TO_UserSeller -- 회원정보 -> 회원(판매자)
		FOREIGN KEY (
			UserNo -- 회원번호
		)
		REFERENCES proj21_funding.UserInfo ( -- 회원정보
			UserNo -- 회원번호
		);

-- 프로젝트
ALTER TABLE proj21_funding.Project
	ADD CONSTRAINT FK_UserInfo_TO_Project -- 회원정보 -> 프로젝트
		FOREIGN KEY (
			UserNo -- 프로젝트관리자
		)
		REFERENCES proj21_funding.UserInfo ( -- 회원정보
			UserNo -- 회원번호
		);

-- 프로젝트구매옵션
ALTER TABLE proj21_funding.PrjOption
	ADD CONSTRAINT FK_Project_TO_PrjOption -- 프로젝트 -> 프로젝트구매옵션
		FOREIGN KEY (
			PrjNo -- 프로젝트번호
		)
		REFERENCES proj21_funding.Project ( -- 프로젝트
			PrjNo -- 프로젝트번호
		);

-- 후원정보
ALTER TABLE proj21_funding.FundingInfo
	ADD CONSTRAINT FK_UserInfo_TO_FundingInfo -- 회원정보 -> 후원정보
		FOREIGN KEY (
			UserNo -- 회원번호
		)
		REFERENCES proj21_funding.UserInfo ( -- 회원정보
			UserNo -- 회원번호
		);

-- 후원정보
ALTER TABLE proj21_funding.FundingInfo
	ADD CONSTRAINT FK_Project_TO_FundingInfo -- 프로젝트 -> 후원정보
		FOREIGN KEY (
			PrjNo -- 프로젝트번호
		)
		REFERENCES proj21_funding.Project ( -- 프로젝트
			PrjNo -- 프로젝트번호
		);

-- 프로젝트게시판
ALTER TABLE proj21_funding.PrjBoard
	ADD CONSTRAINT FK_Project_TO_PrjBoard -- 프로젝트 -> 프로젝트게시판
		FOREIGN KEY (
			PrjNo -- 프로젝트번호
		)
		REFERENCES proj21_funding.Project ( -- 프로젝트
			PrjNo -- 프로젝트번호
		);

-- Q&A
ALTER TABLE proj21_funding.QnA
	ADD CONSTRAINT FK_UserInfo_TO_QnA -- 회원정보 -> Q&A
		FOREIGN KEY (
			UserNo -- 문의작성자
		)
		REFERENCES proj21_funding.UserInfo ( -- 회원정보
			UserNo -- 회원번호
		);

-- Q&A
ALTER TABLE proj21_funding.QnA
	ADD CONSTRAINT FK_Admin_TO_QnA -- 관리자 -> Q&A
		FOREIGN KEY (
			AdminId -- 답글작성자
		)
		REFERENCES proj21_funding.Admin ( -- 관리자
			AdminId -- 관리자아이디
		);

-- 사이트게시판
ALTER TABLE proj21_funding.Board
	ADD CONSTRAINT FK_BoardCategory_TO_Board -- 글분류 -> 사이트게시판
		FOREIGN KEY (
			CategoryNo -- 게시글 분류
		)
		REFERENCES proj21_funding.BoardCategory ( -- 글분류
			CategoryNo -- 게시글 분류
		);