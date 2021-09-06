drop database if exists university_profile;

create database university_profile;

use university_profile;

CREATE TABLE Student(name varchar(20),rollno integer UNIQUE,age integer,math integer,sci integer,eng integer,social integer,sports integer);

insert into Student(name,rollno,age,math,sci,eng,social,sports) values("dwayne",33,21,98,94,91,96,55);

insert into Student(name,rollno,age,math,sci,eng,social,sports) values("john",58,18,70,87,77,98,67);

insert into Student(name,rollno,age,math,sci,eng,social,sports) values("dave",27,22,54,68,98,96,77);

insert into Student(name,rollno,age,math,sci,eng,social,sports) values("randy",56,19,69,75,65,67,98);

insert into Student(name,rollno,age,math,sci,eng,social,sports) values("kane",11,22,86,95,52,57,73);

insert into Student(name,rollno,age,math,sci,eng,social,sports) values("tom",50,21,76,84,62,74,81);

create table campus(name varchar(20),cid integer,loc varchar(20),cap integer,law boolean,engg boolean,buss boolean);

insert into campus(name,cid,loc,cap,law,engg,buss) values("mec",101,"hyd",1000,1,1,1);

insert into campus(name,cid,loc,cap,law,engg,buss) values("muc",104,"mad",2000,0,1,1);

insert into campus(name,cid,loc,cap,law,engg,buss) values("mgt",107,"bom",1500,1,0,0);


	-- QUERIES --


-- 1 
	select name from campus where law=1;

-- 2
	select rollno,age,math,sci,sports from Student where name="dave";

-- 3
	select name,rollno from Student where math>80 OR sci>80;

-- 4
	select distinct social from Student;

-- 5
	SELECT COUNT(eng) FROM Student where eng<70;

-- 6
	select name,rollno from Student where math+sci = (select MAX(math+sci) from Student);

-- 7
	select loc from campus where engg=0;

-- 8
	SELECT sum(case when engg=true then cap else 0 end)/sum(case when engg=false then cap else 0 end) as Eng_to_NonEng_ratio   
	FROM campus;

-- 9
	select name from Student where math>70 AND sci>70 AND eng>70 AND social>70 AND sports>70;

-- 10
	Select count(rollno) From Student where rollno<=20;

	Select count(rollno) From Student where (rollno>20 AND rollno<41);

	Select count(rollno) From Student where (rollno>40 AND rollno<61);
