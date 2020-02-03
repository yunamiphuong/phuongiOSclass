//
//  ViewController.swift
//  practice 2
//
//  Created by Apple on 1/29/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textfieldLuckyNumber: UITextField!
    
//    @IBOutlet weak var buttonPikachu: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textfieldLuckyNumber.keyboardType = .decimalPad
        
        let clickOnScreen = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(clickOnScreen)
        
    }

    @objc func hideKeyboard() {
        self.view.endEditing(true)
    }

}

