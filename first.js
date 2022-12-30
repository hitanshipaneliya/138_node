db.createCollection("stud")
{ ok: 1 }
test> show collections
stud
test> db.stud.insertOne({sno:111,sname:"Ram",fees:37500,course:"Node"})
{
  acknowledged: true,
  insertedId: ObjectId("639c5d9370f5faa83cbeb6bc")
}
test> db.collection.find()

test> db.stud.find()
[
  {
    _id: ObjectId("639c5d9370f5faa83cbeb6bc"),
    sno: 111,
    sname: 'Ram',
    fees: 37500,
    course: 'Node'
  }
]



test> db.stud.find().pretty()
[
  {
    _id: ObjectId("639c5d9370f5faa83cbeb6bc"),
    sno: 111,
    sname: 'Ram',
    fees: 37500,
    course: 'Node'
  },
  {
    _id: ObjectId("639c5e4b70f5faa83cbeb6bd"),
    sno: 112,
    sname: 'Raj',
    fees: 45000,
    course: 'Fullstack'
  },
  {
    _id: ObjectId("639c5e6370f5faa83cbeb6be"),
    sno: 113,
    sname: 'a',
    fees: 65000,
    course: 'Django'
  },
  {
    _id: ObjectId("639c5e7770f5faa83cbeb6bf"),
    sno: 114,
    sname: 'b',
    fees: 45000,
    course: 'Node'
  },
  {
    _id: ObjectId("639c5e8a70f5faa83cbeb6c0"),
    sno: 115,
    sname: 'c',
    fees: 65000,
    course: 'Flutter'
  },
  {
    _id: ObjectId("639c5e9e70f5faa83cbeb6c1"),
    sno: 116,
    sname: 'd',
    fees: 25000,
    course: 'python'
  }
]
// ---------------------------------------------------------------
// ------------------------------------------------------------------

  hmongo> db.client_master.find().pretty()
  [
    {
      _id: ObjectId("639c670940d7825e24ce8ebb"),
      clientno: 'C00001',
      clientname: 'Ivan',
      city: 'Bombay',
      pincode: 400054,
      state: 'Maharashtra',
      baldue: 15000
    },
    {
      _id: ObjectId("639c670940d7825e24ce8ebc"),
      clientno: 'C00002',
      clientname: 'Vandana',
      city: 'Madras',
      pincode: 780001,
      state: 'Tamilnadu',
      baldue: 0
    },
    {
      _id: ObjectId("639c670940d7825e24ce8ebd"),
      clientno: 'C00003',
      clientname: 'Pramada',
      city: 'Bombay',
      pincode: 400057,
      state: 'Maharashtra',
      baldue: 5000
    },
    {
      _id: ObjectId("639c670940d7825e24ce8ebe"),
      clientno: 'C00004',
      clientname: 'Basu',
      city: 'Bombay',
      pincode: 400056,
      state: 'Maharashtra',
      baldue: 0
    },
    {
      _id: ObjectId("639c670940d7825e24ce8ebf"),
      clientno: 'C00005',
      clientname: 'Ravi',
      city: 'Delhi',
      pincode: 100001,
      state: 'Tamilnadu',
      baldue: 2000
    },
    {
      _id: ObjectId("639c670940d7825e24ce8ec0"),
      clientno: 'C00006',
      clientname: 'Rukmini',
      city: 'Bombay',
      pincode: 400050,
      state: 'Maharashtra',
      baldue: 0
    }
  ]


  db.client_master.find({}).skip(3)
  db.client_master.find({}).sort({"clientname":1})
  db.client_master.find({}).sort({"clientname":-1})
  db.client_master.find({}).count()
  db.client_master.find({"clientname":"Basu"})

  db.client_master.find({"baldue":{$eq:0}})
  db.client_master.find({"baldue":{$ne:0}})
  db.client_master.find({"baldue":{$gt:0}})
  db.client_master.find({"baldue":{$gte:0}})
  db.client_master.find({"baldue":{$lt:0}})
  db.client_master.find({"baldue":{$lte:0}})
  db.client_master.find({"baldue":{$in:[2000,0]}})
  db.client_master.find({"baldue":{$nin:[2000,0]}})


  db.client_master.find({},{baldue:1})   //particular column of baldue
  

  1.db.client_master.find({})
  2.db.client_master.find({})
  3. db.client_master.find({},{"clientname":1,"city":1,"state":1})
  4.db.product_master.find({},{"description":1})
  5.db.client_master.find({"city":{$eq:"Bombay"}})
  6. db.client_master.find({"baldue":{$eq:5000}})



