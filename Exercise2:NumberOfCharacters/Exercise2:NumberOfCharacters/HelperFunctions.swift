//
//  HelperFunctions.swift
//  Exercise2:NumberOfCharacters
//
//  Created by Janie Clayton-Hasz on 2/5/16.
//  Copyright © 2016 Red Queen Coder. All rights reserved.
//

import Foundation

func inputStringAndCharacterCount(input:String) -> (String, String) {
    
    let yourInputString:String
    let numberOfCharactersString:String
    
    if input.characters.count == 0 {
        yourInputString = "You need to enter a string!"
        numberOfCharactersString = ""
    } else if Int(input) != nil {
        yourInputString = "Please enter letters and not numbers!"
        numberOfCharactersString = ""
    } else {
        yourInputString = "Your input string: \(input)"
        numberOfCharactersString = "\(input.uppercaseString) has \(input.characters.count) characters."
    }
    
    return (yourInputString, numberOfCharactersString)
}

// Initially, I thought I needed two functions, but I noticed a lot of code overlap and remembered I can return a tuple

/*
func yourInputString(input:String) -> String {
    
    if input.characters.count == 0 {
        return "You need to enter a string!"
    } else if Int(input) != nil {
        return "Please enter letters and not numbers!"
    } else {
        return "Your input string: \(input)"
    }
    
}

func numberOfCharactersInString(input:String) -> String {
    
    if input.characters.count == 0 {
        return ""
    } else if Int(input) != nil {
        return ""
    } else {
        return "\(input.uppercaseString) has \(input.characters.count) characters."
    }
    
}
*/