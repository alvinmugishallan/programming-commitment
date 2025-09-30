//NAME: MUGISHA ALVIN ALLAN
//REG NO:M25B13/019
//ACCESS NO :B33226
//COURSE: BACHELOR OF SCIENCE IN COMPUTER SCIENCE IN INFORMATION TECHNOLOGY
//REAL LIFE PROBLEM I WOULD LOVE TO SOLVE IS SCAMMING THROUGH FAKE PHONE NUMBERS
//Many people are tricked by fraudsters who use numbers pretending to  be from MTN
// I chose MTN cause this is the service provider scammers commonly use to scam people of Uganda 

var Valid_Number = 1000771001000;

if ( Valid_Number == 1000771001000) {
    console.log("This is a valid number Of MTN LIMITED")
}
//Used to check whether the stored number matches MTN'S offical number
else{no
    console.log("This is not a valid number Of MTN LIMITED")
}

(function(){
    // Example list of reported scam numbers
    const reportedScamNumbers = ["1000771001000", "1000771002000", "1000771003000"];
    
    //Ask how many numbers the user wants to check
    const count = parseInt(prompt("How many phone numbers do you want to check?"),10);
   
//LOOP THROUGH USER INPUTS
    for (let i = 0; i < count; i++) {
        const userInput = prompt("Enter phone number " + (i + 1) + ":");

        if (reportedScamNumbers.includes(userInput)) {
            console.log(userInput + " is a scam number.");
        } else {    
            console.log(userInput+ " is a valid number Of MTN LIMITED");
        }
    }
})();

//FUNCTION
// I wrapped the scam- checking code inside an anonymous self invoking fuction 
//This keeps my code organized and ensures the scam-checking logic runs

//Scam Numbers list
//i stored reported scam numbers inside an array called reportedScamNumbers
//the program checks whether the input is inside using includes()