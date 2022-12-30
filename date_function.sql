create table student1(
    id varchar(10),
    rollno int(10),
    age int;
    dateofbirth date
);



insert into student1 values("1",102,"2003-07-30");
insert into student1 values("2",103,"2002-06-30");
insert into student1 values("3",104,"2001-05-30");
insert into student1 values("4",105,"2000-04-30");

update student1 set age=date_format(from_days(datediff("2022-10-20","2003-07-30")),"%y");



 select from_days(datediff("2022-10-20","2003-07-30"));
 +------------------------------------------------+
| from_days(datediff("2022-10-20","2003-07-30")) |
+------------------------------------------------+
| 0019-03-24                                     |
+------------------------------------------------+

 select dayname("2003-07-30");
 +-----------------------+
| dayname("2003-07-30") |
+-----------------------+
| Wednesday             |
+-----------------------+

 select date_format("0019-03-15","%y");
+--------------------------------+
| date_format("0019-03-15","%y") |
+--------------------------------+
| 19                             |
+--------------------------------+