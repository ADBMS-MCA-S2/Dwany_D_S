create database MovieDB;
use MovieDB;
create table actor(
act_id integer(10),act_name varchar(20),act_gender varchar(20),primary key(act_id));
create table DIRECTOR(dir_id integer(10), dir_name varchar(20), dir_phone bigint(20),primary key(dir_id));
create table MOVIES(Mov_id integer(10) primary key, mov_title varchar(20), mov_year integer(10), mov_lang varchar(20), dir_id integer(10));
create table MOVIE_CAST(act_id integer(10), Mov_id integer(10), role varchar(20),foreign key(act_id) references actor(act_id) on delete cascade,foreign key(Mov_id) references MOVIES(Mov_id) on delete cascade);
create table RATING (Mov_id integer(10), Rev_Stars integer(10),foreign key(Mov_id) references MOVIES(Mov_id)on delete cascade);
insert into actor values(101,"vijay","male");
insert into actor values(100,"Ajith","male");
insert into actor values(102,"Surya","male");
insert into actor values(103,"Divya","female");
insert into actor values(104,"kajal","female");
insert into DIRECTOR values(111,"hitchcock",9946988172);
insert into DIRECTOR values(222,"Steven Spielberg",9946988172);
insert into DIRECTOR values(333,"david",9946984142);
insert into DIRECTOR values(444,"anil",8846988172);
insert into MOVIES values(1,"tangled","2000","english",111);
insert into MOVIES values(2,"Spiderman","1888","hindi",222);
insert into MOVIES values(3,"titanic","1999","malayalam",111);
insert into MOVIES values(4,"iron man","2022","english",444);
insert into  MOVIE_CAST values(101,1,"hero");
insert into  MOVIE_CAST values(100,1,"hero");
insert into  MOVIE_CAST values(102,2,"villan");
insert into  MOVIE_CAST values(104,2,"actress");
insert into  MOVIE_CAST values(103,3,"hero");
insert into  MOVIE_CAST values(104,4,"villan");
insert into RATING values(1,5);
insert into RATING values(2,2);
insert into RATING values(3,4);
insert into RATING values(4,5);
select * from rating;
select * from MOVIE_CAST;
select * from MOVIES;
select * from actor;
select * from DIRECTOR;
select mov_title from MOVIES where dir_id in(Select dir_id from DIRECTOR where dir_name="Hitchcock");
SELECT mov_title FROM MOVIES WHERE mov_id IN (
SELECT mov_id FROM  MOVIE_CAST WHERE act_id IN (
SELECT act_id FROM actor WHERE act_id IN (
SELECT act_id FROM  MOVIE_CAST GROUP BY act_id HAVING COUNT(act_id)>1)));
















