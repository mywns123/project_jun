select * from project;
select * from userinfo ;
insert into userinfo(UserNo, UserId, UserPw, UserName, Address, DetailAddress, UserPhone, Email) values (1, 1, 1, '김경연', '대구','북구','010-6510-7277','kymonk@naver.com');
insert into project  values (1, 1, '프로젝트', '프로젝트', 200, now(), '2021-06-06', '2021-06-06',0);

UserNo, UserId, UserPw, UserName, Address, DetailAddress, UserPhone, Email, BankAccount, BankName



select UserNo, UserId, UserPw, UserName, Address, DetailAddress, UserPhone, Email, BankAccount, BankName
from userinfo ;

select UserNo, UserId, UserPw, UserName, Address,
	 		   DetailAddress, UserPhone, Email, BankAccount, BankName
		  from userinfo	;
		  
update userinfo set UserPhone = "010", Email="test@test", BankName = "qq" where username= '김경연';
delete from userinfo where userNo >3;