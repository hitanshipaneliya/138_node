const express=require("express");
const app=express();
const PORT=5050;
app.use(express.json());
app.use(express.urlencoded());

app.get("/login",(req,res)=>{
    res.sendFile(__dirname+"/index.html");
});

app.post("/login",(req,res)=>{
    const request=req.body;
    console.log("data",request);
});

app.listen(PORT,()=>{
    console.log(`server listning is ${PORT}`);
});