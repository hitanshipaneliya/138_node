SELECT LEFT('hitanshi', 3) AS ExtractString;
+---------------+
| ExtractString |
+---------------+
| hit           |
+---------------+

select length('hitanshi') as lengthofstring;

+----------------+
| lengthofstring |
+----------------+
|              8 |
+----------------+

 SELECT LOWER("MY NANE IS HITANSHI");
+------------------------------+
| LOWER("MY NANE IS HITANSHI") |
+------------------------------+
| my nane is hitanshi          |
+------------------------------+

 SELECT LPAD("SQL Tutorial", 20, "ABC");
+---------------------------------+
| LPAD("SQL Tutorial", 20, "ABC") |
+---------------------------------+
| ABCABCABSQL Tutorial            |
+---------------------------------+

 SELECT LTRIM("     hitanshi") AS LeftTrimmedString;
+-------------------+
| LeftTrimmedString |
+-------------------+
| hitanshi          |
+-------------------+

 SELECT MID("this is a pen", 5, 3) AS ExtractString;
+---------------+
| ExtractString |
+---------------+
|  is           |
+---------------+

SELECT rPAD("SQL Tutorial", 20, "ABC");
+---------------------------------+
| rPAD("SQL Tutorial", 20, "ABC") |
+---------------------------------+
| SQL TutorialABCABCAB            |
+---------------------------------+

 SELECT REPEAT("hitanshi", 3);
+--------------------------+
| REPEAT("hitanshi", 3)    |
+--------------------------+
| hitanshihitanshihitanshi |
+--------------------------+
1 row in set (0.00 sec)

mysql> SELECT REPLACE("hitanshi", "hit", "mit");
+-----------------------------------+
| REPLACE("hitanshi", "hit", "mit") |
+-----------------------------------+
| mitanshi                          |
+-----------------------------------+
1 row in set (0.00 sec)

mysql> SELECT REVERSE("hitanshi");
+---------------------+
| REVERSE("hitanshi") |
+---------------------+
| ihsnatih            |
+---------------------+

 SELECT RIGHT("hitanshi", 4) AS ExtractString;
+---------------+
| ExtractString |
+---------------+
| nshi          |
+---------------+

SELECT RTRIM("hitanshi\     ") AS RightTrimmedString;
+--------------------+
| RightTrimmedString |
+--------------------+
| hitanshi           |
+--------------------+

 SELECT STRCMP("SQL Tutorial", "SQL Tutorial");
+----------------------------------------+
| STRCMP("SQL Tutorial", "SQL Tutorial") |
+----------------------------------------+
|                                      0 |
+----------------------------------------+

 SELECT SUBSTRING("SQL Tutorial", 5, 3) AS ExtractString;
+---------------+
| ExtractString |
+---------------+
| Tut           |
+---------------+

SELECT TRIM('    hitanshi    ') AS TrimmedString;
+---------------+
| TrimmedString |
+---------------+
| hitanshi      |
+---------------+

SELECT UCASE("hitanshi!");
+--------------------+
| UCASE("hitanshi!") |
+--------------------+
| HITANSHI!          |
+--------------------+

 SELECT UPPER("this is a pen!");
+-------------------------+
| UPPER("this is a pen!") |
+-------------------------+
| THIS IS A PEN!          |
+-------------------------+

