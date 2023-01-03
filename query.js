const express=require("express");
const app=express();
const port=5500;

app.get("/login",(req,res)=>{
    console.log(req.query);
    res.json({msg:"hello"})
});
app.listen(port,()=>{
    console.log(`server listning is ${port}`);
});
