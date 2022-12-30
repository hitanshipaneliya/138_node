(function (x, f = () => x) {
    var x;
    var y = x;
    x = 2;
    return [x, y, f()];
})(1)

    (function () {
        let f = this ? class g { } : class h { };
        return [
            typeof f,
            typeof h
        ];
    })();

console.log(typeof (new (class { class() { } })))


console.log([...[...'...']].length);

// let x=150
// if(x>100)
// let x=1
// console.log(x);

function mys(...params) {
    return params;
}
let x = mys(1, 23, 4)