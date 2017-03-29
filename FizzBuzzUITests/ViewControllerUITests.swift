//
//  ViewControllerUITests.swift
//  FizzBuzz
//
//  Created by Hom, Kenneth on 3/28/17.
//  Copyright © 2017 Hom, Kenneth. All rights reserved.
//

import XCTest

class ViewControllerUITests: XCTestCase {
    
    let app = XCUIApplication()
    
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testTapNumberButtonIncrementsScore() {
        let numberButton = app.buttons["numberButton"]
        
        numberButton.tap()
        
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "1")
    }
    
    func testTapNumberButtonTwiceIncrementsScoreTwice() {
        let numberButton = app.buttons["numberButton"]
        
        numberButton.tap()
        numberButton.tap()
        
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "2")
    }
    
    func testTapFizzButtonIncrementsToThree() {
        let fizzButton = app.buttons["champagne"]
        let numberButton = app.buttons["numberButton"]
        
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        
        XCTAssertEqual(numberButton.label, "3")
    }
    
    func testTapBuzzButtonIncrementsToFive() {
        let fizzButton = app.buttons["champagne"]
        let buzzButton = app.buttons["lightning"]
        let numberButton = app.buttons["numberButton"]
        
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
        buzzButton.tap()
        
        XCTAssertEqual(numberButton.label, "5")
    }
    
    func testTapFizzBuzzIncrementsToFifteen() {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        let fizzbuzzButton = app.buttons["space"]
        
        playTo14()
        
        fizzbuzzButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "15")
    }
    
    
    // MARK: - Helpers
    
    func playTo14() {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        let fizzButton = app.buttons["champagne"]
        let buzzButton = app.buttons["lightning"]
        
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
        buzzButton.tap()
        fizzButton.tap()
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        buzzButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
        numberButton.tap()
    }
    
    
    
}
