create table manufacturers(Code int,
NAME varchar(50),
Constraint PK_Manufacturers primary key(Code));

create table products(Code int,
NAME varchar(50),
Price real,
Manufacturer int,
Constraint PK_products primary key(Code),
Constraint fK_products Foreign key(Manufacturer)
references manufacturers(Code)
);


insert into manufacturers values(1,"Sony");
insert into manufacturers values(2,"Creative Labs");
insert into manufacturers values(3,"Hewlett-Packard");
insert into manufacturers values(4,"Lomega");
insert into manufacturers values(5,"Fujitsu");
insert into manufacturers values(6,"winchester");

insert into products values(1,"Hard Drive",240,5);
insert into products values(2,"Memory",120,6);
insert into products values(3,"Zip drive",150,4);
insert into products values(4,"Floppy disk",5,6);
insert into products values(5,"Monitor",240,1);
insert into products values(6,"DVD drive",180,2);
insert into products values(7,"CD drive",90,2);
insert into products values(8,"Printer",270,3);
insert into products values(9,"Toner cartridge",66,3);
insert into products values(10,"DVD burner",180,2);

1.1 select name from products;
+-----------------+
| name            |
+-----------------+
| Hard Drive      |
| Memory          |
| Zip drive       |
| Floppy disk     |
| Monitor         |
| DVD drive       |
| CD drive        |
| Printer         |
| Toner cartridge |
| DVD burner      |
+-----------------+


1.2 select name,price from products;
+-----------------+-------+
| name            | price |
+-----------------+-------+
| Hard Drive      |   240 |
| Memory          |   120 |
| Zip drive       |   150 |
| Floppy disk     |     5 |
| Monitor         |   240 |
| DVD drive       |   180 |
| CD drive        |    90 |
| Printer         |   270 |
| Toner cartridge |    66 |
| DVD burner      |   180 |
+-----------------+-------+

1.3 select name,price from products where price<=200;
+-----------------+-------+
| name            | price |
+-----------------+-------+
| Memory          |   120 |
| Zip drive       |   150 |
| Floppy disk     |     5 |
| DVD drive       |   180 |
| CD drive        |    90 |
| Toner cartridge |    66 |
| DVD burner      |   180 |
+-----------------+-------+

1.4 select * from products where price between 60 and 120;
+------+-----------------+-------+--------------+
| Code | NAME            | Price | Manufacturer |
+------+-----------------+-------+--------------+
|    2 | Memory          |   120 |            6 |
|    7 | CD drive        |    90 |            2 |
|    9 | Toner cartridge |    66 |            3 |
+------+-----------------+-------+--------------+

1.5 alter table products add column Cents real;
update products set Cents=price*100;
select name,price*100 "Centss" from products;
+-----------------+--------+
| name            | Centss |
+-----------------+--------+
| Hard Drive      |  24000 |
| Memory          |  12000 |
| Zip drive       |  15000 |
| Floppy disk     |    500 |
| Monitor         |  24000 |
| DVD drive       |  18000 |
| CD drive        |   9000 |
| Printer         |  27000 |
| Toner cartridge |   6600 |
| DVD burner      |  18000 |
+-----------------+--------+

1.6 select avg(Price) from products;
+------------+
| avg(Price) |
+------------+
|      154.1 |
+------------+

1.7 select avg(Price) from products where Manufacturer = 2 ;
+------------+
| avg(Price) |
+------------+
|        150 |
+------------+

1.8 select count(name) from products where price>=180;
+-------------+
| count(name) |
+-------------+
|           5 |
+-------------+

1.9 select name,price from products where price>=180 order by price;
+------------+-------+
| name       | price |
+------------+-------+
| DVD drive  |   180 |
| DVD burner |   180 |
| Hard Drive |   240 |
| Monitor    |   240 |
| Printer    |   270 |
+------------+-------+

1.10 select *
    -> from products,manufacturers
    -> where products.manufacturer=manufacturers.code;
