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
        let _ = game.play(move: .number)
        XCTAssertTrue(game.score == 1)
    }
    
    func testOnPlayTwiceScoreIncremented() {
        let _ = game.play(move: .number)
        let _ = game.play(move: .number)
        XCTAssertTrue(game.score == 2)
    }
    
    func testIfMoveIsCorrect() {
        game.score = 2
        let result = game.play(move: .fizz)
        let right = result.right
        XCTAssertEqual(right, true)
    }
    
    func testIfMoveIsIncorrect() {
        let result = game.play(move: .fizz)
        let right = result.right
        XCTAssertEqual(right, false)
    }
    
    func testCorrectBuzzMove() {
        game.score = 4
        let result = game.play(move: .buzz)
        let right = result.right
        XCTAssertTrue(right)
    }
    
    func testIncorrectBuzzMove() {
        game.score = 1
        let result = game.play(move: .buzz)
        let right = result.right
        XCTAssertFalse(right)
    }
    
    func testCorrectFizzBuzzMove() {
        game.score = 14
        let result = game.play(move: .fizzBuzz)
        let right = result.right
        XCTAssertTrue(right)
    }
    
    func testIncorrectFizzBuzzMove() {
        game.score = 1
        let result = game.play(move: .fizzBuzz)
        let right = result.right
        XCTAssertFalse(right)
    }
    
    func testCorrectNumberMove() {
        game.score = 1
        let result = game.play(move: .number)
        let right = result.right
        XCTAssertTrue(right)
    }
    
    func testIncorrectNumberMove() {
        game.score = 2
        let result = game.play(move: .number)
        let right = result.right
        XCTAssertFalse(right)
    }
    
    func testNoIncrementIfWrongMove() {
        game.score = 1
        let _ = game.play(move: .fizz)
        XCTAssertEqual(game.score, 1)
    }
    
    
    
    
    
    
    
    
    
}
