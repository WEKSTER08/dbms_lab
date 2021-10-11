drop database if exists university_profile;

create database university_profile;

use university_profile;

-- PREVIOUS TABLE CREATIONS

CREATE TABLE Student(name varchar(20),rollno integer UNIQUE,age integer,math integer,sci integer,eng integer,social integer,sports integer);

insert into Student(name,rollno,age,math,sci,eng,social,sports) values("dwayne",33,21,98,94,91,96,55);

insert into Student(name,rollno,age,math,sci,eng,social,sports) values("john",58,18,70,87,77,98,67);

insert into Student(name,rollno,age,math,sci,eng,social,sports) values("dave",27,22,54,68,98,96,77);

insert into Student(name,rollno,age,math,sci,eng,social,sports) values("randy",56,19,69,75,65,67,98);

insert into Student(name,rollno,age,math,sci,eng,social,sports) values("kane",11,22,86,95,52,57,73);

insert into Student(name,rollno,age,math,sci,eng,social,sports) values("tom",50,21,76,84,62,74,81);

alter table Student
add gender varchar(2);

alter table Student
add team varchar(2);

alter table Student
drop column age;

alter table Student 
add dob date;

alter table Student
add yjoin integer;


UPDATE Student
SET yjoin= 2019, gender='M', team='R',dob= '2000-01-09'
WHERE name= 'dwayne';

UPDATE Student
SET yjoin= 2019, gender='M', team='W',dob= '2002-03-21'
WHERE name= 'john';

UPDATE Student
SET yjoin= 2018, gender='M', team='A',dob= '1999-09-11'
WHERE name= 'dave';

UPDATE Student
SET yjoin= 2019, gender='M', team='R',dob= '2001-04-28'
WHERE name= 'randy';

UPDATE Student
SET yjoin= 2018, gender='M', team='G',dob= '1999-02-13'
WHERE name= 'kane';

UPDATE Student
SET yjoin= 2019, gender='M', team='W',dob= '2000-11-01'
WHERE name= 'tom';






INSERT INTO Student(name, rollno, dob,yjoin,gender,team,math,sci,eng,social,sports)
VALUES ('carol', 7, '2000-06-19',2018,'F','W',78,99,45,56,88);

insert INTO Student(name, rollno, dob,yjoin,gender,team,math,sci,eng,social,sports)
VALUES ('wanda', 21, '2001-08-10',2019,'F','R',42,73,59,63,65);

INSERT INTO Student(name, rollno, dob,yjoin,gender,team,math,sci,eng,social,sports)
VALUES ('natasha', 52, '2001-06-19',2019,'F','A',83,86,89,91,99);

INSERT INTO Student(name, rollno, dob,yjoin,gender,team,math,sci,eng,social,sports)
VALUES ('gamora', 34, '2001-06-19',2018,'F','G',84,93,79,94,85);

INSERT INTO Student(name, rollno, dob,yjoin,gender,team,math,sci,eng,social,sports)
VALUES ('jean', 46, '2000-06-19',2019,'F','G',98,97,84,87,72);

Alter Table Student modify dob date After rollno;

Alter Table Student modify yjoin integer After dob;

Alter Table Student modify gender varchar(10) After yjoin;

Alter Table Student modify team varchar(10) After gender;

create table marsk_sem1 (rollno int not null, math int, sci int, eng int, social int, sports int);

insert into marsk_sem1 select rollno, math, sci, eng, social, sports from Student order by rollno desc;
 
alter table marsk_sem1 add primary key (rollno);

create table Campus(name varchar(20),cid integer,loc varchar(20),cap integer,law boolean,engg boolean,buss boolean);

insert into Campus(name,cid,loc,cap,law,engg,buss) values("mec",101,"hyd",1000,1,1,1);

insert into Campus(name,cid,loc,cap,law,engg,buss) values("muc",104,"mad",2000,0,1,1);

insert into Campus(name,cid,loc,cap,law,engg,buss) values("mgt",107,"bom",1500,1,0,0);

ALTER TABLE Campus
ADD pincode integer;

UPDATE Campus
SET pincode=500043
WHERE name= 'mec';

UPDATE Campus
SET pincode=600012
WHERE name= 'muc';


UPDATE Campus
SET pincode=400076
WHERE name= 'mgt';

INSERT INTO Campus(name, cid, loc,pincode,cap,law,engg,buss)
VALUES ('mdc', 106, 'pun',411021,1700,0,1,1);

INSERT INTO Campus(name, cid, loc,pincode,cap,law,engg,buss)
VALUES ('mdd', 109, 'del',110001,1400,1,1,0);

INSERT INTO Campus(name, cid, loc,pincode,cap,law,engg,buss)
VALUES ('mvc', 110, 'vel',631001,1400,1,1,1);

INSERT INTO Campus(name, cid, loc,pincode,cap,law,engg,buss)
VALUES ('mbd', 113, 'bgl',560002,800,0,1,1);

Alter Table Campus modify pincode integer After loc;

-- PREVIOUS TABLE CREATION ENDS

create table faculty(name varchar(20), fid char(4) not null primary key, subject varchar(20));
insert into faculty values ("kakashi", "4003", "math");
insert into faculty values ("guy", "5002", "sports");
insert into faculty values ("kurenai", "5038", "eng");

alter table Campus add primary key (cid);

create table sem1(subj_id char(4) not null primary key, subject varchar(20), fid char(4), cap int, Campus int, foreign key (fid) references faculty(fid), foreign key (campus) references Campus(cid));

insert into sem1 values("101","math", "4003" ,60,101);
insert into sem1 values("102","sports", "5002" ,70,101);
insert into sem1 values("105","eng", "5038" ,60,104);

alter table Student drop column math, drop column sci, drop column eng, drop column social, drop column sports;

alter table Student add foreign key (rollno) references marsk_sem1(rollno);

alter table Student add cid int;
	
alter table Student add foreign key (cid) references Campus(cid);

UPDATE Student
SET cid = 109
WHERE name= 'dwayne';


UPDATE Student
SET cid = 101
WHERE name= 'john';

UPDATE Student
SET cid = 110
WHERE name= 'dave';

UPDATE Student
SET cid = 104
WHERE name= 'randy';

UPDATE Student
SET cid = 104
WHERE name= 'kane';

UPDATE Student
SET cid = 101
WHERE name= 'tom';


UPDATE Student
SET cid = 113
WHERE name= 'carol';

UPDATE Student
SET cid = 107
WHERE name= 'wanda';

UPDATE Student
SET cid = 109
WHERE name= 'natasha';

UPDATE Student
SET cid = 109
WHERE name= 'gamora';


UPDATE Student
SET cid = 110
WHERE name= 'jean';

select * from Student;
select * from Campus;
select * from faculty;
select * from sem1;

