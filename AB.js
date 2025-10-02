// let a=10;
// let b=0;
// let c=b/a
// console.log(c);

try {
   let a=10;
    let b=0;
    let c=b/a
    console.log(c);  
    if(b===0)throw new Error("Division by zero is not allowed.");
    if (typeof b =='str') throw new error("Invalid input: b should be a number.");
    //let c=b/a
    console.log(a/b)
} catch (error) {
    console.log("Error: Division by zero is not allowed.");
}finally{
    console.log("The try-catch block has finished executing.");
}