//
//  main.swift
//  HappyOrSad
//
//  Created by Gordon, Russell on 2018-04-04.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

//Input
//make an error message for bad input
let errorMessage = "Please enter a string that has at least 1 and no more than 255 characters."

//prompt
print("What did you say?")
// Loop forever until valid input found
var validInput = ""
while true {
    
    // Unwrap the given input from user, make sure it is not nil
    guard let givenInput = readLine() else {
        
        // Report the error then continue to next iteration of loop to prompt again
        print(errorMessage)
        continue
        
    }
    
    // Show the error message if input is not in range
    if givenInput.count < 1 || givenInput.count > 255 {
        
        //prompt again
        print(errorMessage)
        continue
        
    }
    
    // If we got this far, input is valid
    validInput = givenInput
    break   // exit the loop
    
}

// Get the user input
var happyCount = 0
var sadCount = 0

//Loop over each character of the input string
for individualCharacter in validInput {
    
    //debug: what character are we looking at now
    print(individualCharacter)
    
    //is the character happy, sad, or neither
    switch individualCharacter {
    case "😃", "🙂", "😊", "😄":
        happyCount += 1
    case "😔", "☹", "🙁", "😕":
        sadCount += 1
    default:
        break //do nothing
    }
   
}

// Outpuut
//determine the emotion from the entered text
    if happyCount == 0 && sadCount == 0 {
        print("none")
    } else if happyCount == sadCount {
        print("unsure")
    } else if happyCount > sadCount {
        print("happy")
    } else {
        print("sad")
}