+------+-----------------+-------+--------------+-------+------+-----------------+
| Code | NAME            | Price | Manufacturer | Cents | Code | NAME            |
+------+-----------------+-------+--------------+-------+------+-----------------+
|    5 | Monitor         | 194.4 |            1 | 24000 |    1 | Sony            |
|    6 | DVD drive       | 145.8 |            2 | 18000 |    2 | Creative Labs   |
|    7 | CD drive        |    81 |            2 |  9000 |    2 | Creative Labs   |
|   10 | DVD burner      | 145.8 |            2 | 18000 |    2 | Creative Labs   |
|   11 | Loudspeakers    |    63 |            2 |   700 |    2 | Creative Labs   |
|    8 | laser-Printer   | 218.7 |            3 | 27000 |    3 | Hewlett-Packard |
|    9 | Toner cartridge |  59.4 |            3 |  6600 |    3 | Hewlett-Packard |
|    3 | Zip drive       | 121.5 |            4 | 15000 |    4 | Lomega          |
|    1 | Hard Drive      | 194.4 |            5 | 24000 |    5 | Fujitsu         |
|    2 | Memory          |   108 |            6 | 12000 |    6 | winchester      |
|    4 | Floppy disk     |   4.5 |            6 |   500 |    6 | winchester      |
+------+-----------------+-------+--------------+-------+------+-----------------+

1.11 select products.name,products.price,manufacturers.name
    from products,manufacturers
    where products.manufacturer=manufacturers.code;
    +-----------------+-------+-----------------+
| name            | price | name            |
+-----------------+-------+-----------------+
| Monitor         | 194.4 | Sony            |
| DVD drive       | 145.8 | Creative Labs   |
| CD drive        |    81 | Creative Labs   |
| DVD burner      | 145.8 | Creative Labs   |
| Loudspeakers    |    63 | Creative Labs   |
| laser-Printer   | 218.7 | Hewlett-Packard |
| Toner cartridge |  59.4 | Hewlett-Packard |
| Zip drive       | 121.5 | Lomega          |
| Hard Drive      | 194.4 | Fujitsu         |
| Memory          |   108 | winchester      |
| Floppy disk     |   4.5 | winchester      |
+-----------------+-------+-----------------+
1.12 select avg(price),manufacturer
    from products
    group by manufacturer;

    +--------------------+--------------+
| avg(price)         | manufacturer |
+--------------------+--------------+
|              194.4 |            1 |
|              108.9 |            2 |
| 139.04999999999998 |            3 |
|              121.5 |            4 |
|              194.4 |            5 |
|              56.25 |            6 |
+--------------------+--------------+

1.13 select avg(products.price),manufacturers.name
    from products,manufacturers
    where manufacturers.code=products.manufacturer
    group by manufacturers.name;

    +---------------------+-----------------+
| avg(products.price) | name            |
+---------------------+-----------------+
|               194.4 | Sony            |
|               108.9 | Creative Labs   |
|  139.04999999999998 | Hewlett-Packard |
|               121.5 | Lomega          |
|               194.4 | Fujitsu         |
|               56.25 | winchester      |
+---------------------+-----------------+

1.14 select manufacturers.name,avg(products.price)
    from products,manufacturers
    where manufacturers.code=products.manufacturer
    group by manufacturers.name
    having avg(price)>=150;

    +---------+---------------------+
| name    | avg(products.price) |
+---------+---------------------+
| Sony    |               194.4 |
| Fujitsu |               194.4 |
+---------+---------------------+


1.15 select products.name,products.price
    from products
    where price=(select min(price) from products);

    +-------------+-------+
| name        | price |
+-------------+-------+
| Floppy disk |   4.5 |
+-------------+-------+


1.16 select manufacturers.name,products.name,products.price
    from products,manufacturers
    where products.manufacturer=manufacturers.code
    and products.price=(select max(products.price)from products );

    +-----------------+---------------+-------+
| name            | name          | price |
+-----------------+---------------+-------+
| Hewlett-Packard | laser-Printer | 218.7 |
+-----------------+---------------+-------+



