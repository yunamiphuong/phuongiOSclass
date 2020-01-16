//
//  ViewController.swift
//  game guess number
//
//  Created by Apple on 1/13/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit
/*
 1. Viết một minigame random các số từ 1 đến 100, cho người dùng đoán số nhập dữ liệu từ bàn phím.
 - Nếu số nhập vào đúng với số được random thì hiển thị Chúc mừng!
 - Nếu số nhập vào bé hơn số được random thì in ra message là Bé quá!
 - Nếu số nhập vào lớn hơn số được random thì in ra message là Lớn quá!
 
 
 */


class ViewController: UIViewController {
    
    
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var numberTextField: UITextField!
    
    
    var n: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playButton.layer.cornerRadius = 5
    }
    
    @IBAction func onPressPlayButton(_ sender: Any) {
        guard let numberText = numberTextField.text, !numberText.isEmpty, let number = Int(numberText) else {
            print("Nhập lại number")
            return
        }
        
        print(number)
        let random = Int.random(in: 1...100)
        if random == number {
            alert(_message: "Chúc mừng")
        } else {
            alert(_message: "Bạn đoán không đúng")
        }
    }
    
    func alert(_message: String) {
     let alertController = UIAlertController(title: "Game đoán số", message: _message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
}

