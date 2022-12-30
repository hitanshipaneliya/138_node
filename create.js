db.createCollection("client_master")
db.client_master.insertMany([
    {clientno:'C00001', clientname:'Ivan', city:'Bombay', pincode:400054, state:'Maharashtra', baldue:15000},
    {clientno:'C00002', clientname:'Vandana', city:'Madras',  pincode:780001, state:'Tamilnadu',  baldue:0},
    {clientno:'C00003', clientname:'Pramada', city:'Bombay',  pincode:400057, state:'Maharashtra',  baldue:5000},
    {clientno:'C00004', clientname:'Basu', city:'Bombay',  pincode:400056, state:'Maharashtra',  baldue:0},
    {clientno:'C00005', clientname:'Ravi', city:'Delhi',  pincode:100001, state:'Tamilnadu',  baldue:2000},
    {clientno:'C00006', clientname:'Rukmini', city:'Bombay',  pincode:400050, state:'Maharashtra', baldue: 0}
])

db.createCollection("product_master")
db.product_master.insertMany([
    {productno:'P00001',description:'1.44floppies',prfitpercent:5,unitmeasured:'piece',qtyonhand:100,recorderlvl:20,sellprice:525,costprice:500},
    {productno:'P03453',description:'Monitors',prfitpercent:6,unitmeasured:'piece',qtyonhand:10,recorderlvl:3,sellprice:12000,costprice:11200},
    {productno:'P06734',description:'Mouse',prfitpercent:5,unitmeasured:'piece',qtyonhand:20,recorderlvl:5,sellprice:1050,costprice:500},
    {productno:'P07865',description:'1.22 floppies',prfitpercent:5,unitmeasured:'piece',qtyonhand:100,recorderlvl:20,sellprice:525,costprice:500},
    {productno:'P07868',description:'Keyboards',prfitpercent:2,unitmeasured:'piece',qtyonhand:10,recorderlvl:3,sellprice:3150,costprice:3050},
    {productno:'P07885',description:'CD Drive',prfitpercent:2.50,unitmeasured:'piece',qtyonhand:10,recorderlvl:3,sellprice:5250,costprice:5100},
    {productno:'P07965',description:'540 HDD',prfitpercent:4,unitmeasured:'piece',qtyonhand:10,recorderlvl:3,sellprice:8400,costprice:8000},
    {productno:'P07975',description:'1.44 Drive',prfitpercent:5,unitmeasured:'piece',qtyonhand:10,recorderlvl:3,sellprice:1050,costprice:1000},
    {productno:'P08865',description:'1.22 Drive',prfitpercent:5,unitmeasured:'piece',qtyonhand:2,recorderlvl:3,sellprice:1050,costprice:1000}
])

db.createCollection("salseman_master")
db.salseman_master.insertMany([
    {salesman_no:'s00001',salesmanname:'kiran',address:'a/14 worli',city:'bombay',pincode:400002,state:'mah',salamt:3000,tgttoget:100,ytdsale:50,remark:'Good'},
    {salesman_no:'s00002',salesmanname:'manish',address:'65,nariman',city:'bombay',pincode:400001,state:'mah',salamt:3000,tgttoget:200,ytdsale:100,remark:'Good'},
    {salesman_no:'s00003',salesmanname:'ravi',address:'p-7 bandra',city:'bombay',pincode:400032,state:'mah',salamt:3000,tgttoget:200,ytdsale:100,remark:'Good'},
    {salesman_no:'s00004',salesmanname:'Ashish',address:'a/5 Juhu',city:'bombay',pincode:400044,state:'mah',salamt:3500,tgttoget:200,ytdsale:150,remark:'Good'}
])