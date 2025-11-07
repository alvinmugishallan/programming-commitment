// // // let a=10;
// // // let b=0;
// // // let c=b/a
// // // console.log(c);

// const { access } = require("node:fs");

// // try {
// //    let a=10;
// //     let b=0;
// //     let c=b/a
// //     console.log(c);  
// //     if(b===0)throw new Error("Division by zero is not allowed.");
// //     if (typeof b =='str') throw new error("Invalid input: b should be a number.");
// //     //let c=b/a
// //     console.log(a/b)
// // } catch (error) {
// //     console.log("Error: Division by zero is not allowed.");
// // }finally{
// //     console.log("The try-catch block has finished executing.");
// // }

// const student ={
//     fullname:'BOBO',
//     yob:2000,
//     gender:'male',
//     accessno:'B33226',
//     phone:'0786261111694',
//     registered:false
//     };
//     console.log(student,accessno);

class students{
    constructor(fullname,yob,accesNO,gender,phone,registered){
        this.fullname=fullname,
        this.yob=yob,
        this.accesNO=accesNO,
        this.gender=gender,
        this.phone=phone,
        this.registered=registered;
    }
}

const student1= new students("Okg",2000,"A001","078626261639",true);
const student2= new students("Otg",2000,"A002","078626261630",false);

console.log(student1,fullname,student1.registered)
console.log(student2,fullname,student2.registered)