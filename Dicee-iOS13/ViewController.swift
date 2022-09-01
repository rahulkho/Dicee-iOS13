//
//  ViewController.swift
//  Dicee-iOS13
//
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        diceImageView1.image = UIImage(imageLiteralResourceName: "DiceFour.png")
        diceImageView2.image = UIImage(imageLiteralResourceName: "DiceTwo.png")
    }

    var leftDiceNumber = 1
    var rightDiceNumber = 5
    
    @IBAction func rollButtonPressed(_ sender: Any) {
        var diceArray = [
                UIImage(imageLiteralResourceName:"DiceOne.png"),
                UIImage(imageLiteralResourceName:"DiceTwo.png"),
                UIImage(imageLiteralResourceName:"DiceThree.png"),
                UIImage(imageLiteralResourceName:"DiceFour.png"),
                UIImage(imageLiteralResourceName:"DiceFive.png"),
                UIImage(imageLiteralResourceName:"DiceSix.png"),
            ]
        
//        diceImageView1.image = diceArray[Int.random(in: 0...5)]
//        diceImageView2.image = diceArray[Int.random(in: 0...5)]
        
        diceImageView1.image = diceArray.randomElement()
        diceImageView2.image = diceArray.randomElement()
        
    }
    
}

