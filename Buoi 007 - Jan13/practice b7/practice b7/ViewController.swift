//
//  ViewController.swift
//  practice b7
//
//  Created by Apple on 1/29/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // Connections
    @IBOutlet weak var buttonChangeColor: UIButton!
    @IBOutlet weak var textfieldLuckyNumber: UITextField!
    
    // Var Let
    let colorSet: [UIColor] = [ .gray, .blue, .yellow, .red]
    var inputNumber: Int = 0
    
    // viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonChangeColor.setImage(UIImage(named: "pikachu"), for: .normal)
//        randomBgrColor()
    
        
        textfieldLuckyNumber.keyboardType = .decimalPad
        textfieldLuckyNumber.placeholder = "Your Lucky Number"
        inputNumber = Int((textfieldLuckyNumber.text) ?? "0") ?? 0
        
        let tapOnScreen = UITapGestureRecognizer(target: self, action: #selector(tapToHideKeyboard))
        view.addGestureRecognizer(tapOnScreen)
    }
    
    // Action
    
    @objc func tapToHideKeyboard() {
        self.view.endEditing(true)
    }
    
//    @IBAction func onPressButtonChangeColor(_ sender: Any) {
//       randomBgrColor()
//        randomLuckyNumber()
//
//    }
//
//    func randomBgrColor() {
//        let newColorSet = colorSet.filter{
//            $0 != view.backgroundColor
//        }
//        view.backgroundColor = newColorSet.randomElement()
//
//    }

    
    
//    func randomLuckyNumber() {
//        var luckyNumber: Int = Int.random(in: 10...100)
//        if inputNumber == luckyNumber {
//            alert(_message: "Bạn đã đoán đúng!")
//        } else {
//            alert(_message: "Bạn đoán sai rồi, đoán lại nào!")
//        }
//    }
//
//    func alert(_message: String) {
//        let alertController = UIAlertController(title: "Game đoán số may mắn!", message: _message, preferredStyle: .alert)
//        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
//        alertController.addAction(okAction)
//        self.present(alertController, animated: true, completion: nil)
//
//    }

}

