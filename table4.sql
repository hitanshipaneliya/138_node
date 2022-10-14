-- create table sales_order(
--     orderno varchar(50),
--     clientno varchar(50),
--     orderdate date,
--     delyaddr varchar(60),
--     salesman_no varchar(10),
--     delytype char(30),
--     billyn char(40),
--     delydate date,
--     orderstatus varchar(30),
--     constraint pk_sales_order primary key(orderno),
--     constraint fk_client_master1 foreign key(clientno) references client_master1(clientno),
--     constraint fk_salesman_master foreign key(salesman_no) references salesman_master(salesman_no)
-- );

insert into sales_order values('019001','c00001','04-06-12','surat','s00001','f','n','02-07-20','in process');
insert into sales_order values('019002','c00002','04-06-25','bombay','s00002','p','n','02-06-27','cancelled');
insert into sales_order values('046865','c00001','04-02-18','maharashrta','s00003','f','y','02-02-20','fullfilled');
insert into sales_order values('019003','c00002','04-04-03','chennai','s00004','f','y','02-02-07','fullfilled');
insert into sales_order values('046866','c00001','04-03-20','bhopal','s00003','p','n','02-05-22','cancelled');
insert into sales_order values('019008','c00002','04-03-24','ankleshvar','s00004','f','n','02-06-26','in process');


select * from sales_order;

    +---------+----------+------------+-------------+-------------+----------+--------+------------+-------------+
| orderno | clientno | orderdate  | delyaddr    | salesman_no | delytype | billyn | delydate   | orderstatus |
+---------+----------+------------+-------------+-------------+----------+--------+------------+-------------+
| 019001  | c00001   | 2004-06-12 | surat       | s00001      | f        | n      | 2002-07-20 | in process  |
| 019002  | c00002   | 2004-06-25 | bombay      | s00002      | p        | n      | 2002-06-27 | cancelled   |
| 019003  | c00002   | 2004-04-03 | chennai     | s00004      | f        | y      | 2002-02-07 | fullfilled  |
| 019008  | c00002   | 2004-03-24 | ankleshvar  | s00004      | f        | n      | 2002-06-26 | in process  |
| 046865  | c00001   | 2004-02-18 | maharashrta | s00003      | f        | y      | 2002-02-20 | fullfilled  |
| 046866  | c00001   | 2004-03-20 | bhopal      | s00003      | p        | n      | 2002-05-22 | cancelled   |
+---------+----------+------------+-------------+-------------+----------+--------+------------+-------------+

select * from sales_order order by delyaddr;

    ---------+----------+------------+-------------+-------------+----------+--------+------------+-------------+
| orderno | clientno | orderdate  | delyaddr    | salesman_no | delytype | billyn | delydate   | orderstatus |
+---------+----------+------------+-------------+-------------+----------+--------+------------+-------------+
| 019008  | c00002   | 2004-03-24 | ankleshvar  | s00004      | f        | n      | 2002-06-26 | in process  |
| 046866  | c00001   | 2004-03-20 | bhopal      | s00003      | p        | n      | 2002-05-22 | cancelled   |
| 019002  | c00002   | 2004-06-25 | bombay      | s00002      | p        | n      | 2002-06-27 | cancelled   |
| 019003  | c00002   | 2004-04-03 | chennai     | s00004      | f        | y      | 2002-02-07 | fullfilled  |
| 046865  | c00001   | 2004-02-18 | maharashrta | s00003      | f        | y      | 2002-02-20 | fullfilled  |
| 019001  | c00001   | 2004-06-12 | surat       | s00001      | f        | n      | 2002-07-20 | in process  |
+---------+----------+------------+-------------+-------------+----------+--------+------------+-------------+

 select * from sales_order order by orderstatus desc; 

+---------+----------+------------+-------------+-------------+----------+--------+------------+-------------+
| orderno | clientno | orderdate  | delyaddr    | salesman_no | delytype | billyn | delydate   | orderstatus |
+---------+----------+------------+-------------+-------------+----------+--------+------------+-------------+
| 019001  | c00001   | 2004-06-12 | surat       | s00001      | f        | n      | 2002-07-20 | in process  |
| 019008  | c00002   | 2004-03-24 | ankleshvar  | s00004      | f        | n      | 2002-06-26 | in process  |
| 019003  | c00002   | 2004-04-03 | chennai     | s00004      | f        | y      | 2002-02-07 | fullfilled  |
| 046865  | c00001   | 2004-02-18 | maharashrta | s00003      | f        | y      | 2002-02-20 | fullfilled  |
| 019002  | c00002   | 2004-06-25 | bombay      | s00002      | p        | n      | 2002-06-27 | cancelled   |
| 046866  | c00001   | 2004-03-20 | bhopal      | s00003      | p        | n      | 2002-05-22 | cancelled   |
+---------+----------+------------+-------------+-------------+----------+--------+------------+-------------+

 select * from sales_order where salesman_no in('s00001','s00004');
