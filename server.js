const fs=require("fs")

// fs.readFile("file1.txt","utf8",(err,data)=>{
//     if(err) console.log(err)
//     else console.log(data)
// });

// let content="having fun......";
// fs.writeFile("file1.txt",content,"utf8",(err)=>{
//     if(err) console.log(err);
//     else console.log("file writing done...");
// });

fs.copyFile("file1.txt", "file_copy.txt", (err) => {
    if (err) {
      console.log("Error Found:", err);
    }
});

// data=fs.readFileSync("file1.txt","utf8")
// console.log(data)

// let content1="having some activity..."
// fs.writeFileSync("file1.txt",content,"utf8");

// fs.rename("file1.txt","file12.txt",(err)=>{
//     if(err) console.log(err)
//     else console.log()
// });

// fs.unlink("file12.txt",(err)=>{
//     if(err) console.log(err)
//     else console.log()
// });

// fs.state("file1.tst",(err,data)=>{
//     console.log(data)
// });