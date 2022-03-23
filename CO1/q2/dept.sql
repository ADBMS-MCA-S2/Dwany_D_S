create database department;
use department;
create table dept(deptno int(10) not null,dname varchar(20) not null,loc varchar(20) not null,primary key(deptno));
insert into dept values(101,"anika","varkala"),
(102,"dwany","tvm"),
(103,"Sruthi","attingal"),
(104,"jusaina","attingal");
alter table dept rename department;
alter table department add column pincode varchar(20) not null;
SET SQL_SAFE_UPDATES=0;
update department set pincode="1122" where loc="varkala";
update department set pincode="1222" where loc="tvm";
update department set pincode="1235" where loc="attingal";
alter table department change column dname dept_name varchar(20) not null;
alter table department modify loc char(10);
alter table department modify pincode varchar(20);
alter table department  drop column pincode;
select * from department;