// ------------------------------------------------------------------------
// ---------------------------------------------------------------------------

 
  hmongo> db.product_master.find().pretty()
  [
    {
      _id: ObjectId("639c696340d7825e24ce8ec1"),
      productno: 'P00001',
      description: '1.44floppies',
      prfitpercent: 5,
      unitmeasured: 'piece',
      qtyonhand: 100,
      recorderlvl: 20,
      sellprice: 525,
      costprice: 500
    },
    {
      _id: ObjectId("639c696340d7825e24ce8ec2"),
      productno: 'P03453',
      description: 'Monitors',
      prfitpercent: 6,
      unitmeasured: 'piece',
      qtyonhand: 10,
      recorderlvl: 3,
      sellprice: 12000,
      costprice: 11200
    },
    {
      _id: ObjectId("639c696340d7825e24ce8ec3"),
      productno: 'P06734',
      description: 'Mouse',
      prfitpercent: 5,
      unitmeasured: 'piece',
      qtyonhand: 20,
      recorderlvl: 5,
      sellprice: 1050,
      costprice: 500
    },
    {
      _id: ObjectId("639c696340d7825e24ce8ec4"),
      productno: 'P07865',
      description: '1.22 floppies',
      prfitpercent: 5,
      unitmeasured: 'piece',
      qtyonhand: 100,
      recorderlvl: 20,
      sellprice: 525,
      costprice: 500
    },
    {
      _id: ObjectId("639c696340d7825e24ce8ec5"),
      productno: 'P07868',
      description: 'Keyboards',
      prfitpercent: 2,
      unitmeasured: 'piece',
      qtyonhand: 10,
      recorderlvl: 3,
      sellprice: 3150,
      costprice: 3050
    },
    {
      _id: ObjectId("639c696340d7825e24ce8ec6"),
      productno: 'P07885',
      description: 'CD Drive',
      prfitpercent: 2.5,
      unitmeasured: 'piece',
      qtyonhand: 10,
      recorderlvl: 3,
      sellprice: 5250,
      costprice: 5100
    },
    {
      _id: ObjectId("639c696340d7825e24ce8ec7"),
      productno: 'P07965',
      description: '540 HDD',
      prfitpercent: 4,
      unitmeasured: 'piece',
      qtyonhand: 10,
      recorderlvl: 3,
      sellprice: 8400,
      costprice: 8000
    },
    {
      _id: ObjectId("639c696340d7825e24ce8ec8"),
      productno: 'P07975',
      description: '1.44 Drive',
      prfitpercent: 5,
      unitmeasured: 'piece',
      qtyonhand: 10,
      recorderlvl: 3,
      sellprice: 1050,
      costprice: 1000
    },
    {
      _id: ObjectId("639c696340d7825e24ce8ec9"),
      productno: 'P08865',
      description: '1.22 Drive',
      prfitpercent: 5,
      unitmeasured: 'piece',
      qtyonhand: 2,
      recorderlvl: 3,
      sellprice: 1050,
      costprice: 1000
    }
  ]
  // -----------------------------------------------------------------
  // --------------------------------------------------------------------

  db.salseman_master.find().pretty()
  [
    {
      _id: ObjectId("639c6be740d7825e24ce8eca"),
      salesman_no: 's00001',
      salesmanname: 'kiran',
      address: 'a/14 worli',
      city: 'bombay',
      pincode: 400002,
      state: 'mah',
      salamt: 3000,
      tgttoget: 100,
      ytdsale: 50,
      remark: 'Good'
    },
    {
      _id: ObjectId("639c6be740d7825e24ce8ecb"),
      salesman_no: 's00002',
      salesmanname: 'manish',
      address: '65,nariman',
      city: 'bombay',
      pincode: 400001,
      state: 'mah',
      salamt: 3000,
      tgttoget: 200,
      ytdsale: 100,
      remark: 'Good'
    },
    {
      _id: ObjectId("639c6be740d7825e24ce8ecc"),
      salesman_no: 's00003',
      salesmanname: 'ravi',
      address: 'p-7 bandra',
      city: 'bombay',
      pincode: 400032,
      state: 'mah',
      salamt: 3000,
      tgttoget: 200,
      ytdsale: 100,
      remark: 'Good'
    },
    {
      _id: ObjectId("639c6be740d7825e24ce8ecd"),
      salesman_no: 's00004',
      salesmanname: 'Ashish',
      address: 'a/5 Juhu',
      city: 'bombay',
      pincode: 400044,
      state: 'mah',
      salamt: 3500,
      tgttoget: 200,
      ytdsale: 150,
      remark: 'Good'
    }
  ]



    