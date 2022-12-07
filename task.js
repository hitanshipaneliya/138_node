
let sum = (number1) => 
{
    
    while (number1 > 9) {
    console.log(number1);
    let sum1=0;
    while(number1!=0);{
        sum1 = sum1 + number1 % 10;
        number1 = parseInt(number1 / 10);
        }
        number1= sum1;
    }
   
    return number1;
}

let total = (number, work) => 
{
    return new Promise((resolve, reject) => {
        if(number>0){
            resolve(console.log(work(number)));
        }
        else{
            reject(console.log(number));
        }
    });
};
let number=123456;
console.log(total(number,sum));

// let check = true;
// let sum = (number,callback) => {
//     return new Promise((resolve, reject) => {
//         if (check <= 9) {
//             resolve(number())
//         }

//     else {
//         reject(console.log("sum closed"))
//     }
// });
// }
// sum(()=>console.log(`sum`))
//     .then(() => {
//     return sum(() => console.log('production has started'))
//   })








// let sum = (number1) => {
//     let sum1 = 0;
//     console.log(number1);
//     while (number1 != 0) {
//         sum1 = sum1 + number1 % 10;
//         number1 = parseInt(number1 / 10);
//     }
//     return sum1;
// }

// let total = (number, callback) => {
//     let n = callback(number);
//     while (n > 9) {
//         return sum(n);
//     }
//     return n;
// }

// let number = 999999999999;
// console.log(total(number, sum));


