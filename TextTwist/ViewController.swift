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

    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(randomGame)
    }

}

