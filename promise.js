
// let stocks = {
//   Fruits: ["strawberry", "grapes", "banana", "apple"],
//   liquid: ["water", "ice"],
//   holder: ["cone", "cup", "stick"],
//   toppings: ["chocolate", "peanuts"],
// };
// let is_shop_open = true;
// let order = (time, work) => {

//   return new Promise((resolve, reject) => {

//     if (is_shop_open) {

//       setTimeout(() => {


//         resolve(work())


//       }, time)

//     }

//     else {
//       reject(console.log("Our shop is closed"))
//     }

//   })
// }

// order(2000, () => console.log(`${stocks.Fruits[0]} was selected`))

//   .then(() => {
//     return order(0000, () => console.log('production has started'))
//   })


// --------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------

// let promise1=new Promise((resolve,reject)=>{
//   reject("promises");
// })
// console.log(typeof (promise1))
// promise1.then((posres)=>{
//   console.log("resolve:"+posres);
// },(errres)=>{
//   console.log("reject:"+errres);
// });

// console.log("before")
// let promise1=new Promise((resolve,reject)=>{
//   setTimeout(() => {
//     resolve("xyz");
//   }, 5000);
  
// });
// promise1.then((posres)=>{
//   console.log("resolve:"+posres);
// },(errres)=>{
//   console.log("reject:"+errres);
// });

// console.log("after")


// let promise1=new Promise((resolve,reject)=>{
//   setTimeout(() => {
//     resolve("hello1");
//   });
  
// });
// let promise2=new Promise((resolve,reject)=>{
//   resolve("hello2");
// });
 
// promise1.then((posres)=>{
//   console.log(posres);
// },(errres)=>{
//   console.log(errres)
// });
// promise2.then((posres)=>{
//   console.log(posres);
// },(errres)=>{
//   console.log(errres);
// });

// let promise1=new Promise((resolve,reject)=>{
//   resolve("hello1");
// });
// let promise2=new Promise((resolve,reject)=>{
//   resolve("hello2");
// });
// let promise3=new Promise((resolve,reject)=>{
//   resolve("hello3");
// });
 
// promise1.then((posres)=>{
//   console.log(posres);
// },(errres)=>{
//   console.log(errres)
// });
// promise2.then((posres)=>{
//   console.log(posres);
// },(errres)=>{
//   console.log(errres);
// });
// promise3.then((posres)=>{                                             //hello1 hello2 hello3
//   console.log(posres);
// },(errres)=>{
//   console.log(errres);
// });


// Promise.all([promise1,promise2,promise3]).then((posres)=>{
//   console.log(posres);
// },(errres)=>{
//   console.log(errres);                                                    //[ 'hello1', 'hello2', 'hello3' ]
// });

// Promise.race([promise1,promise2,promise3]).then((posres)=>{
//   console.log(posres);
// },(errres)=>{
//   console.log(errres);
// });                                                                              //hello1

// Promise.allSettled([promise1,promise2,promise3]).then((posres)=>{
//   console.log(posres);
// },(errres)=>{
//   console.log(errres);
// });                                        
    
// [
// { status: 'fulfilled', value: 'hello1' },
//   { status: 'fulfilled', value: 'hello2' },
//   { status: 'fulfilled', value: 'hello3' }
// ]                                                                                            
                                                                                                  
  
// let promise1=new Promise((resolve,reject)=>{
//   resolve("hello");
// });
// async function fun1(){
//   let res=await promise1;
//   console.log(res);
// };
// fun1();


function add(num){
  return new Promise((resolve,reject)=>{
    resolve(num+5);
  })
};
function sub(num){
  return new Promise((resolve,reject)=>{
    resolve(num-5);
  })
};

function mul(num){
  return new Promise((resolve,reject)=>{
    resolve(num*5);
  })
};

function div(num){
  return new Promise((resolve,reject)=>{
    resolve(num/5);
  })
};
async function consume(){
  let addres=await add(5);
  let subres=await sub(addres);
  let mulres=await mul(subres);
  let divres=await div(mulres);
  console.log(addres,subres,mulres,divres);
};                                                           //10 5 25 5
consume();

                                                                                  



