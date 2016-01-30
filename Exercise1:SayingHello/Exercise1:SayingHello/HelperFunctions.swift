//
//  HelperFunctions.swift
//  Exercise1:SayingHello
//
//  Created by Janie Clayton-Hasz on 1/30/16.
//  Copyright © 2016 Red Queen Coder. All rights reserved.
//

import Foundation

func nameFunction(name:String) -> String {
    
    let myInt: Int? = Int(name)
    
    if name.characters.count == 0 {
        return "You need to enter your name"
    } else if myInt != nil {
        return "You entered numbers, not a name"
    } else {
        return "Hello \(name), how are you?"
    }
    
}


