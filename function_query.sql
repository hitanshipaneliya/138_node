 A.select * from client_master1 where name like '_a%';
+----------+---------+--------+---------+-------------+--------+
| Clientno | Name    | city   | pincode | state       | baldue |
+----------+---------+--------+---------+-------------+--------+
| C00002   | Vandana | Madras |  780001 | Tamilnadu   |      0 |
| C00004   | Basu    | Bombay |  400056 | Maharashtra |      0 |
| C00005   | Ravi    | Delhi  |  100001 |             |   2000 |
+----------+---------+--------+---------+-------------+--------+

B.select * from client_master1 where city like 'M%';
+----------+---------+--------+---------+-----------+--------+
| Clientno | Name    | city   | pincode | state     | baldue |
+----------+---------+--------+---------+-----------+--------+
| C00002   | Vandana | Madras |  780001 | Tamilnadu |      0 |
+----------+---------+--------+---------+-----------+--------+


C.select * from client_master1 where state='maharashtra' or state='tamilnadu';
+----------+---------+--------+---------+-------------+--------+
| Clientno | Name    | city   | pincode | state       | baldue |
+----------+---------+--------+---------+-------------+--------+
| C00001   | Ivan    | Bombay |  400054 | Maharashtra |  15000 |
| C00002   | Vandana | Madras |  780001 | Tamilnadu   |      0 |
| C00003   | Pramada | Bombay |  400057 | Maharashtra |   5000 |
| C00004   | Basu    | Bombay |  400056 | Maharashtra |      0 |
| C00006   | Rukmini | Bombay |  400050 | Maharashtra |      0 |
+----------+---------+--------+---------+-------------+--------+


 D.select * from client_master1 where baldue>10000;
+----------+------+--------+---------+-------------+--------+
| Clientno | Name | city   | pincode | state       | baldue |
+----------+------+--------+---------+-------------+--------+
| C00001   | Ivan | Bombay |  400054 | Maharashtra |  15000 |
+----------+------+--------+---------+-------------+--------+

E.

F.select * from client_master1 where clientno='C00001';
+----------+------+--------+---------+-------------+--------+
| Clientno | Name | city   | pincode | state       | baldue |
+----------+------+--------+---------+-------------+--------+
| C00001   | Ivan | Bombay |  400054 | Maharashtra |  15000 |
+----------+------+--------+---------+-------------+--------+

    select * from client_master1 where clientno='C00002';
+----------+---------+--------+---------+-----------+--------+
| Clientno | Name    | city   | pincode | state     | baldue |
+----------+---------+--------+---------+-----------+--------+
| C00002   | Vandana | Madras |  780001 | Tamilnadu |      0 |
+----------+---------+--------+---------+-----------+--------+

G.select * from product_master where sellprice>500 and sellprice<=750;
+-----------+---------------+--------------+--------------+-----------+-------------+-----------+-----------+
| productno | description   | prfitpercent | unitmeasured | qtyonhand | recorderlvl | sellprice | costprice |
+-----------+---------------+--------------+--------------+-----------+-------------+-----------+-----------+
| P00001    | 1.44floppies  |            5 | piece        |       100 |          20 |       525 |       500 |
| P07865    | 1.22 floppies |            5 | piece        |       100 |          20 |       525 |       500 |
+-----------+---------------+--------------+--------------+-----------+-------------+-----------+-----------+

H. select description,sellprice*0.15 "new_price" from product_master where sellprice>500;
+---------------+-----------+
| description   | new_price |
+---------------+-----------+
| 1.44floppies  |     78.75 |
| Monitors      |   1800.00 |
| Mouse         |    157.50 |
| 1.22 floppies |     78.75 |
| Keyboards     |    472.50 |
| CD Drive      |    787.50 |
| 540 HDD       |   1260.00 |
| 1.44 Drive    |    157.50 |
| 1.22 Drive    |    157.50 |
+---------------+-----------+

I. select name,city,state from client_master1 where state!='maharashtra';
+---------+--------+-----------+
| name    | city   | state     |
+---------+--------+-----------+
| Vandana | Madras | Tamilnadu |
| Ravi    | Delhi  |           |
+---------+--------+-----------+

J.SELECT count(orderno) FROM sales_order;
+----------------+
| count(orderno) |
+----------------+
|              6 |
+----------------+

K.SELECT AVG(costprice) FROM product_master;
+----------------+
| AVG(costprice) |
+----------------+
|      3427.7778 |
+----------------+

L. SELECT max(sellprice) AS max_price FROM Product_master;
+-----------+
| max_price |
+-----------+
|     12000 |
+-----------+

        SELECT min(sellprice) AS min_price FROM Product_master;
        +-----------+
        | min_price |
        +-----------+
        |       525 |
        +-----------+


M. SELECT count(costprice) FROM Product_master where costprice<=500;
+------------------+
| count(costprice) |
+------------------+
|                3 |
+------------------+

N. select * from product_master where qtyonhand<recorderlvl;
+-----------+-------------+--------------+--------------+-----------+-------------+-----------+-----------+
| productno | description | prfitpercent | unitmeasured | qtyonhand | recorderlvl | sellprice | costprice |
+-----------+-------------+--------------+--------------+-----------+-------------+-----------+-----------+
| P08865    | 1.22 Drive  |            5 | piece        |         2 |           3 |      1050 |      1000 |
+-----------+-------------+--------------+--------------+-----------+-------------+-----------+-----------+





