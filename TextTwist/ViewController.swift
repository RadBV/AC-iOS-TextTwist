//
//  ViewController.swift
//  TextTwist
//
//  Created by C4Q  on 10/23/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    var randomGame = WordData.allInfo.randomElement()!
    @IBOutlet weak var availableLetters: UILabel!
    
    @IBAction func typeStuff(_ sender: UITextField) {
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        availableLetters.text = randomGame.letters
        print(randomGame)
    }

}

