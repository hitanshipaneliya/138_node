const express=require("express");
const app=express();
const port=5500;

app.get("/login/:uname/:upwd",(req,res)=>{
    console.log(req.params.uname);
    console.log(req.params.upwd);
    res.json({msg:"hello"})
});
app.listen(port,()=>{
    console.log(`server listning is ${port}`);
});
