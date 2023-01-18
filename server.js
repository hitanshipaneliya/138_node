const express=require("express");
const cors=require("cors");
const mongoose=require("mongoose");

const data=require("./data");
const User=require("./userModel");
const { users } = require("./data");

mongoose.set("strictQuery",true);

const app=express();
const port=8080;
app.use(express.json());
app.use(cors());

mongoose.connect("mongodb://localhost:27017/node",{                      //      --compass
    // mongodb+srv://admin:admin@cluster0.psh4o9r.mongodb.net/node?retryWrites=true&w=majority   -->atlas
    useNewUrlParser:true,
    useUnifiedTopology:true,
})
.then(()=>console.log("connected"))
.catch((err)=>{
    console.log(err);
});

app.post("/insert_records",(req,res)=>{
    console.log(data.users);
    const result=User.insertMany(data.users); 
    res.send(result);
});

app.get("/getdata",(req,res)=>{
    User.find({},function(err,result){
        if(err) throw err;
        else{
            res.send(result);
        }
    });
})

app.put("/putdata",(req,res)=>{
    User.updateOne({name:req.body.name},
        {$set:{isAdmin:req.body.isAdmin}},(err,result)=>{
            if(err) throw err;
            else{
                res.send({update:"success"});
            }
        });
})

app.delete("/deletedata",(req,res)=>{
    User.deleteOne({name:req.body.name},function(err,result){
        if(err) throw err;
        else{
            res.send({delete:"success"});
        }
    });
})
app.listen(port,()=>{
    console.log(`server listning port number 8080`);
})
