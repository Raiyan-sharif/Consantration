//
//  ViewController.swift
//  Concentration
//
//  Created by raiyan sharif on 13/8/19.
//  Copyright © 2019 raiyan sharif. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var flipCount = 0
    
    @IBOutlet weak var flipCountLabel: UILabel!
    @IBAction func touchSecondCard(_ sender: UIButton) {
        flipCount += 1
        flipCountLabel.text = String(flipCount)
        flipCard(withEmoji: "🎃", on: sender)
    }
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        flipCountLabel.text = String(flipCount)
        flipCard(withEmoji: "👻", on: sender)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func flipCard(withEmoji emoji: String, on button: UIButton){
        if button.currentTitle == emoji{
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5974530578, blue: 0, alpha: 1)
        }
        else{
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }


}

