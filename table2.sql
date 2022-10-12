create table salesman_master(
    salesman_no varchar(50),
    salesmanname varchar(50),
    address varchar(50),
    city varchar(50),
    pincode numeric(38),
    state varchar(50),
    salamt numeric(38),
    tgttoget numeric(38),
    ytdsale numeric(38),
    remark varchar(50)
    );

    insert into salesman_master values('s00001','kiran','a/14 worli','bombay',400002,'mah',3000,100,50,'Good');
    insert into salesman_master values('s00002','manish','65,nariman','bombay',400001,'mah',3000,200,100,'Good');
    insert into salesman_master values('s00003','ravi','p-7 bandra','bombay',400032,'mah',3000,200,100,'Good');
    insert into salesman_master values('s00004','Ashish','a/5 Juhu','bombay',400044,'mah',3500,200,150,'Good');

    select * from salesman_master;