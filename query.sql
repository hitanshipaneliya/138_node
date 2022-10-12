select * from client_master;
----------+---------+--------+---------+-------------+--------+
| Clientno | Name    | city   | pincode | state       | baldue |
+----------+---------+--------+---------+-------------+--------+
| C00001   | Ivan    | Bombay |  400054 | Maharashtra |  15000 |
| C00002   | Vandana | Madras |  780001 | Tamilnadu   |      0 |
| C00003   | Pramada | Bombay |  400057 | Maharashtra |   5000 |
| C00004   | Basu    | Bombay |  400056 | Maharashtra |      0 |
| C00005   | Ravi    | Delhi  |  100001 |             |   2000 |
| C00006   | Rukmini | Bombay |  400050 | Maharashtra |      0 |
+----------+---------+--------+---------+-------------+--------+
select name,city from client_master;
+---------+--------+
| name    | city   |
+---------+--------+
| Ivan    | Bombay |
| Vandana | Madras |
| Pramada | Bombay |
| Basu    | Bombay |
| Ravi    | Delhi  |
| Rukmini | Bombay |
+---------+--------+

select name,city,pincode from client_master;
+---------+--------+---------+
| name    | city   | pincode |
+---------+--------+---------+
| Ivan    | Bombay |  400054 |
| Vandana | Madras |  780001 |
| Pramada | Bombay |  400057 |
| Basu    | Bombay |  400056 |
| Ravi    | Delhi  |  100001 |
| Rukmini | Bombay |  400050 |
+---------+--------+---------+

select * from client_master where name='Ivan';
+----------+------+--------+---------+-------------+--------+
| Clientno | Name | city   | pincode | state       | baldue |
+----------+------+--------+---------+-------------+--------+
| C00001   | Ivan | Bombay |  400054 | Maharashtra |  15000 |
+----------+------+--------+---------+-------------+--------+
1 row in set (0.00 sec)

mysql> select * from client_master where name='Pramada';
+----------+---------+--------+---------+-------------+--------+
| Clientno | Name    | city   | pincode | state       | baldue |
+----------+---------+--------+---------+-------------+--------+
| C00003   | Pramada | Bombay |  400057 | Maharashtra |   5000 |
+----------+---------+--------+---------+-------------+--------+
1 row in set (0.00 sec)

mysql> select city from client_master where name='Ivan';
+--------+
| city   |
+--------+
| Bombay |
+--------+

 select name from client_master where city='bombay';
+---------+
| name    |
+---------+
| Ivan    |
| Pramada |
| Basu    |
| Rukmini |
+---------+

select name from client_master where city='bombay' and baldue >1000;
+---------+
| name    |
+---------+
| Ivan    |
| Pramada |
+---------+
2 rows in set (0.00 sec)

mysql> select name from client_master where city='bombay' or baldue >1000;
+---------+
| name    |
+---------+
| Ivan    |
| Pramada |
| Basu    |
| Ravi    |
| Rukmini |
+---------+

select name from client_master where city!='bombay';
+---------+
| name    |
+---------+
| Vandana |
| Ravi    |
+---------+

 select city from client_master where name!='ravi';
+--------+
| city   |
+--------+
| Bombay |
| Madras |
| Bombay |
| Bombay |
| Bombay |
+--------+