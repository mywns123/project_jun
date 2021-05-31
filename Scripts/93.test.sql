select * from board;
select * from BoardCategor;

insert into boardcategor values (1, "공지사항");
insert into boardcategor values (2, "이벤트");
insert into boardcategor values (3, "보도자료");

update boardcategor set caregoryName  = "진행중이벤트" where caregoryNo = 2;

delete from boardcategor where caregoryNo  = 3;


insert into board(BoardNo, caregoryNo, BoardTItle, BoardContent, BoardDate) values (1, 1, "이용수칙", "~~~~", "2021-01-01");
update board set caregoryNo = 2, BoardTItle = "여름이벤트", BoardContent ="!!!!!", BoardDate = "2020-06-01" where BoardNo = 1;
delete from board where BoardNo = 1;


select 
	UserNo, UserId, UserPw, UserName,
	Address, DetailAddress, UserPhone, Email,
	BankAcoount, BankName
from userinfo;

where UserNo =?;
where UserId =?;
where Email =?;

insert into userinfo values(
00001, 'test', '0000', '김상건', '대구', '달서구',
'010-3302-1972', 'test@test.com', 00000001, '국민'
);

update userinfo
set UserId = ?, UserPw = ?, UserName = ?,
	Address = ?, DetailAddress = ?, UserPhone = ?, Email = ?,
	BankAcoount = ?, BankName = ?
where UserNo =?;

delete from userinfo where UserNo = ?;

