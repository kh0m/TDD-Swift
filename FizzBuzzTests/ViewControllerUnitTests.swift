//
//  ViewControllerUnitTests.swift
//  FizzBuzz
//
//  Created by Hom, Kenneth on 3/28/17.
//  Copyright © 2017 Hom, Kenneth. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class ViewControllerUnitTests: XCTestCase {

    var viewController: ViewController!

    override func setUp() {
        super.setUp()

        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        UIApplication.shared.keyWindow!.rootViewController = viewController

        let _ = viewController.view
    }

    override func tearDown() {
        super.tearDown()
    }

    func testMoveOneIncrementScore() {
        viewController.play(move: .number)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 1)
    }

    func testMoveTwiceIncrementScore() {
        viewController.play(move: .number)
        viewController.play(move: .number)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 2)
    }

    func testHasAGame() {
        XCTAssertNotNil(viewController.game)
    }

    func testPlayFizz() {
        viewController.game?.score = 2
        viewController.play(move: .fizz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 3)
    }

    func testPlayBuzz() {
        viewController.game?.score = 4
        viewController.play(move: .buzz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 5)
    }

    func testPlayFizzBuzz() {
        viewController.game?.score = 14
        viewController.play(move: .fizzBuzz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 15)
    }

    func testPlayFizzIncorrectNoIncrement() {
        viewController.game?.score = 1
        viewController.play(move: .fizz)
        let newScore = viewController.gameScore
        XCTAssertNotEqual(newScore, 2)
    }

    func testPlayBuzzIncorrectNoIncrement() {
        viewController.game?.score = 3
        viewController.play(move: .buzz)
        let newScore = viewController.gameScore
        XCTAssertNotEqual(newScore, 4)
    }

    func testPlayFizzBuzzIncorrectNoIncrement() {
        viewController.game?.score = 2
        viewController.play(move: .fizzBuzz)
        let newScore = viewController.gameScore
        XCTAssertNotEqual(newScore, 3)
    }
}
