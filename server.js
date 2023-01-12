const express=require("express")
const app=express();
const port=5500;
app.use(express.json())

const getData=require("./getData/getData");
app.use("/getData",getData)


const postdata=require("./postData/postdata");
app.use("/postdata",postdata)


const putdata=require("./putData/putdata");
app.use("/putdata",putdata)


const deletedata=require("./DeleteData/deletedata");
app.use("/deletedata",deletedata)

app.listen(port,()=>{
    console.log(`server listning ${port}`);
})