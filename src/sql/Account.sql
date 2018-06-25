select * from tab;
drop table account;
--uid VARCHAR2(20) PRIMARY KEY,
--account 테이블의 account_seq를 1000부터 시작, 자동으로 1씩 증가


create sequence account_seq start with 1000;
drop sequence account_seq;
CREATE TABLE account(
	account_seq DECIMAL primary key,
	money decimal,
	account_num varchar2(20) ,
	account_type varchar2(20),
	create_date date,
	limit decimal
);


--INSERT OBJECT
insert into account values (
	account_seq.nextval, 0, '123-456-789', '일반통장', SYSDATE, 0
);
insert into account values (
	account_seq.nextval, 100, '444-444-444', '일반통장', SYSDATE, 0
);
insert into account values (
	account_seq.nextval, 2000, '222-222-222', '일반통장', SYSDATE, 0
);
insert into account values (
	account_seq.nextval, 3000, '333-333-333', '일반통장', SYSDATE, 0
);
insert into account values (
	account_seq.nextval, 4000, '555-555-555', '일반통장', SYSDATE, 0
);
insert into account values (
	account_seq.nextval, 900, '666-666-666', '일반통장', SYSDATE, 500
);
insert into account values (
	account_seq.nextval, 1900, '777-777-777', '일반통장', SYSDATE, 500
);
insert into account values (
	account_seq.nextval, 29000, '888-888-888', '일반통장', SYSDATE, 500
);
insert into account values (
	account_seq.nextval, 39000, '999-999-999', '일반통장', SYSDATE, 500
);
insert into account values (
	account_seq.nextval, 49000, '100-100-100', '일반통장', SYSDATE, 500
);
insert into account
(
	account_seq, money, account_num, account_type, create_date, limit
)
values(
	account_seq.nextval,'20000','222-333-444','일반통장',sysdate,'500'
);
insert into account
(
	account_seq, money, account_num, account_type, create_date, limit
)
values(
	account_seq.nextval,'20000','222-333-444','일반통장',sysdate,'500'
);

select * from account;

select * from member, account
where userid = 'chjjh0';