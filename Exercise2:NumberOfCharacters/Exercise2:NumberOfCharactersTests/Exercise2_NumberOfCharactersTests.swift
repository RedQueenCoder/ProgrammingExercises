//
//  Exercise2_NumberOfCharactersTests.swift
//  Exercise2:NumberOfCharactersTests
//
//  Created by Janie Clayton-Hasz on 2/5/16.
//  Copyright © 2016 Red Queen Coder. All rights reserved.
//

import XCTest
@testable import Exercise2_NumberOfCharacters

class Exercise2_NumberOfCharactersTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testInputString() {
        let emptyString = ""
        let numberString = "128"
        let testString = "Olive"
        
        let firstTest = inputStringAndCharacterCount(emptyString)
        let secondTest = inputStringAndCharacterCount(numberString)
        let thirdTest = inputStringAndCharacterCount(testString)
        
        XCTAssertEqual(firstTest.0, "You need to enter a string!")
        XCTAssertEqual(firstTest.1, "")
        
        XCTAssertEqual(secondTest.0, "Please enter letters and not numbers!")
        XCTAssertEqual(secondTest.1, "")
        
        XCTAssertEqual(thirdTest.0, "Your input string: \(testString)")
        XCTAssertEqual(thirdTest.1, "\(testString.uppercaseString) has \(testString.characters.count) characters.")
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
