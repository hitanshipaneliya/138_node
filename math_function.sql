 SELECT ABS(-243.5);
+-------------+
| ABS(-243.5) |
+-------------+
|       243.5 |
+-------------+

 SELECT AVG(prfitpercent) AS Averageprfitpercent FROM Product_master;
+---------------------+
| Averageprfitpercent |
+---------------------+
|              4.4444 |
+---------------------+

 SELECT CEIL(25.75);
+-------------+
| CEIL(25.75) |
+-------------+
|          26 |
+-------------+
1 row in set (0.00 sec)

mysql> SELECT count(prfitpercent) AS Averageprfitpercent FROM Product_master;
+---------------------+
| Averageprfitpercent |
+---------------------+
|                   9 |
+---------------------+
1 row in set (0.00 sec)

mysql> SELECT FLOOR(25.75);
+--------------+
| FLOOR(25.75) |
+--------------+
|           25 |
+--------------+
1 row in set (0.00 sec)

mysql> SELECT max(prfitpercent) AS Averageprfitpercent FROM Product_master;
+---------------------+
| Averageprfitpercent |
+---------------------+
|                   6 |
+---------------------+
1 row in set (0.00 sec)

mysql> SELECT min(prfitpercent) AS Averageprfitpercent FROM Product_master;
+---------------------+
| Averageprfitpercent |
+---------------------+
|                   2 |
+---------------------+
1 row in set (0.00 sec)

mysql> SELECT PI();
+----------+
| PI()     |
+----------+
| 3.141593 |
+----------+

SELECT POW(4, 2);
+-----------+
| POW(4, 2) |
+-----------+
|        16 |
+-----------+
1 row in set (0.00 sec)

mysql> SELECT POWER(4, 2);
+-------------+
| POWER(4, 2) |
+-------------+
|          16 |
+-------------+
1 row in set (0.00 sec)

mysql> SELECT RAND();
+--------------------+
| RAND()             |
+--------------------+
| 0.6551463787026204 |
+--------------------+
1 row in set (0.00 sec)

mysql> SELECT RAND(6);
+--------------------+
| RAND(6)            |
+--------------------+
| 0.6563190842571847 |
+--------------------+
1 row in set (0.00 sec)

mysql> SELECT ROUND(135.375, 2);
+-------------------+
| ROUND(135.375, 2) |
+-------------------+
|            135.38 |
+-------------------+
1 row in set (0.00 sec)

mysql> SELECT SQRT(64);
+----------+
| SQRT(64) |
+----------+
|        8 |
+----------+
1 row in set (0.00 sec)

mysql> SELECT sum(prfitpercent) AS Averageprfitpercent FROM Product_master;
+---------------------+
| Averageprfitpercent |
+---------------------+
|                  40 |
+---------------------+
1 row in set (0.00 sec)

mysql> SELECT TRUNCATE(135.375, 2);
+----------------------+
| TRUNCATE(135.375, 2) |
+----------------------+
|               135.37 |
+----------------------+