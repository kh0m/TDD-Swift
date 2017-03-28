//
//  GameTests.swift
//  FizzBuzz
//
//  Created by Hom, Kenneth on 3/27/17.
//  Copyright © 2017 Hom, Kenneth. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class GameTests: XCTestCase {
    
    let game = Game()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testGameStartsAtZero() {
        XCTAssertTrue(game.score == 0)
    }
    
    func testOnPlayScoreIncremented() {
        let _ = game.play(move: "1")
        XCTAssertTrue(game.score == 1)
    }
    
    func testOnPlayTwiceScoreIncremented() {
        let _ = game.play(move: "1")
        let _ = game.play(move: "2")
        XCTAssertTrue(game.score == 2)
    }
    
    func testIfMoveIsCorrect() {
        game.score = 2
        let result = game.play(move: "Fizz")
        let right = result.right
        XCTAssertEqual(right, true)
    }
    
    func testIfMoveIsIncorrect() {
        let result = game.play(move: "Fizz")
        let right = result.right
        XCTAssertEqual(right, false)
    }
    
    func testCorrectBuzzMove() {
        game.score = 4
        let result = game.play(move: "Buzz")
        let right = result.right
        XCTAssertTrue(right)
    }
    
    func testIncorrectBuzzMove() {
        game.score = 1
        let result = game.play(move: "Buzz")
        let right = result.right
        XCTAssertFalse(right)
    }
    
    func testCorrectFizzBuzzMove() {
        game.score = 14
        let result = game.play(move: "FizzBuzz")
        let right = result.right
        XCTAssertTrue(right)
    }
    
    func testIncorrectFizzBuzzMove() {
        game.score = 1
        let result = game.play(move: "FizzBuzz")
        let right = result.right
        XCTAssertFalse(right)
    }
    
    func testCorrectNumberMove() {
        game.score = 1
        let result = game.play(move: "2")
        let right = result.right
        XCTAssertTrue(right)
    }
    
    func testIncorrectNumberMove() {
        game.score = 2
        let result = game.play(move: "3")
        let right = result.right
        XCTAssertFalse(right)
    }
    
    func testNoIncrementIfWrongMove() {
        game.score = 1
        let _ = game.play(move: "Fizz")
        XCTAssertEqual(game.score, 1)
    }
    
    
    
    
    
    
    
    
    
}
