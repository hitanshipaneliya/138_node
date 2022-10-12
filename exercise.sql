            QUESTION:1

1.find out the name of all clients

     select name from client_master1;
+---------+
| name    |
+---------+
| Ivan    |
| Vandana |
| Pramada |
| Basu    |
| Ravi    |
| Rukmini |
+---------+

2.Retrive the entire contents of the client_master1 tables

    describe client_master1;
+----------+---------------+------+-----+---------+-------+
| Field    | Type          | Null | Key | Default | Extra |
+----------+---------------+------+-----+---------+-------+
| Clientno | varchar(50)   | YES  |     | NULL    |       |
| Name     | varchar(50)   | YES  |     | NULL    |       |
| city     | varchar(50)   | YES  |     | NULL    |       |
| pincode  | decimal(38,0) | YES  |     | NULL    |       |
| state    | varchar(50)   | YES  |     | NULL    |       |
| baldue   | decimal(38,0) | YES  |     | NULL    |       |
+----------+---------------+------+-----+---------+-------+

3.Retrivethe list of names,city,and the state of all clients

     select name,city,state from client_master1;
+---------+--------+-------------+
| name    | city   | state       |
+---------+--------+-------------+
| Ivan    | Bombay | Maharashtra |
| Vandana | Madras | Tamilnadu   |
| Pramada | Bombay | Maharashtra |
| Basu    | Bombay | Maharashtra |
| Ravi    | Delhi  |             |
| Rukmini | Bombay | Maharashtra |
+---------+--------+-------------+

4.list the various products available from the product_master table.

     select description from product_master;
+---------------+
| description   |
+---------------+
| 1.44floppies  |
| monitors      |
| mouse         |
| 1.22 floppies |
| keyboards     |
| CD Drive      |
| 1.44 Drive    |
| 1.22 Drive    |
+---------------+

5.list all the clients who are located in bombay.

     select name from client_master1 where city='bombay';
+---------+
| name    |
+---------+
| Ivan    |
| Pramada |
| Basu    |
| Rukmini |
+---------+

6.find the names of salesman who have salary equal to 3000.

select salesmanname from salesman_master where salamt=3000;
+--------------+
| salesmanname |
+--------------+
| kiran        |
| manish       |
| ravi         |
+--------------+

        QUESTION:2

1.change the city of clientno 'c00005' to 'banglore'.

    select * from client_master1;
+----------+---------+----------+---------+-------------+--------+
| Clientno | Name    | city     | pincode | state       | baldue |
+----------+---------+----------+---------+-------------+--------+
| C00001   | Ivan    | Bombay   |  400054 | Maharashtra |  15000 |
| C00002   | Vandana | Madras   |  780001 | Tamilnadu   |      0 |
| C00003   | Pramada | Bombay   |  400057 | Maharashtra |   5000 |
| C00004   | Basu    | Bombay   |  400056 | Maharashtra |      0 |
| C00005   | Ravi    | banglore |  100001 |             |   2000 |
| C00006   | Rukmini | Bombay   |  400050 | Maharashtra |      0 |
+----------+---------+----------+---------+-------------+--------+

2.change the baldue of clientno 'c00001'to 'banglore'.

     select * from client_master1;
+----------+---------+----------+---------+-------------+--------+
| Clientno | Name    | city     | pincode | state       | baldue |
+----------+---------+----------+---------+-------------+--------+
| C00001   | Ivan    | Bombay   |  400054 | Maharashtra |   1000 |
| C00002   | Vandana | Madras   |  780001 | Tamilnadu   |      0 |
| C00003   | Pramada | Bombay   |  400057 | Maharashtra |   5000 |
| C00004   | Basu    | Bombay   |  400056 | Maharashtra |      0 |
| C00005   | Ravi    | banglore |  100001 |             |   2000 |
| C00006   | Rukmini | Bombay   |  400050 | Maharashtra |      0 |
+----------+---------+----------+---------+-------------+--------+

3.change the cost price of trousers to rs 950.00

4.change the city of the salesman to pune.

     update salesman_master set city='pune';
     +-------------+--------------+------------+------+---------+-------+--------+----------+---------+--------+
| salesman_no | salesmanname | address    | city | pincode | state | salamt | tgttoget | ytdsale | remark |
+-------------+--------------+------------+------+---------+-------+--------+----------+---------+--------+
| s00001      | kiran        | a/14 worli | pune |  400002 | mah   |   3000 |      100 |      50 | Good   |
| s00002      | manish       | 65,nariman | pune |  400001 | mah   |   3000 |      200 |     100 | Good   |
| s00003      | ravi         | p-7 bandra | pune |  400032 | mah   |   3000 |      200 |     100 | Good   |
| s00004      | Ashish       | a/5 Juhu   | pune |  400044 | mah   |   3500 |      200 |     150 | Good   |
+-------------+--------------+------------+------+---------+-------+--------+----------+---------+--------+

drop table client_master1;
Query OK, 0 rows affected (0.02 sec)

mysql> drop table salesman_master;
Query OK, 0 rows affected (0.01 sec)

mysql> drop table product_master;
Query OK, 0 rows affected (0.01 sec)

mysql> drop table student;
Query OK, 0 rows affected (0.01 sec)