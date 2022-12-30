var os = require('os');
console.log("CPU architecture: " + os.arch());
console.log("Free memory: " + os.freemem());
console.log("Total memory: " + os.totalmem());
console.log('List of network Interfaces: ' + os.networkInterfaces());
console.log('OS default directory for temp files : ' + os.tmpdir ());


// const os=require("os")
// console.log(os.cpus())

// [
//     {
//       model: 'Intel(R) Core(TM) i5-4460  CPU @ 3.20GHz',
//       speed: 3193,
//       times: {
//         user: 1172531,
//         nice: 0,
//         sys: 1178421,
//         idle: 19304265,
//         irq: 114515
//       }
//     },
//     {
//       model: 'Intel(R) Core(TM) i5-4460  CPU @ 3.20GHz',
//       speed: 3193,
//       times: { user: 1525734, nice: 0, sys: 852625, idle: 19276734, irq: 8890 }
//     },
//     {
//       model: 'Intel(R) Core(TM) i5-4460  CPU @ 3.20GHz',
//       speed: 3193,
//       times: { user: 1448250, nice: 0, sys: 857718, idle: 19349125, irq: 9218 }
//     },
//     {
//       model: 'Intel(R) Core(TM) i5-4460  CPU @ 3.20GHz',
//       speed: 3193,
//       times: { user: 1557828, nice: 0, sys: 777546, idle: 19319703, irq: 8250 }
//     }
//   ]



