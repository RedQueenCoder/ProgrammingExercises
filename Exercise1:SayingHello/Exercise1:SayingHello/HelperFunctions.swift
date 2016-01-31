//
//  HelperFunctions.swift
//  Exercise1:SayingHello
//
//  Created by Janie Clayton-Hasz on 1/30/16.
//  Copyright © 2016 Red Queen Coder. All rights reserved.
//

import Foundation

extension String {
    func trim () -> String {
        return self.stringByTrimmingCharactersInSet(.whitespaceAndNewlineCharacterSet())
    }
}

func nameFunction(name:String) -> String {
    
    let trimmedName = name.trim()
    
    guard !trimmedName.isEmpty else {
        return "You need to enter your name"
    }
    
    guard Int(trimmedName) == nil else {
        return "You entered numbers, not a name"
    }
    
    
    return "Hello \(trimmedName), how are you?"
    
}


