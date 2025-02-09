//
//  ViewController.swift
//  TextTwist
//
//  Created by C4Q  on 10/23/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    var currentGame: TestTwistInfo? {
        didSet{
            userMessageLabel.text = self.currentGame?.letters
        }
    }
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
        if let inputText = textField.text{
            let result = currentGame?.verifyGuess(guess: inputText) ?? false
            if result {
                
                    userMessageLabel.isHidden = false
                    userMessageLabel.text = "Correct!"
                if !(currentGame?.wasTheWordAlreadyUsed(word: inputText) ?? true) {
                    currentGame?.addTheCorrectWordToUsedWords(word: inputText)
                    addAnswerToTextView(answer: inputText)
                    self.textField.text = ""
                } else {
                    userMessageLabel.text = "you already used that letter"
                }
                
            } else {
                
                userMessageLabel.isHidden = false
                userMessageLabel.text = "Wrong!"
                self.textField.text = ""
                
            }
        }
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userMessageLabel.isHidden = true
        textField.delegate = self
        currentGame = chooseNewGame()
        availableLetters.text = currentGame!.letters
        addsEmptyLineInTextViewsJustToMakeItLookPretty()
        print(randomGame)
     
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if (currentGame?.letters.contains(string) ?? false) || string == ""{
            return true
        } else {
            let stringArray: [String] = [string]
            let lastCharacter = stringArray.last ?? ""
            userMessageLabel.isHidden = false
            userMessageLabel.text = "You cannot use \(string). \nTry using only the letters available."
            return false
        }
    }
    
    private func chooseNewGame() -> TestTwistInfo {
        return WordData.getRandomGame() ?? TestTwistInfo(wordCount: 0, letters: "", words: [""])
    }
    
    private func addAnswerToTextView(answer: String) {
        switch answer.count {
        case 3:
           ThreeLetterWords.text.append(contentsOf: "\(textField.text!)\n")
        case 4:
            FourLetterWords.text.append(contentsOf: "\(textField.text!)\n")
        case 5:
            FiveLetterWords.text.append(contentsOf: "\(textField.text!)\n")
        case 6:
            SixLetterWords.text.append(contentsOf: "\(textField.text!)\n")
        default:
            print("whomp whomp")
        }
    }
    
    private func addsEmptyLineInTextViewsJustToMakeItLookPretty() {
        ThreeLetterWords.text.append("\n")
        FourLetterWords.text.append("\n")
        FiveLetterWords.text.append("\n")
        SixLetterWords.text.append("\n")
    }
    
    

}



