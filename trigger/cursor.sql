create database college;
use college;
create table library (shelf_no int(10),category varchar(10),book_name varchar(20));
insert into library values(11,'science','algebra');
insert into library values(12,'science','Data Mining');
insert into library values(21,'comic','New Avengers');
insert into library values(22,'comic','Spiderman');
insert into library values(31,'drama','romeo and juliet');
insert into library values(32,'drama','hamlet');
create table book_by_order(book_shelf int (10),book_category varchar(20),bookname varchar(20));
select * from library;
drop table book_by_order;
drop table library;
call book_details();
select * from book_by_order;