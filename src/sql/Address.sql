create sequence addr_seq start with 1000;
drop sequence addr_seq;
drop table address;
create table address(
	addr_seq decimal primary key,
	zipcode varchar2(20),
	province varchar2(20),
	city varchar2(20),
	gugun varchar2(20),
	doro varchar2(20)
);
--province varchar(20) '경기도',
--city varchar(20) '서울시', '안양시',
--gugun varchar(20) '강남구', '가평군',
--doro varchar(20) '백범로 15'

insert into address values(
	addr_seq.nextval, '120-180','','서울시','서대문구','연세로2라길'
);
insert into address values(
	addr_seq.nextval, '120-180','경기도','세종시','세종구','세종로2라길'
);
insert into address values(
	addr_seq.nextval, '120-180','전라북도','광주광역시','광산구','소촌동'
);
insert into address values(
	addr_seq.nextval, '111-222','전라남도','목포시','목포는항구','비열한거리'
);
insert into address values(
	addr_seq.nextval, '333-444','황해도','북한','삐라','빨간길'
);
insert into address values(
	addr_seq.nextval, '555-666','독도','외로운섬하나','새들의고향','독도는우리땅'
);
insert into address values(
	addr_seq.nextval, '777-888','울릉도','울렁울렁시','지진지진','열매길'
);
insert into address values(
	addr_seq.nextval, '999-010','경상북도','울산시','북구','대왕길'
);
insert into address values(
	addr_seq.nextval, '121-131','경상남도','부산광역시','해운대구','해변의길'
);
insert into address values(
	addr_seq.nextval, '666-333','제주도','제주시','상순구','효리네민박'
);
insert into address
(
	addr_seq, zipcode,
	province, city,
	gugun, doro
)
values
(
	addr_seq.nextval, '996-354','마라도','부산서','다보인다구','니뽄길'
)

select * from address;
