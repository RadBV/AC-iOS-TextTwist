//
//  Data.swift
//  TextTwist
//
//  Created by C4Q  on 10/23/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import Foundation

struct TestTwistInfo {
    
    let wordCount: Int
    let letters: String
    let words: [String]
    var usedWords: [String] = []
    
    init(wordCount: Int, letters: String, words: [String]) {
        self.wordCount = wordCount
        self.letters = letters
        self.words = words
    }
    
    func verifyGuess(guess: String) -> Bool {
        return words.contains(guess)
    }
    
    mutating func addTheCorrectWordToUsedWords(word: String) {
        usedWords.append(word)
    }
    
    func wasTheWordAlreadyUsed(word: String) -> Bool {
        return usedWords.contains(word)
    }
    
}


    /*
    static let allInfo2: [TestTwistInfo] = [
                    TestTwistInfo(wordCount: 27,
                                  letters:"cdenno",
                                  sixLetterWords: ["conned"],
                                  fiveLetterWords: ["coden","coned", "donne", "nonce"],
                                  fourLetterWords: ["code","coed","cone","conn","deco","done","neon","node","none","once"],
                                  threeLetterWords: ["cod","con","den","doc","doe","don","end","eon","nod","ode","one"]),
                    TestTwistInfo(wordCount: 18,
                                  letters: "ehhssu", sixLetterWords: ["hushes"],
                                  fiveLetterWords: ["shush"],
                                  fourLetterWords: ["hehs","hues","hush","shes","sues","uses"],
                                  threeLetterWords: ["ess","heh","hes","hue","huh","she","shh","sue","use"]),
                    TestTwistInfo(wordCount: 14,
                                  letters: "hisswy",
                                  sixLetterWords: ["swishy"],
                                  fiveLetterWords: ["hissy","swish"],
                                  fourLetterWords: ["hiss","whys","wish","wiss","ywis"],
                                  threeLetterWords: ["his","shy","sis","why","wis"])
    ]
    
    private static let rawJSON: [String : [String : Any]] = [
        "cdenno": [ "wordCount": 27,
                    "sixLetterWords": ["conned"],
                    "fiveLetterWords": ["coden","coned", "donne", "nonce"],
                    "fourLetterWords": ["code","coed","cone","conn","deco","done","neon","node","none","once"],
                    "threeLetterWords": ["cod","con","den","doc","doe","don","end","eon","nod","ode","one"]
        ],
        "ehhssu": ["wordCount": 18,
                   "sixLetterWords": ["hushes"],
                   "fiveLetterWords": ["shush"],
                   "fourLetterWords": ["hehs","hues","hush","shes","sues","uses"],
                   "threeLetterWords": ["ess","heh","hes","hue","huh","she","shh","sue","use"]
        ],
        "hisswy": ["wordCount": 14,
                   "sixLetterWords": ["swishy"],
                   "fiveLetterWords": ["hissy","swish"],
                   "fourLetterWords": ["hiss","whys","wish","wiss","ywis"],
                   "threeLetterWords": ["his","shy","sis","why","wis"]
        ]
    ]
 */






