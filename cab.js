let student1={
    name:"raj",
    agr:17,
    course:"node js"
}
let student2={
    name:"ram",
    agr:17,
    course:"react js"
}
let getstudentname=function(city,state,country){
    console.log(this.name+"-"+city+"-"+state+"-"+country);
    // console.log(this.name);
}
// getstudentname.call(student1,"surat","gujarat","india");

// getstudentname.apply(student1,["surat","gujarat","india"]);

let useafter=getstudentname.bind(student1,"surat","gujarat","india");
useafter();