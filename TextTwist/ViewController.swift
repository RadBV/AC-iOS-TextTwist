//
//  ViewController.swift
//  TextTwist
//
//  Created by C4Q  on 10/23/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    var currentGame: TestTwistInfo?
    var randomGame = WordData.allInfo.randomElement()!
    @IBOutlet weak var availableLetters: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var userMessageLabel: UILabel!
    @IBOutlet weak var ThreeLetterWords: UITextView!
    @IBOutlet weak var FourLetterWords: UITextView!
    @IBOutlet weak var FiveLetterWords: UITextView!
    @IBOutlet weak var SixLetterWords: UITextView!
    
    @IBAction func typeStuff(_ sender: UITextField) {
        if !randomGame.words.contains(textField.text!) {
            
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if currentGame!.words.contains(textField.text!) {
            userMessageLabel.text = "Correct!"
            if textField.text?.count == 3 {
                ThreeLetterWords.text.append(contentsOf: "\(textField.text!)\n")
            } else if textField.text?.count == 4 {
                FourLetterWords.text.append(contentsOf: textField.text!)
            } else if textField.text?.count == 5 {
                FiveLetterWords.text.append(contentsOf: textField.text!)
            } else if textField.text?.count == 6 {
                SixLetterWords.text.append(contentsOf: textField.text!)
            }
        } else {
            
            userMessageLabel.text = "Wrong!"
        }
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //userMessage label should be hidden until user enters
        textField.delegate = self
        currentGame = chooseNewGame()
        availableLetters.text = currentGame!.letters
        print(randomGame)
     
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if currentGame!.letters.contains(string){
            userMessageLabel.text = "someting?"
        
            return true
        } else {
            userMessageLabel.text = "did it work?"
            return false
        }
        
    }
    
    private func chooseNewGame() -> TestTwistInfo {
        return WordData.getRandomGame() ?? TestTwistInfo(wordCount: 0, letters: "", words: [""])
    }
    

}



