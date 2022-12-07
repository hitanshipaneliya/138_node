// console.log(10+20);
// console.log(10+"20");
// console.log(10+'20');
// console.log(10+ +'20');
// console.log(10+ +'20'+20);
// console.log(10*'20');
// console.log(10 * + +'20');
// console.log(10/'20');



// console.log(true+false);
// console.log(true+true);


// console.log(true+30+50/10*true);

// console.log(false*40+30/6-true);

// console.log(0.2+0.1==0.3);
// console.log(0.1+0.2==0.3);
// console.log(0.1+0.3==0.4);


// console.log(typeof "skill");
// console.log(typeof 10);
// console.log(typeof 10.1);   //exception
// console.log(typeof true);
// console.log(typeof undefined);
// console.log(typeof NaN);    //exception
// console.log(typeof null);
// console.log(typeof []);
// console.log(typeof {});
// console.log(typeof 100n);
// console.log(typeof function(){});
// console.log(typeof Symbol('A'));

// console.log("0"==false);


// var a=1,b=2,c;
// c= --a && b++;
// console.log(a,"",b,"",c);


console.log(null==0)
console.log(undefined==0)
console.log(NaN==0)

console.log(undefined==null)
console.log(undefined===null)
console.log(undefined==NaN)

console.log(NaN==null)
console.log(NaN===null)

var a=10;
{
    var a=100;
}                                           //100
console.log(a)


let a=10;
console.log(a);
let a=20;
console.log(a);                               //error

