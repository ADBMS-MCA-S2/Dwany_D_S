create database employee;
use employee;
create table employee(empno varchar(20) not null,emp_name varchar(20) not null,dept varchar(20),salary int(20) not null,doj varchar(20),branch varchar(20));
insert into employee values("E101","Amit","production",45000,"12-Mar-00","bangalore");
insert into employee values("E102","Amit","HR",70000,"03-jul-02","bangalore");
insert into employee values("E103","sunita","manager",120000,"11-Mjan-01","mysore");
insert into employee values("E105","sunita","IT",67000,"01-aug-01","mysore");
insert into employee values("E106","mahesh","civil",145000,"20-sep-03","mumbai");
select * from employee;#q1
select empno,salary from employee;#q2
select avg(salary)from employee;#q3
select count(empno) from employee;#q4
select count(distinct emp_name) from employee;#q5
select sum(salary),emp_name,count(*) as occurences from employee group by emp_name having(count(*)>1);#q6
select sum(salary) from employee where salary>120000;#q7
select * from employee order by emp_name desc;#q8
select * from employee where emp_name="Amit" and salary>50000;#q9










