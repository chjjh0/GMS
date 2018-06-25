select * from tab;

drop table member;

CREATE TABLE member(
	userid VARCHAR2(20) PRIMARY KEY,
	passwd VARCHAR2(20),
	name VARCHAR2(20),
	ssn VARCHAR2(8),
	regidate DATE,
	phone VARCHAR2(13),
	email VARCHAR2(20),
	profile VARCHAR2(10),
	access_num varchar2(8),
	credit_rating DECIMAL,
	addr_seq DECIMAL,
	account_seq DECIMAL
);
select account_seq from account;
select account_seq from member;
insert into member values (
	'chjjh0','c1c2','김정훈','811206-1',sysdate,'010-2009-3837','chjjh1@naver.com','chjjh1.jpg','',5,1000,1000
);
insert into member values (
	'chjjh1','c1c2','이정훈','821206-2',sysdate,'010-222-3333','chjjh2@hanmail.net','chjjh2.jpg','',4,1001,1001
);
insert into member values (
	'chjjh2','c1c2','최정훈','831206-1',sysdate,'010-444-4444','chjjh3@yahoo.co.kr','chjjh3.jpg','',3,1002,1002
);
insert into member values (
	'chjjh3','c1c2','정정훈','841206-3',sysdate,'010-555-6667','chjjh4@gmail.com','chjjh4.jpg','',2,1003,1003
);
insert into member values (
	'chjjh4','c1c2','윤정훈','851206-1',sysdate,'010-7777-8888','chjjh5@google.com','chjjh5.jpg','',1,1004,1004
);
insert into member values (
	'chjjh5','c1c2','곽정훈','861206-4',sysdate,'010-9999-0101','chjjh6@samsung.co.kr','chjjh6.jpg','',8,1005,1005
);
insert into member values (
	'chjjh6','c1c2','고정훈','871206-1',sysdate,'010-2233-4455','chjjh7@lg.kr','chjjh7.jpg','',9,1006,1006
);
insert into member values (
	'chjjh7','c1c2','오정훈','881206-2',sysdate,'010-6677-8899','chjjh8@go.kr','chjjh8.jpg','',9,1007,1007
);
insert into member values (
	'chjjh8','c1c2','신정훈','891206-2',sysdate,'010-2020-3030','chjjh9@whitehouse.com','chjjh9.jpg','',9,1008,1008
);
insert into member values (
	'chjjh9','c1c2','손정훈','901206-1',sysdate,'010-4141-2323','chjjh10@russia.ru','chjjh10.jpg','',6,1009,1009
);



insert into member
(
	userid,passwd,name,ssn,regidate,phone,email,profile,access_num,credit_rating,addr_seq,account_seq
)
values(
	'chjjh0','c1c2','최정훈','871206-1',sysdate,'010-2009-3837','chjjh@naver.com','chjjh.jpg','',5,1,1000
);	
insert into member
(
	userid,passwd,name,ssn,regidate,phone,email,profile,access_num,credit_rating,addr_seq,account_seq
)
values(
	'chjjh1','c1c2','최정훈','871206-2',sysdate,'010-2009-3837','chjjh2@naver.com','chjjh.jpg','',5,2,1001
);
insert into member
(
	userid,passwd,name,ssn,regidate,phone,email,profile,access_num,credit_rating,addr_seq,account_seq
)
values(
	'chjjh1','c1c2','최정훈2','871206-2',sysdate,'','chjjh2@naver.com','chjjh.jpg','',5,2,2
);

select * from member;
select * from member, account
where userid = 'chjjh0';

--조회 JOIN
select userid, name, account_num 
from member m, account ac, address ad
where m.account_seq = ac.account_seq
and m.address_seq = ad.address_seq
and m.userid = 'chjjh0';


