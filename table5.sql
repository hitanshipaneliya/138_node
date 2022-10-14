create table sales_order_details(
    orderno varchar(20),
    productno varchar(30),
    qtyordered int(10),
    qtydisp int(10),
    productrate int(10),
    constraint fk_sales_order foreign key(orderno) references sales_order(orderno),
    constraint fk_product_master foreign key(productno) references product_master(productno)
);

insert into sales_order_details values('019001','p00001',4,4,525);
insert into sales_order_details values('019001','p07965',2,1,8400);
insert into sales_order_details values('019001','p07885',2,1,5250);
insert into sales_order_details values('019002','p00001',10,0,525);
insert into sales_order_details values('046865','p07868',3,3,3150);
insert into sales_order_details values('046865','p07885',3,1,5250);
insert into sales_order_details values('046865','p00001',10,10,525);
insert into sales_order_details values('046865','P07885',4,4,1050);
insert into sales_order_details values('019003','p03453',2,2,1050);
insert into sales_order_details values('019003','p06734',1,1,12000);
insert into sales_order_details values('046866','p07965',1,0,8400);
insert into sales_order_details values('046866','p07975',1,0,1050);
insert into sales_order_details values('019008','p00001',10,5,525);
insert into sales_order_details values('019008','p07975',5,3,1050);

select * from sales_order_details;

