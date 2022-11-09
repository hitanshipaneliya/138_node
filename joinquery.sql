 select *
    ->  from manufacturers
    ->  inner join products
    -> on manufacturers.code=products.manufacturer;
+------+-----------------+------+-----------------+-------+--------------+-------+
| Code | NAME            | Code | NAME            | Price | Manufacturer | Cents |
+------+-----------------+------+-----------------+-------+--------------+-------+
|    1 | Sony            |    5 | Monitor         | 194.4 |            1 | 24000 |
|    2 | Creative Labs   |    6 | DVD drive       | 145.8 |            2 | 18000 |
|    2 | Creative Labs   |    7 | CD drive        |    81 |            2 |  9000 |
|    2 | Creative Labs   |   10 | DVD burner      | 145.8 |            2 | 18000 |
|    2 | Creative Labs   |   11 | Loudspeakers    |    63 |            2 |   700 |
|    3 | Hewlett-Packard |    8 | laser-Printer   | 218.7 |            3 | 27000 |
|    3 | Hewlett-Packard |    9 | Toner cartridge |  59.4 |            3 |  6600 |
|    4 | Lomega          |    3 | Zip drive       | 121.5 |            4 | 15000 |
|    5 | Fujitsu         |    1 | Hard Drive      | 194.4 |            5 | 24000 |
|    6 | winchester      |    2 | Memory          |   108 |            6 | 12000 |
|    6 | winchester      |    4 | Floppy disk     |   4.5 |            6 |   500 |
+------+-----------------+------+-----------------+-------+--------------+-------+
11 rows in set (0.00 sec)

mysql> select *
    -> from manufacturers
    -> left join products
    -> on manufacturers.code=products.manufacturer;
+------+-----------------+------+-----------------+-------+--------------+-------+
| Code | NAME            | Code | NAME            | Price | Manufacturer | Cents |
+------+-----------------+------+-----------------+-------+--------------+-------+
|    1 | Sony            |    5 | Monitor         | 194.4 |            1 | 24000 |
|    2 | Creative Labs   |    6 | DVD drive       | 145.8 |            2 | 18000 |
|    2 | Creative Labs   |    7 | CD drive        |    81 |            2 |  9000 |
|    2 | Creative Labs   |   10 | DVD burner      | 145.8 |            2 | 18000 |
|    2 | Creative Labs   |   11 | Loudspeakers    |    63 |            2 |   700 |
|    3 | Hewlett-Packard |    8 | laser-Printer   | 218.7 |            3 | 27000 |
|    3 | Hewlett-Packard |    9 | Toner cartridge |  59.4 |            3 |  6600 |
|    4 | Lomega          |    3 | Zip drive       | 121.5 |            4 | 15000 |
|    5 | Fujitsu         |    1 | Hard Drive      | 194.4 |            5 | 24000 |
|    6 | winchester      |    2 | Memory          |   108 |            6 | 12000 |
|    6 | winchester      |    4 | Floppy disk     |   4.5 |            6 |   500 |
+------+-----------------+------+-----------------+-------+--------------+-------+
11 rows in set (0.00 sec)

mysql> select *
    ->  from manufacturers
    -> right join products
    ->  on manufacturers.code=products.manufacturer;
+------+-----------------+------+-----------------+-------+--------------+-------+
| Code | NAME            | Code | NAME            | Price | Manufacturer | Cents |
+------+-----------------+------+-----------------+-------+--------------+-------+
|    5 | Fujitsu         |    1 | Hard Drive      | 194.4 |            5 | 24000 |
|    6 | winchester      |    2 | Memory          |   108 |            6 | 12000 |
|    4 | Lomega          |    3 | Zip drive       | 121.5 |            4 | 15000 |
|    6 | winchester      |    4 | Floppy disk     |   4.5 |            6 |   500 |
|    1 | Sony            |    5 | Monitor         | 194.4 |            1 | 24000 |
|    2 | Creative Labs   |    6 | DVD drive       | 145.8 |            2 | 18000 |
|    2 | Creative Labs   |    7 | CD drive        |    81 |            2 |  9000 |
|    3 | Hewlett-Packard |    8 | laser-Printer   | 218.7 |            3 | 27000 |
|    3 | Hewlett-Packard |    9 | Toner cartridge |  59.4 |            3 |  6600 |
|    2 | Creative Labs   |   10 | DVD burner      | 145.8 |            2 | 18000 |
|    2 | Creative Labs   |   11 | Loudspeakers    |    63 |            2 |   700 |
+------+-----------------+------+-----------------+-------+--------------+-------+
11 rows in set (0.00 sec)

mysql> select *
    -> from manufacturers
    -> cross join products
    -> on manufacturers.code=products.manufacturer;
+------+-----------------+------+-----------------+-------+--------------+-------+
| Code | NAME            | Code | NAME            | Price | Manufacturer | Cents |
+------+-----------------+------+-----------------+-------+--------------+-------+
|    1 | Sony            |    5 | Monitor         | 194.4 |            1 | 24000 |
|    2 | Creative Labs   |    6 | DVD drive       | 145.8 |            2 | 18000 |
|    2 | Creative Labs   |    7 | CD drive        |    81 |            2 |  9000 |
|    2 | Creative Labs   |   10 | DVD burner      | 145.8 |            2 | 18000 |
|    2 | Creative Labs   |   11 | Loudspeakers    |    63 |            2 |   700 |
|    3 | Hewlett-Packard |    8 | laser-Printer   | 218.7 |            3 | 27000 |
|    3 | Hewlett-Packard |    9 | Toner cartridge |  59.4 |            3 |  6600 |
|    4 | Lomega          |    3 | Zip drive       | 121.5 |            4 | 15000 |
|    5 | Fujitsu         |    1 | Hard Drive      | 194.4 |            5 | 24000 |
|    6 | winchester      |    2 | Memory          |   108 |            6 | 12000 |
|    6 | winchester      |    4 | Floppy disk     |   4.5 |            6 |   500 |
+------+-----------------+------+-----------------+-------+--------------+-------+