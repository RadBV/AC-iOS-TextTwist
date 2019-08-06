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
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var userMessageStuff: UILabel!
    @IBOutlet weak var ThreeLetterWords: UITextView!
    @IBOutlet weak var FourLetterWords: UITextView!
    @IBOutlet weak var FiveLetterWords: UITextView!
    @IBOutlet weak var SixLetterWords: UITextView!
    
    @IBAction func typeStuff(_ sender: UITextField) {
        if !randomGame.words.contains(textField.text!) {
            
        }
    }
    
    @IBAction func rightOrWrongWhenEnterPressed(_ sender: UITextField) {
        
        
        
        if randomGame.words.contains(textField.text!) {
            userMessageStuff.text = "Correct!"
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
        
                userMessageStuff.text = "Wrong!"
            }
        }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //userMessage label should be hidden until user enters
        textField.delegate = self
        availableLetters.text = randomGame.letters
        print(randomGame)
     
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if randomGame.letters.contains(string){
            userMessageStuff.text = "someting?"
        
            return true
        } else {
            userMessageStuff.text = "did it work?"
            return false
        }
        
        
    }
    
    
    
//    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
//        if !randomGame.words.contains(textField.text!) {
//            userMessageStuff.text = "you're a dingus."
//            return false
//        }
//        return true
//    }
//
//    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
//        if !randomGame.words.contains(textField.text!) {
//            userMessageStuff.text = "you're a dingus."
//            return true
//        }
//        return false
//    }
//
//    func textFieldDidBeginEditing(_ textField: UITextField) {
//         if !randomGame.words.contains(textField.text!) {
//            userMessageStuff.text = "you're a dingus."
//
//        }
//
//    }
//
//
//
//
//    func textFieldDidEndEditing(_ textField: UITextField) {
//        if !randomGame.words.contains(textField.text!) {
//            userMessageStuff.text = "you're a dingus."
//
//        }
//
//    }
//

}



