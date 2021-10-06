
QUERIES AND OUTPUTS :

Q1. For a certain event only students who belong to team R or are females are allowed to participate. 
    Find the list of students eligible. (Union)
    
OUTPUT:
+---------+--------+------+--------+
| name    | rollno | team | gender |
+---------+--------+------+--------+
| dwayne  |     33 | R    | M      |
| randy   |     56 | R    | M      |
| wanda   |     21 | R    | F      |
| carol   |      7 | W    | F      |
| natasha |     52 | A    | F      |
| gamora  |     34 | G    | F      |
| jean    |     46 | G    | F      |
+---------+--------+------+--------+


Q2. Display count of students in eachteam. (group by) 

OUTPUT:
+------+----------+
| team | count(*) |
+------+----------+
| R    |        3 |
| W    |        3 |
| A    |        2 |
| G    |        3 |
+------+----------+



Q3. Display the average math score of boys from eachteam. (group by) 

OUTPUT:
+------+---------------+
| team | avg_math_boys |
+------+---------------+
| A    |       54.0000 |
| G    |       86.0000 |
| R    |       83.5000 |
| W    |       73.0000 |
+------+---------------+

Q4. Display data in the following format using Group By and Order By
+---------+--------+------------+-------+--------+------+------+------+------+--------+--------+
| name    | rollno | dob        | yjoin | gender | team | math | sci  | eng  | social | sports |
+---------+--------+------------+-------+--------+------+------+------+------+--------+--------+
| dave    |     27 | 1999-09-11 |  2018 | M      | A    |   54 |   68 |   98 |     96 |     77 |
| natasha |     52 | 2001-06-19 |  2019 | F      | A    |   83 |   86 |   89 |     91 |     99 |
| kane    |     11 | 1999-02-13 |  2018 | M      | G    |   86 |   95 |   52 |     57 |     73 |
| gamora  |     34 | 2001-06-19 |  2018 | F      | G    |   84 |   93 |   79 |     94 |     85 |
| dwayne  |     33 | 2000-01-09 |  2019 | M      | R    |   98 |   94 |   91 |     96 |     55 |
| wanda   |     21 | 2001-08-10 |  2019 | F      | R    |   42 |   73 |   59 |     63 |     65 |
| john    |     58 | 2002-03-21 |  2019 | M      | W    |   70 |   87 |   77 |     98 |     67 |
| carol   |      7 | 2000-06-19 |  2018 | F      | W    |   78 |   99 |   45 |     56 |     88 |
+---------+--------+------------+-------+--------+------+------+------+------+--------+--------+

Q5. Use the group by followed by order by followed by limit to show ‘team’ and ‘avg(sci)’columns of 
    the top two teams with highest average in science.


OUTPUT:
+------+----------+
| team | avg(sci) |
+------+----------+
| G    |  95.0000 |
| W    |  90.0000 |
+------+----------+