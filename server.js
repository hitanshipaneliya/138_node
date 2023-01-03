const express=require("express");
const app=express();
const port=5050;
app.use(express.json());
app.use(express.urlencoded());

app.get("/",(req,res)=>{
    res.json({"msg":"hello"})
});


// const login=require("./login")
// app.use("/login",login);


const index=require("./index")
app.use("/index",index);

app.listen(port,()=>{
    console.log(`server listing ${port}`);
})