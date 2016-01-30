//
//  Exercise1_SayingHelloTests.swift
//  Exercise1:SayingHelloTests
//
//  Created by Janie Clayton-Hasz on 1/30/16.
//  Copyright © 2016 Red Queen Coder. All rights reserved.
//

import XCTest
@testable import Exercise1_SayingHello

class Exercise1_SayingHelloTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testLabelOutput() {
        let emptyString = ""
        let numberString = "42"
        let normalString = "Delia"
        
        let firstTest = nameFunction(emptyString)
        let secondTest = nameFunction(numberString)
        let thirdTest = nameFunction(normalString)
        
        XCTAssertEqual(firstTest, "You need to enter your name")
        XCTAssertEqual(secondTest, "You entered numbers, not a name")
        XCTAssertEqual(thirdTest, "Hello \(normalString), how are you?")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
