const express=require("express");
// const app=express();
// const PORT=5050;
index=express.Router();
index.use(express.json());
index.use(express.urlencoded());

index.get("/",(req,res)=>{
    res.sendFile(__dirname+"/index.html");
});

index.post("/",(req,res)=>{
    const request=req.body;
    let username=request.username;
    let password=request.password;

    if(username==password){
        res.json({"msg":"inside post login"});
        console.log(request);
        console.log(username);
        console.log(password)
    }
    else{
        res.json({"msg":"error"});
    }
    console.log("data",req.body);
});

// index.listen(PORT,()=>{
//     console.log(`server listning is ${PORT}`);
// });

module.exports=index;