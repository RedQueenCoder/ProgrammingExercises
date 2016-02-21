//
//  Exercise3_PrintingQuotesTests.swift
//  Exercise3:PrintingQuotesTests
//
//  Created by Janie Clayton-Hasz on 2/21/16.
//  Copyright © 2016 Red Queen Coder. All rights reserved.
//

import XCTest
@testable import Exercise3_PrintingQuotes

class Exercise3_PrintingQuotesTests: XCTestCase {
    
    let correctQuote = "You can lead a horticulture, but you cannot make her think."
    let correctAnswer = "Dorothy Parker"
    let incorrectAnswer = "Virginia Woolf"
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testQuoteText() {
        
        let incorrectQuote = "The cure for boredom is curiosity. There is no cure for curiosity."
        
        XCTAssert(correctQuote == quoteText())
        XCTAssert(incorrectQuote != quoteText())
    }
    
    func testIsTheAnswerCorrect() {
        
        XCTAssert(correctAnswer.isCorrectAnswer)
        XCTAssert(!incorrectAnswer.isCorrectAnswer)
    }
    
    func testResponseOutput() {
        
        let correctResponse = "Correct! Dorothy Parker said You can lead a horticulture, but you cannot make her think."
        let incorrectResponse = "Sorry, Virginia Woolf did not say that. Try again."
        
        XCTAssert(correctResponse == responseOutput(true, response: correctAnswer))
        XCTAssert(incorrectResponse == responseOutput(false, response: incorrectAnswer))
    }
    
    func testIsResponseEmpty() {
        let emptyResponse = ""
        
        XCTAssert(isResponseEmpty(emptyResponse) != nil)
        XCTAssert(isResponseEmpty(emptyResponse) == "Please enter a response!")
        XCTAssert(isResponseEmpty(incorrectAnswer) == nil)
    }
}
