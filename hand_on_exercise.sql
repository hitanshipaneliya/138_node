1.print the description and total qty sold for each product.

select product_master.description,sum(sales_order_details.qtyordered)
    -> from product_master,sales_order_details
    -> where product_master.productno=sales_order_details.productno
    -> group by product_master.description;
+--------------+-------------------------------------+
| description  | sum(sales_order_details.qtyordered) |
+--------------+-------------------------------------+
| 1.44floppies |                                  34 |
| 540 HDD      |                                   3 |
| CD Drive     |                                   9 |
| Keyboards    |                                   3 |
| Monitors     |                                   2 |
| Mouse        |                                   1 |
| 1.44 Drive   |                                   6 |
+--------------+-------------------------------------+

2.find the value of each product sold.

    select sales_order_details.productno,sum(qtyordered*productrate)
    from sales_order_details
    group by productno;
+-----------+-----------------------------+
| productno | sum(qtyordered*productrate) |
+-----------+-----------------------------+
| p00001    |                       17850 |
| p03453    |                        2100 |
| p06734    |                       12000 |
| p07868    |                        9450 |
| p07885    |                       30450 |
| p07965    |                       25200 |
| p07975    |                        6300 |
+-----------+-----------------------------+

3.calculate the average qty sold for each client that has a maximum order value of 15000.00
    
    select sales_order.clientno,avg(qtyordered)
    from sales_order,sales_order_details
    where sales_order.orderno=sales_order_details.orderno
    group by clientno
    having sum(qtyordered*productrate)>15000;
    +----------+-----------------+
| clientno | avg(qtyordered) |
+----------+-----------------+
| c00001   |          3.3333 |
| c00002   |          5.6000 |
+----------+-----------------+

4.find out the total of all the billed orders for the month of june.

    select count(orderno)
    from sales_order
    where billyn='y'
    and delydate=6;
    +----------------+
| count(orderno) |
+----------------+
|              0 |
+----------------+

------------------------------------------------------------------------------
------------------------------------------------------------------------------

1.find out the products,which have been sold to 'ivan bayross'.

    select client_master1.name,product_master.description
    from client_master1 join sales_order 
    on client_master1.clientno=sales_order.clientno join sales_order_details 
    on sales_order.orderno=sales_order_details.orderno join product_master 
    on product_master.productno=sales_order_details.productno
    where client_master1.name='ivan';   

    +------+--------------+
| name | description  |
+------+--------------+
| Ivan | 1.44floppies |
| Ivan | 1.44floppies |
| Ivan | Keyboards    |
| Ivan | CD Drive     |
| Ivan | CD Drive     |
| Ivan | CD Drive     |
| Ivan | 540 HDD      |
| Ivan | 540 HDD      |
| Ivan | 1.44 Drive   |
+------+--------------+

2.


------------------------------------------------------------------------------------
------------------------------------------------------------------------------------



1.find the productno and description of non-moving products ex.products not being sold.

    select productno,description from product_master
    where orderno(select orderno from sales_order
    where orderno=0 );
    

    select * from sales_order_details
    where orderno not in(orderno); 

    select orderno from sales_order
    where orderno=0;


2. list the customer name ,address1,address2,city and pincode for the client who has placed order no 'o19001'.

    select name,state,city,pincode from client_master1
    where clientno in (select clientno from sales_order
    where orderno='019001');

3. list the client names that have placed orders before the month of may 02.

    select name from client_master1
    where clientno in(select clientno from sales_order
    where month(orderdate)=5);
    +---------+
| name    |
+---------+
| Ivan    |
| Vandana |
+---------+

4.list if the product 'lycra top'has been ordered by any client and print the client_no,name to whoom is was old.

    

5.list the names of clients who have placed orders worth rs.10000 or more.



    