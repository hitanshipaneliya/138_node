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
     from manufacturers
     cross join products
     on manufacturers.code=products.manufacturer;
+------+-----------------+------+-----------------+-------+--------------+-------+
| Code | NAME            | Code | NAME            | Price | Manufacturer | Cents |
+------+-----------------+------+-----------------+-------+--------------+-------+
|    6 | winchester      |    1 | Hard Drive      | 194.4 |            5 | 24000 |
|    5 | Fujitsu         |    1 | Hard Drive      | 194.4 |            5 | 24000 |
|    4 | Lomega          |    1 | Hard Drive      | 194.4 |            5 | 24000 |
|    3 | Hewlett-Packard |    1 | Hard Drive      | 194.4 |            5 | 24000 |
|    2 | Creative Labs   |    1 | Hard Drive      | 194.4 |            5 | 24000 |
|    1 | Sony            |    1 | Hard Drive      | 194.4 |            5 | 24000 |
|    6 | winchester      |    2 | Memory          |   108 |            6 | 12000 |
|    5 | Fujitsu         |    2 | Memory          |   108 |            6 | 12000 |
|    4 | Lomega          |    2 | Memory          |   108 |            6 | 12000 |
|    3 | Hewlett-Packard |    2 | Memory          |   108 |            6 | 12000 |
|    2 | Creative Labs   |    2 | Memory          |   108 |            6 | 12000 |
|    1 | Sony            |    2 | Memory          |   108 |            6 | 12000 |
|    6 | winchester      |    3 | Zip drive       | 121.5 |            4 | 15000 |
|    5 | Fujitsu         |    3 | Zip drive       | 121.5 |            4 | 15000 |
|    4 | Lomega          |    3 | Zip drive       | 121.5 |            4 | 15000 |
|    3 | Hewlett-Packard |    3 | Zip drive       | 121.5 |            4 | 15000 |
|    2 | Creative Labs   |    3 | Zip drive       | 121.5 |            4 | 15000 |
|    1 | Sony            |    3 | Zip drive       | 121.5 |            4 | 15000 |
|    6 | winchester      |    4 | Floppy disk     |   4.5 |            6 |   500 |
|    5 | Fujitsu         |    4 | Floppy disk     |   4.5 |            6 |   500 |
|    4 | Lomega          |    4 | Floppy disk     |   4.5 |            6 |   500 |
|    3 | Hewlett-Packard |    4 | Floppy disk     |   4.5 |            6 |   500 |
|    2 | Creative Labs   |    4 | Floppy disk     |   4.5 |            6 |   500 |
|    1 | Sony            |    4 | Floppy disk     |   4.5 |            6 |   500 |
|    6 | winchester      |    5 | Monitor         | 194.4 |            1 | 24000 |
|    5 | Fujitsu         |    5 | Monitor         | 194.4 |            1 | 24000 |
|    4 | Lomega          |    5 | Monitor         | 194.4 |            1 | 24000 |
|    3 | Hewlett-Packard |    5 | Monitor         | 194.4 |            1 | 24000 |
|    2 | Creative Labs   |    5 | Monitor         | 194.4 |            1 | 24000 |
|    1 | Sony            |    5 | Monitor         | 194.4 |            1 | 24000 |
|    6 | winchester      |    6 | DVD drive       | 145.8 |            2 | 18000 |
|    5 | Fujitsu         |    6 | DVD drive       | 145.8 |            2 | 18000 |
|    4 | Lomega          |    6 | DVD drive       | 145.8 |            2 | 18000 |
|    3 | Hewlett-Packard |    6 | DVD drive       | 145.8 |            2 | 18000 |
|    2 | Creative Labs   |    6 | DVD drive       | 145.8 |            2 | 18000 |
|    1 | Sony            |    6 | DVD drive       | 145.8 |            2 | 18000 |
|    6 | winchester      |    7 | CD drive        |    81 |            2 |  9000 |
|    5 | Fujitsu         |    7 | CD drive        |    81 |            2 |  9000 |
|    4 | Lomega          |    7 | CD drive        |    81 |            2 |  9000 |
|    3 | Hewlett-Packard |    7 | CD drive        |    81 |            2 |  9000 |
|    2 | Creative Labs   |    7 | CD drive        |    81 |            2 |  9000 |
|    1 | Sony            |    7 | CD drive        |    81 |            2 |  9000 |
|    6 | winchester      |    8 | laser-Printer   | 218.7 |            3 | 27000 |
|    5 | Fujitsu         |    8 | laser-Printer   | 218.7 |            3 | 27000 |
|    4 | Lomega          |    8 | laser-Printer   | 218.7 |            3 | 27000 |
|    3 | Hewlett-Packard |    8 | laser-Printer   | 218.7 |            3 | 27000 |
|    2 | Creative Labs   |    8 | laser-Printer   | 218.7 |            3 | 27000 |
|    1 | Sony            |    8 | laser-Printer   | 218.7 |            3 | 27000 |
|    6 | winchester      |    9 | Toner cartridge |  59.4 |            3 |  6600 |
|    5 | Fujitsu         |    9 | Toner cartridge |  59.4 |            3 |  6600 |
|    4 | Lomega          |    9 | Toner cartridge |  59.4 |            3 |  6600 |
|    3 | Hewlett-Packard |    9 | Toner cartridge |  59.4 |            3 |  6600 |
|    2 | Creative Labs   |    9 | Toner cartridge |  59.4 |            3 |  6600 |
|    1 | Sony            |    9 | Toner cartridge |  59.4 |            3 |  6600 |
|    6 | winchester      |   10 | DVD burner      | 145.8 |            2 | 18000 |
|    5 | Fujitsu         |   10 | DVD burner      | 145.8 |            2 | 18000 |
|    4 | Lomega          |   10 | DVD burner      | 145.8 |            2 | 18000 |
|    3 | Hewlett-Packard |   10 | DVD burner      | 145.8 |            2 | 18000 |
|    2 | Creative Labs   |   10 | DVD burner      | 145.8 |            2 | 18000 |
|    1 | Sony            |   10 | DVD burner      | 145.8 |            2 | 18000 |
|    6 | winchester      |   11 | Loudspeakers    |    63 |            2 |   700 |
|    5 | Fujitsu         |   11 | Loudspeakers    |    63 |            2 |   700 |
|    4 | Lomega          |   11 | Loudspeakers    |    63 |            2 |   700 |
|    3 | Hewlett-Packard |   11 | Loudspeakers    |    63 |            2 |   700 |
|    2 | Creative Labs   |   11 | Loudspeakers    |    63 |            2 |   700 |
|    1 | Sony            |   11 | Loudspeakers    |    63 |            2 |   700 |
+------+-----------------+------+-----------------+-------+--------------+-------+





select sum(products.price),manufacturers.name
     from manufacturers,products
     where manufacturers.code=products.manufacturer
     group by manufacturers.name;