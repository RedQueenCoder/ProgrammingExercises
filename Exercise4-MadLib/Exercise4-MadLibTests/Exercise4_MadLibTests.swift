//
//  Exercise4_MadLibTests.swift
//  Exercise4-MadLibTests
//
//  Created by Janie Clayton-Hasz on 3/1/16.
//  Copyright © 2016 Red Queen Coder. All rights reserved.
//

import XCTest
@testable import Exercise4_MadLib

class Exercise4_MadLibTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
//    func testIsStringEmpty() {
//        let emptyString = ""
//        let notEmptyString = "Delia"
//        
//        XCTAssert(isStringEmpty(emptyString) == nil)
//        XCTAssert(isStringEmpty(notEmptyString) == "Delia")
//        
//    }
    
    func testOutput() {
        let validDictionary:[String:String] = ["noun":"pug","verb":"oink","adjective":"plush","adverb":"noisily"]
        let invalidDictionary1:[String:String] = ["noun":"","verb":"oink","adjective":"plush","adverb":"noisily"]
        let invalidDictionary2:[String:String] = ["noun":"pug","verb":"","adjective":"plush","adverb":"noisily"]
        let invalidDictionary3:[String:String] = ["noun":"pug","verb":"oink","adjective":"","adverb":"noisily"]
        let invalidDictionary4:[String:String] = ["noun":"pug","verb":"oink","adjective":"plush","adverb":""]

        
        XCTAssert(output(validDictionary) == "Do you oink your plush pug noisily?")
        XCTAssert(output(invalidDictionary1) == "Please enter a noun! \n")
        XCTAssert(output(invalidDictionary2) == "Please enter a verb! \n")
        XCTAssert(output(invalidDictionary3) == "Please enter a adjective! \n")
        XCTAssert(output(invalidDictionary4) == "Please enter a adverb! \n")
    }
    
}
