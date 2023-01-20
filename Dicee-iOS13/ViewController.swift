//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    @IBOutlet weak var diceButtonRoll: UIButton!
    
    var diceImages = [
        UIImage(imageLiteralResourceName: "DiceOne"),
        UIImage(imageLiteralResourceName: "DiceTwo"),
        UIImage(imageLiteralResourceName: "DiceThree"),
        UIImage(imageLiteralResourceName: "DiceFour"),
        UIImage(imageLiteralResourceName: "DiceFive"),
        UIImage(imageLiteralResourceName: "DiceSix")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func rollButtonTouchedDown(_ sender: UIButton) {
        diceButtonRoll.alpha = 0.5
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        diceButtonRoll.alpha = 1.0
        
        diceImageViewOne.image = diceImages.randomElement()
        diceImageViewTwo.image = diceImages.randomElement()

    }

}

