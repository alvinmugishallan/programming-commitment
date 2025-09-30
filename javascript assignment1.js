//NAME: MUGISHA ALVIN ALLAN
//REG NO:M25B13/019
//ACCESS NO :B33226
//COURSE: BACHELOR OF SCIENCE IN COMPUTER SCIENCE IN INFORMATION TECHNOLOGY
//REAL LIFE PROBLEM I WOULD LOVE TO SOLVE IS SCAMMING THROUGH FAKE PHONE NUMBERS
//Many people are tricked by fraudsters who use numbers pretending to be from MTN
//I chose MTN cause this is the service provider scammers commonly use to scam people of Uganda 

const { lookup } = require('dns');
const readline = require('readline');

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

const validNumber = "1000771001000";

if (validNumber === "1000771001000") {
    console.log("This is a valid number Of MTN LIMITED");
} else {
    console.log("This is not a valid number Of MTN LIMITED");
}

const reportedScamNumbers = ["1000771001000", "1000771002000", "1000771003000"];

function askQuestion(query) {
    return new Promise(resolve => rl.question(query, resolve));
}

(async function() {
    const countStr = await askQuestion("How many phone numbers do you want to check? ");
    const count = parseInt(countStr, 10);

    for (let i = 0; i < count; i++) {
        const userInput = await askQuestion(`Enter phone number ${i + 1}: `);

        if (reportedScamNumbers.includes(userInput)) {
            console.log(userInput + " is a scam number.");
        } else {
            console.log(userInput + " is a valid number Of MTN LIMITED");
        }
    }

    rl.close();
})();

// EXPLANATION
// CONDITION
// At the start,i used a condition to check if the stored validNumber matches Mtns official Number
// i used if ..else to check if the number is in the list of reported scam reportedScamNumbers.includes

// loop
// i ask the user how many numbers they want to check 

// Function
// i created a functio askQuesgtion that simplifies user input 

// I used (async function(){ ... })(); so the program starts running automatically and can use await for asynchronous input.

// Scam numbers list (array):

// Reported scam numbers are stored in an array reportedScamNumbers.

// The method includes() checks whether the user input exists in that list.