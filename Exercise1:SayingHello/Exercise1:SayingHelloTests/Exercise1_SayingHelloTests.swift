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
    
    func testStringExtensions() {
        
        // trimm extension
        let whiteString = "    \n"
        let whitePrefix = "  foo"
        let whiteSuffix = "foo  \n"
        let fooInfix    = "  foo  \n"
        
        
        XCTAssertEqual(whiteString.trim(), "", "Trim Failed on white string")
        XCTAssertEqual(whitePrefix.trim(), "foo", "Trim Failed on white prefix")
        XCTAssertEqual(whiteSuffix.trim(), "foo", "Trim Failed on white suffix")
        XCTAssertEqual(fooInfix.trim(), "foo", "Trim Failed on foo infix")
    }
    
    func testLabelOutput() {
        let emptyString  = ""
        let numberString = "42"
        let normalString = "Delia"
        let whiteString  = "    \n"
        let trimIt       = " Delia "

        func XCTNameFunctionTrhow(name: String, error: InputFieldError) {
            do {
                let firstTest = try nameFunction(emptyString)
                XCTAssertNil(firstTest, "Name Field Should Throw")
            } catch let error as InputFieldError {
                XCTAssertEqual(error, error, "Wrong Error")
            } catch _ {
                XCTFail("Wrong Error Type")
            }
        }
        
        // Throw tests
        XCTNameFunctionTrhow(emptyString, error: .GenericName)
        XCTNameFunctionTrhow(numberString, error: .Number)
        XCTNameFunctionTrhow(whiteString, error: .GenericName)
        
        // Non Throw tests
        
        let firstTest = try? nameFunction(normalString)
        XCTAssertNotNil(firstTest)
        XCTAssertEqual(firstTest, "Hello \(normalString), how are you?")
        
        let secondTest = try? nameFunction(trimIt)
        XCTAssertNotNil(secondTest)
        XCTAssertEqual(secondTest, "Hello Delia, how are you?")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
