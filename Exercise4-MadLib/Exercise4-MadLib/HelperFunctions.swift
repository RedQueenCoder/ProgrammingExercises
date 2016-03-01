//
//  HelperFunctions.swift
//  Exercise4-MadLib
//
//  Created by Janie Clayton-Hasz on 3/1/16.
//  Copyright © 2016 Red Queen Coder. All rights reserved.
//

import Foundation


func output(input:[String:String]) -> String {
    var outputString = String()
    
    for (key, value) in input {
//        let checkValue = isStringEmpty(value)
        
        if value.characters.count == 0 {
            outputString += "Please enter a \(key)! \n"
        }
        
    }
    
    if outputString.characters.count == 0 {
        let noun = input["noun"]!
        let verb = input["verb"]!
        let adjective = input["adjective"]!
        let adverb = input["adverb"]!
        
        outputString = "Do you \(verb) your \(adjective) \(noun) \(adverb)?"
    }
    
    return outputString
}

/*
func isStringEmpty(input:String) -> String? {
    if input.characters.count != 0 {
        return input
    } else {
        return nil
    }
}


func output(input:[String:String]) -> String {
    
    var outputString = String()
    
    let noun = isStringEmpty(input["noun"]!)
    let verb = isStringEmpty(input["verb"]!)
    let adjective = isStringEmpty(input["adjective"]!)
    let adverb = isStringEmpty(input["adverb"]!)
    
    if noun == nil {
        outputString += "Please enter a noun! \n"
    }
    
    if verb == nil {
        outputString += "Please enter a verb! \n"
    }
    
    if adjective == nil {
        outputString += "Please enter an adjective! \n"
    }
    
    if adverb == nil {
        outputString += "Please enter an adverb! \n"
    }
    
    if noun != nil &&
       verb != nil &&
       adjective != nil &&
       adverb != nil
    {
        outputString = "Do you \(verb) your \(adjective) \(noun) \(adverb)?"
    }
    
    return outputString
}
*/