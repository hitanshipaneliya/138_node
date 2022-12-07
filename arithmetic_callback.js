let add=(num,callback)=>
{
    return callback(num+10,false)
}
let sub=(num,callback)=>
{
    return callback(num-5,false)
}
let mul=(num,callback)=>
{
    return callback(num*2,false)
}
let div=(num,callback)=>
{
    return callback(num/3,false)
}
add(10,(addres,error)=>{
    // if(!error){
        sub(addres,(subres,error)=>{
            // if(!error){
                mul(subres,(mulres,error)=>{
                    // if(!error){
                        div(mulres,(divres,error)=>{
                            // if(!error){
                                console.log(divres);
                            // }
                        })
                    // }
                })
            // }
        })
    // }
})

