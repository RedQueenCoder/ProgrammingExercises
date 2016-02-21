//
//  HelperFunctions.swift
//  Exercise3:PrintingQuotes
//
//  Created by Janie Clayton-Hasz on 2/21/16.
//  Copyright © 2016 Red Queen Coder. All rights reserved.
//

import Foundation

let answer = "Dorothy Parker"

func quoteText() -> String {
    return "You can lead a horticulture, but you cannot make her think."
}

func responseOutput(isResponseCorrect isResponseCorrect:Bool, response:String) -> String {
    if isResponseCorrect == true {
        return "Correct! \(response) said \(quoteText())"
    } else {
        return "Sorry, \(response) did not say that. Try again."
    }
}

func isResponseEmpty(response:String) -> String? {
    if response.characters.count == 0 {
        return "Please enter a response!"
    } else {
        return nil
    }
}