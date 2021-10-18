select * from student inner join marks_sem1 on marks_sem1.rollno= student.rollno;

select student.name, marks_sem1.sports from student inner join marks_sem1 on marks_sem1.rollno= student.rollno;

select student.name, marks_sem1.math, student.rollno from student inner join campus on  student.cid = campus.cid inner join marks_sem1 on marks_sem1.rollno=student.rollno where campus.law=1;

select * from student left join campus on student.cid=campus.cid;
select * from student right join campus on student.cid=campus.cid;