+---------+----------+------------+------------+-------------+----------+--------+------------+-------------+
| orderno | clientno | orderdate  | delyaddr   | salesman_no | delytype | billyn | delydate   | orderstatus |
+---------+----------+------------+------------+-------------+----------+--------+------------+-------------+
| 019001  | c00001   | 2004-06-12 | surat      | s00001      | f        | n      | 2002-07-20 | in process  |
| 019003  | c00002   | 2004-04-03 | chennai    | s00004      | f        | y      | 2002-02-07 | fullfilled  |
| 019008  | c00002   | 2004-03-24 | ankleshvar | s00004      | f        | n      | 2002-06-26 | in process  |
+---------+----------+------------+------------+-------------+----------+--------+------------+-------------+
3 rows in set (0.01 sec)

mysql> select * from sales_order where salesman_no not in('s00001','s00004');
+---------+----------+------------+-------------+-------------+----------+--------+------------+-------------+
| orderno | clientno | orderdate  | delyaddr    | salesman_no | delytype | billyn | delydate   | orderstatus |
+---------+----------+------------+-------------+-------------+----------+--------+------------+-------------+
| 019002  | c00002   | 2004-06-25 | bombay      | s00002      | p        | n      | 2002-06-27 | cancelled   |
| 046865  | c00001   | 2004-02-18 | maharashrta | s00003      | f        | y      | 2002-02-20 | fullfilled  |
| 046866  | c00001   | 2004-03-20 | bhopal      | s00003      | p        | n      | 2002-05-22 | cancelled   |
+---------+----------+------------+-------------+-------------+----------+--------+------------+-------------+

select * from sales_order where delyaddr like 'b%';
+---------+----------+------------+----------+-------------+----------+--------+------------+-------------+
| orderno | clientno | orderdate  | delyaddr | salesman_no | delytype | billyn | delydate   | orderstatus |
+---------+----------+------------+----------+-------------+----------+--------+------------+-------------+
| 019002  | c00002   | 2004-06-25 | bombay   | s00002      | p        | n      | 2002-06-27 | cancelled   |
| 046866  | c00001   | 2004-03-20 | bhopal   | s00003      | p        | n      | 2002-05-22 | cancelled   |
+---------+----------+------------+----------+-------------+----------+--------+------------+-------------+

 select * from sales_order where delyaddr like '_a%';
+---------+----------+------------+-------------+-------------+----------+--------+------------+-------------+
| orderno | clientno | orderdate  | delyaddr    | salesman_no | delytype | billyn | delydate   | orderstatus |
+---------+----------+------------+-------------+-------------+----------+--------+------------+-------------+
| 046865  | c00001   | 2004-02-18 | maharashrta | s00003      | f        | y      | 2002-02-20 | fullfilled  |
+---------+----------+------------+-------------+-------------+----------+--------+------------+-------------+

 select * from sales_order where delyaddr like '%u___';
+---------+----------+------------+----------+-------------+----------+--------+------------+-------------+
| orderno | clientno | orderdate  | delyaddr | salesman_no | delytype | billyn | delydate   | orderstatus |
+---------+----------+------------+----------+-------------+----------+--------+------------+-------------+
| 019001  | c00001   | 2004-06-12 | surat    | s00001      | f        | n      | 2002-07-20 | in process  |
+---------+----------+------------+----------+-------------+----------+--------+------------+-------------+

select * from sales_order where delyaddr like '______';
+---------+----------+------------+----------+-------------+----------+--------+------------+-------------+
| orderno | clientno | orderdate  | delyaddr | salesman_no | delytype | billyn | delydate   | orderstatus |
+---------+----------+------------+----------+-------------+----------+--------+------------+-------------+
| 019002  | c00002   | 2004-06-25 | bombay   | s00002      | p        | n      | 2002-06-27 | cancelled   |
| 046866  | c00001   | 2004-03-20 | bhopal   | s00003      | p        | n      | 2002-05-22 | cancelled   |
+---------+----------+------------+----------+-------------+----------+--------+------------+-------------+

 select distinct clientno from sales_order;
+----------+
| clientno |
+----------+
| c00001   |
| c00002   |
+----------+

select * from sales_order limit 3;
+---------+----------+------------+----------+-------------+----------+--------+------------+-------------+
| orderno | clientno | orderdate  | delyaddr | salesman_no | delytype | billyn | delydate   | orderstatus |
+---------+----------+------------+----------+-------------+----------+--------+------------+-------------+
| 019001  | c00001   | 2004-06-12 | surat    | s00001      | f        | n      | 2002-07-20 | in process  |
| 019002  | c00002   | 2004-06-25 | bombay   | s00002      | p        | n      | 2002-06-27 | cancelled   |
| 019003  | c00002   | 2004-04-03 | chennai  | s00004      | f        | y      | 2002-02-07 | fullfilled  |
+---------+----------+------------+----------+-------------+----------+--------+------------+-------------+