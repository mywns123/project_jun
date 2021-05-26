SELECT * FROM qna;
select * from fundinginfo f2 ;
select * from prjoption p2 ;
select * from project p2 ;
select * from addresses;
select * from userinfo;
select * from prjboard p2 ;
select * from userseller u2 ;
select * from admin;
select * from message;
select * from board;
select * from boardcategory b ;

grant all on proj21_funding.* 
to 'user_proj21_funding'@localhost identified by 'rootroot';

CREATE database  proj21_funding;