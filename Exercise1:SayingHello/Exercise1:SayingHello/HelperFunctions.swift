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

/// Error Type for Input Field Validations
enum InputFieldError: String, ErrorType {
    /// Generic Error for the name field
    case GenericName = "You need to enter your name"
    /// Found a Number when should be a Name
    case Number = "You entered numbers, not a name"
    /// At Least One Letter
    case Letter = "Name should have at least one letter"
}

/// Validates and trim an input string that should be a name.
/// - Parameter name: The input name string.
/// - Returns: The trimmed input name.
/// - Throws: `InputFieldError`
func nameFunction(name:String) throws -> String {
    
    
    let trimmedName = name.trim()
    
    guard !trimmedName.isEmpty else {
        throw InputFieldError.GenericName
    }
    
    guard let onlyLetters = name.stringByApplyingTransform("[:^Letter:] Remove", reverse: false)
        where
        !onlyLetters.isEmpty else {
            throw InputFieldError.Letter
    }
    
    guard Int(trimmedName) == nil else {
        throw InputFieldError.Number
    }
    
    
    
    return "Hello \(trimmedName), how are you?"
    
}


