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
    
    var lefDiceNumber = 0
    var rightDiceNumber = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let diceImages = [UIImage(named: "DiceOne"),
                        UIImage(named: "DiceTwo"),
                        UIImage(named: "DiceThree"),
                        UIImage(named: "DiceFour"),
                        UIImage(named: "DiceFive"),
                        UIImage(named: "DiceSix")]
        
        
        //we associate image one with the array of image names
        diceImageViewOne.image = diceImages[lefDiceNumber]
        
        lefDiceNumber = generateIndexArrayDicesLeft(leftDiceNumber: lefDiceNumber)
        lefDiceNumber = checkIndexValue(valueIndex: lefDiceNumber)
        
        
        
        //we associate image two with the array of image names
        diceImageViewTwo.image = diceImages[rightDiceNumber]
        
        rightDiceNumber = generateIndexArrayDicesRight(rightDiceNumber: rightDiceNumber)
        rightDiceNumber = checkIndexValue(valueIndex: rightDiceNumber)
    }
    
    
    func generateIndexArrayDicesLeft(leftDiceNumber: Int) -> Int {
        
        var dicenNumberLeftResult = leftDiceNumber;
            dicenNumberLeftResult = dicenNumberLeftResult + 1
        return dicenNumberLeftResult
    }
    
    func generateIndexArrayDicesRight(rightDiceNumber: Int) -> Int {
        
        var dicenNumberRightResult = rightDiceNumber;
            dicenNumberRightResult = dicenNumberRightResult - 1
        return dicenNumberRightResult
    }
    
    func checkIndexValue(valueIndex: Int) -> Int {
        var newValueIndex = valueIndex
        if(newValueIndex == 5){
            newValueIndex = 0
        }else if(newValueIndex == 0){
            newValueIndex = 5
        }
        return newValueIndex
    }

}