1.17 insert into products values(11,"Loudspeakers",70,2,700);
+------+-----------------+-------+--------------+-------+
| Code | NAME            | Price | Manufacturer | Cents |
+------+-----------------+-------+--------------+-------+
|    1 | Hard Drive      |   240 |            5 | 24000 |
|    2 | Memory          |   120 |            6 | 12000 |
|    3 | Zip drive       |   150 |            4 | 15000 |
|    4 | Floppy disk     |     5 |            6 |   500 |
|    5 | Monitor         |   240 |            1 | 24000 |
|    6 | DVD drive       |   180 |            2 | 18000 |
|    7 | CD drive        |    90 |            2 |  9000 |
|    8 | Printer         |   270 |            3 | 27000 |
|    9 | Toner cartridge |    66 |            3 |  6600 |
|   10 | DVD burner      |   180 |            2 | 18000 |
|   11 | Loudspeakers    |    70 |            2 |   700 |
+------+-----------------+-------+--------------+-------+

1.18 update products set name="laser-Printer" where code=8;
+------+-----------------+-------+--------------+-------+
| Code | NAME            | Price | Manufacturer | Cents |
+------+-----------------+-------+--------------+-------+
|    1 | Hard Drive      |   240 |            5 | 24000 |
|    2 | Memory          |   120 |            6 | 12000 |
|    3 | Zip drive       |   150 |            4 | 15000 |
|    4 | Floppy disk     |     5 |            6 |   500 |
|    5 | Monitor         |   240 |            1 | 24000 |
|    6 | DVD drive       |   180 |            2 | 18000 |
|    7 | CD drive        |    90 |            2 |  9000 |
|    8 | laser-Printer   |   270 |            3 | 27000 |
|    9 | Toner cartridge |    66 |            3 |  6600 |
|   10 | DVD burner      |   180 |            2 | 18000 |
|   11 | Loudspeakers    |    70 |            2 |   700 |
+------+-----------------+-------+--------------+-------+

1.19 update products set price=(price-(price*10)/100);
+------+-----------------+-------+--------------+-------+
| Code | NAME            | Price | Manufacturer | Cents |
+------+-----------------+-------+--------------+-------+
|    1 | Hard Drive      |   216 |            5 | 24000 |
|    2 | Memory          |   108 |            6 | 12000 |
|    3 | Zip drive       |   135 |            4 | 15000 |
|    4 | Floppy disk     |   4.5 |            6 |   500 |
|    5 | Monitor         |   216 |            1 | 24000 |
|    6 | DVD drive       |   162 |            2 | 18000 |
|    7 | CD drive        |    81 |            2 |  9000 |
|    8 | laser-Printer   |   243 |            3 | 27000 |
|    9 | Toner cartridge |  59.4 |            3 |  6600 |
|   10 | DVD burner      |   162 |            2 | 18000 |
|   11 | Loudspeakers    |    63 |            2 |   700 |
+------+-----------------+-------+--------------+-------+

1.20 update products set price=(price-(price*10)/100) where price>=120;
+------+-----------------+-------+--------------+-------+
| Code | NAME            | Price | Manufacturer | Cents |
+------+-----------------+-------+--------------+-------+
|    1 | Hard Drive      | 194.4 |            5 | 24000 |
|    2 | Memory          |   108 |            6 | 12000 |
|    3 | Zip drive       | 121.5 |            4 | 15000 |
|    4 | Floppy disk     |   4.5 |            6 |   500 |
|    5 | Monitor         | 194.4 |            1 | 24000 |
|    6 | DVD drive       | 145.8 |            2 | 18000 |
|    7 | CD drive        |    81 |            2 |  9000 |
|    8 | laser-Printer   | 218.7 |            3 | 27000 |
|    9 | Toner cartridge |  59.4 |            3 |  6600 |
|   10 | DVD burner      | 145.8 |            2 | 18000 |
|   11 | Loudspeakers    |    63 |            2 |   700 |
+------+-----------------+-------+--------------+-------+   

