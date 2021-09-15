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




alter TABLE Student add gender varchar(10);

alter TABLE Student add team varchar(10);


alter TABLE Student drop column age; 

alter TABLE Student add dob date;


-- ALTER TABLE table_name MODIFY dob varchar(20) AFTER rollno;


alter TABLE Student add yjoin integer;

insert into Student(name,rollno,math,sci,eng,social,sports,gender,team,dob,yjoin) values("carol",7,78,99,45,56,88,"F","W",'2000-06-19',2018);

insert into Student(name,rollno,math,sci,eng,social,sports,gender,team,dob,yjoin) values("wanda",21,42,73,59,63,65,"F","R",'2001-08-10',2019);

insert into Student(name,rollno,math,sci,eng,social,sports,gender,team,dob,yjoin) values("natasha",52,83,86,89,91,99,"F","A",'2001-06-19',2019);

insert into Student(name,rollno,math,sci,eng,social,sports,gender,team,dob,yjoin) values("gamora",34,84,93,79,94,85,"F","G",'2001-06-19',2018);

insert into Student(name,rollno,math,sci,eng,social,sports,gender,team,dob,yjoin) values("jean",46,98,97,84,87,72,"F","G",'2000-06-19',2019);

update Student set gender="M",team="R",dob='2000-01-09',yjoin='2019' where name="dwayne";

update Student set gender="M",team="W",dob='2002-03-21',yjoin='2019' where name="john";

update Student set gender="M",team="A",dob='1999-09-11',yjoin='2018' where name="dave";

update Student set gender="M",team="R",dob='2001-04-28',yjoin='2019' where name="randy";

update Student set gender="M",team="G",dob='1999-02-13',yjoin='2018' where name="kane";

update Student set gender="M",team="W",dob='2000-11-01',yjoin='2019' where name="tom";

Alter Table Student modify dob date After rollno;

Alter Table Student modify yjoin integer After dob;

Alter Table Student modify gender varchar(10) After yjoin;

Alter Table Student modify team varchar(10) After gender;

alter table campus add pincode integer;

alter table campus modify pincode integer After loc;  

insert into campus(name,cid,loc,pincode,cap,law,engg,buss) values("mdc",106,"pun",411021,1700,0,1,1);

insert into campus(name,cid,loc,pincode,cap,law,engg,buss) values("mdd",109,"del",110001,1400,1,1,0);

insert into campus(name,cid,loc,pincode,cap,law,engg,buss) values("mvc",110,"vel",631001,1400,1,1,1);

insert into campus(name,cid,loc,pincode,cap,law,engg,buss) values("mbd",113,"bgl",560002,800,0,1,1);

update campus set pincode=500043 where cid=101;

update campus set pincode=600012 where cid=104;

update campus set pincode=400076 where cid=107;

Alter Table campus modify pincode integer After loc;

-- queires

-- 1.
	select name,rollno,year(curdate())-year(dob) as age from Student where year(curdate())-year(dob) >18
    order by dob ;

-- 2.
	SELECT gender,count(gender) from Student where year(curdate())-year(dob)>=20 group by gender;


-- 3.
	SELECT count(rollno) as number_of_students from Student where math>(SELECT avg((math+sci+eng+social+sports)/5) from Student);

-- 4.
	SELECT sum(case when pincode like '5%' or pincode like '6%' then cap else 0 end)/sum(case when pincode like '3%' or pincode like '4%' then cap else 0 end) as ratio_of_southzone_to_westzone    
	FROM campus;

-- 5. 
	SELECT *,(math+sci+eng+social+sports)/5 as second_highest from  Student
	order by (math+sci+eng+social+sports)/5 desc limit 1,1;

-- 6.
	SELECT name,rollno as rno,(math+sci+eng+social+sports)/5 as avg_marks,(case when (math+sci+eng+social+sports)/5>(select SUM((math+sci+eng+social+sports)/5)/11 from Student) 
	then 'HIGH' else 'LOW' end)  AS score_status from Student; 



