//
//  ViewController.swift
//  practice b6
//
//  Created by Apple on 1/28/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    
    @IBOutlet weak var button1: UIButton!
    
    @IBOutlet weak var imageBulb: UIImageView!
    
    var isTurnOn: Bool = false
    

    @IBOutlet weak var textFieldSoDien: UITextField!
    
    @IBOutlet weak var textFieldGiaDien: UITextField!
    
    @IBOutlet weak var buttonTinhTien: UIButton!
    
    @IBOutlet weak var textSoTienTotal: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view1.center = CGPoint(x: view.frame.midX, y: view.frame.midY)
        view2.frame.self = view1.bounds.insetBy(dx: 10, dy: 20)
        imageBulb.image = UIImage(named: "toi")
        button1.setTitle("Bật Đèn", for: .normal)
        isTurnOn = false
        
        textFieldSoDien.keyboardType = UIKeyboardType.decimalPad
        textFieldGiaDien.keyboardType = .decimalPad
        
        let gestureToHideKeyboard = UITapGestureRecognizer(target: self, action: #selector(tapToHideKeyBoard) )
        view.addGestureRecognizer(gestureToHideKeyboard)
    }

    @objc func tapToHideKeyBoard() {
        self.view.endEditing(true)
    }
    
    
    @IBAction func onPressButton1(_ sender: Any) {
        if isTurnOn {
            imageBulb.image = UIImage(named: "toi")
            button1.setTitle("Bật Đèn", for: .normal)
            isTurnOn = false
        } else {
            imageBulb.image = UIImage(named: "sang")
            button1.setTitle("Tắt Đèn", for: .normal)
            isTurnOn = true
        }
    }
    
    @IBAction func onPressButtonTinhTien(_ sender: Any) {
        let soDien = textFieldSoDien.text ?? ""
        let giaDien = textFieldGiaDien.text ?? ""
        
        let tienDien = (Float(soDien) ?? 0.0) * (Float(giaDien) ?? 0.0)
        textSoTienTotal.text = "Total: \(tienDien) VND"
        
    }
    
    
}

