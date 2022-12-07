// https://www.freecodecamp.org/news/javascrript-async-await-tutorial-learn-callbacks-promises-async-await-by-making-icecream/



let stocks = {
    Fruits : ["strawberry", "grapes", "banana", "apple"],
    liquid : ["water", "ice"],
    holder : ["cone", "cup", "stick"],
    toppings : ["chocolate", "peanuts"],
 };

//  let order=(call_production)=>{
//     console.log("order placed...")
//     call_production();
// }
// let production=()=>{
//     console.log("production start...")
// }
// order(production);




let production=()=>{

    setTimeout(() => {
        console.log("production has started...")
        setTimeout(()=>{
            console.log("the fruit has been chopped...")
            setTimeout(()=>{
                console.log(`${stocks.liquid[0]}and ${stocks.liquid[1]} added`)
                setTimeout(()=>{
                    console.log("start the machine")
                    setTimeout(()=>{
                        console.log(`ice cream placed on ${stocks.holder[3]}`)
                        setTimeout(()=>{
                            console.log(`${stocks.toppings[0]} is topping`)
                            setTimeout(()=>{
                                console.log("serve the ice cream")
                            },2000)
                        },2000)
                    },2000)
                },2000)
            },3000)
        },2000)
    }, 2000)
};
production();