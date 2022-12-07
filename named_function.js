// function fun_one(arg1,arg2,arg3)
// {
//     console.log(arg1,arg2,arg3);
// }
// fun_one("angular","node","mongo");           //angular node mongo
// fun_one("react","node");                      //react node undefined
// fun_one();                                   //undefined undefined undefined
// fun_one(undefined,"node");                    //u        ndefined node undefined
// fun_one(null,null,null);                     //null null null
// fun_one(null,' ',null);                      //null   null
// fun_one(null,{},[]);                         //null {} []


// function fun_zero()
// {
//     console.log("inside fun_zero()");
//     return "hello";
// }                                                 
// function fun_one()
// {
//     console.log("inside fun_one()");
//     return fun_zero();
// }
// function fun_two()
// {
//     console.log("inside fun_two()");
//     return fun_one();
// }
// console.log(fun_two());

// OUTPUT

// inside fun_two()
// inside fun_one()
// inside fun_zero()
// hello




// function fun_one()
// {
//     return "hello";
// }
// function fun_two()
// {
//     return fun_one;
// }
// console.log(fun_two());        //[Function: fun_one]


// function fun_one()
// {                  
//     return "hello";
// }
// function fun_two()
// {
//     return fun_one;
// }
// console.log(fun_two()());       //hello


function fun_one(arg1,arg2,arg3)
{
    console.log(arg1(),arg2(),arg3());
}
function fun_two()
{
    return "hello1";
}
function fun_three()
{
    return "hello2";
}
function fun_four()
{
    return "hello3";
}
fun_one(fun_two,fun_three,fun_four);          //hello1 hello2 hello3