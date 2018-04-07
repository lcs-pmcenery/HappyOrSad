//
//  main.swift
//  HappyOrSad
//
//  Created by Gordon, Russell on 2018-04-04.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// Get the user input
var happyCount = 0
var sadCount = 0
var rawInput = readLine()

// Print out the input provided
print("You said:")
print(rawInput)

//make sure input is not nil
// (unwrap the optional)
guard let input = rawInput else {
    //If we got here, input is nil, so quit program
    exit(9) // exit with error code 9
}

//Print the verified input
print(input)

//Loop over each character of the input string
for individualCharacter in input {
    
    //debug: what character are we looking at now
    print(individualCharacter)
    
    //is the character happy, sad, or neither
    if individualCharacter == "😃" || individualCharacter == "🙂" || individualCharacter == "😊" || individualCharacter == "😄" {
        happyCount += 1
    } else if individualCharacter == "😔" || individualCharacter == "" {
        sadCount += 1
        print(happyCount)
    }
}

// Outpuut



