//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImage1: UIImageView!
    @IBOutlet weak var diceImage2: UIImageView!
    @IBOutlet weak var totalScoreLabel: UILabel!
    @IBOutlet weak var turnScore: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        totalScoreLabel.text = "";
        
    }
    var incTotalScore = 0;
    var turnRequired = 0;
    @IBAction func rollToScore(_ sender: UIButton) {
        if incTotalScore < 100 {
            let diceArray = [ #imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix") ];
            var arrayNum1 = Int.random(in: 0...5);
            var arrayNum2 = Int.random(in: 0...5);
            diceImage1.image = diceArray[arrayNum1];
            diceImage2.image = diceArray[arrayNum2];
            incTotalScore +=  (arrayNum1 + 1) + (arrayNum2 + 1);
            totalScoreLabel.text = String(incTotalScore);
            turnRequired+=1;
            turnScore.text = String(turnRequired);
        }else{
            totalScoreLabel.text = "Winner";
        }
     
    }
    
    
    @IBAction func startNewGame(_ sender: UIButton) {
        incTotalScore = 0;
        totalScoreLabel.text = "00";
        turnRequired = 0;
        turnScore.text = "00";
    }
}

