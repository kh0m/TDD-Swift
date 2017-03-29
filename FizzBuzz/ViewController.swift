//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Hom, Kenneth on 3/27/17.
//  Copyright © 2017 Hom, Kenneth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numberButton: UIButton!
    @IBOutlet weak var fizzButton: UIButton!
    @IBOutlet weak var buzzButton: UIButton!
    @IBOutlet weak var fizzBuzzButton: UIButton!
    
    var game: Game?
    var gameScore: Int? {
        didSet {
            guard let gameScore = gameScore else {
                print("gameScore is nil!")
                return
            }
            numberButton.setTitle("\(gameScore)", for: .normal)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()
        
        guard let game = game else {
            print("game is nil!")
            return
        }
        gameScore = game.score
    }

    func play(move: Move) {
        guard let game = game else {
            print("game is nil!")
            return
        }
        let response = game.play(move: move)
        gameScore = response.score
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        switch sender {
        case fizzButton:
            play(move: .fizz)
        case buzzButton:
            play(move: .buzz)
        case fizzBuzzButton:
            play(move: .fizzBuzz)
        case numberButton:
            play(move: .number)
        default:
            return
        }
    }

}

