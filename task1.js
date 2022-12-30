window.onload=function(){
const textbox1=document.getElementById("t1");
const textbox2=document.getElementById("t2");
const button=document.getElementById("btn");
const textbox3=document.getElementById("ans");
button.addEventListener('click',()=>{
    console.log("button click")
    console.log(`${t1} and ${t2}`)
    console.log(+t1.value + +t2.value)
    ans.value=+t1.value + +t2.value
})
}