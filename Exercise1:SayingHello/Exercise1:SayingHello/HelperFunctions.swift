//
//  HelperFunctions.swift
//  Exercise1:SayingHello
//
//  Created by Janie Clayton-Hasz on 1/30/16.
//  Copyright © 2016 Red Queen Coder. All rights reserved.
//

import Foundation


extension String {
    
    /// Trims white spaces and new line characters.
    ///
    /// - Returns: A trimmed copy of itself.
    func trim () -> String {
        return self.stringByTrimmingCharactersInSet(.whitespaceAndNewlineCharacterSet())
    }
}

/// Validates and trim an input string that should be a name.
/// - Parameter name: The input name string.
/// - Returns: The trimmed input name or a string describing the error to the user.
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


