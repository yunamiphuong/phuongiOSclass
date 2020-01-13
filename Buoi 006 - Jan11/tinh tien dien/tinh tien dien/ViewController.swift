//
//  ViewController.swift
//  tinh tien dien
//
//  Created by Apple on 1/11/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelTinhTienDien: UILabel!
    @IBOutlet weak var labelSoDien: UILabel!
    @IBOutlet weak var labelGiaDien: UILabel!
    @IBOutlet weak var labelTong: UILabel!
    @IBOutlet weak var textFieldNhapSoDien: UITextField!
    @IBOutlet weak var textFieldNhapGiaDien: UITextField!
    
    @IBOutlet weak var buttonTinhTong: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set placeholder cho textFieldNhapGiaDien
        textFieldNhapGiaDien.placeholder = "Nhập giá điện"
        
        // set keyboardtype cho textFieldNhapGiaDien
        textFieldNhapGiaDien.keyboardType = .decimalPad
        
        // set borderStyle cho textField
        // các loại style: benzel, line, none, roundedRect (đường mảnh và bo góc tròn)
        textFieldNhapGiaDien.borderStyle = .roundedRect
        
    }
    
    @IBAction func onPress(_ sender: Any) {
        // lấy dữ liệu người dùng nhập vào
        // cách 1:
//        let numberText  = textFieldNhapSoDien.text ?? ""
//        print(numberText)
//
//        let priceText = textFieldNhapGiaDien.text ?? ""
//        print(priceText)
//
//        let totalTienDien = (Float(numberText) ?? 0.0) * (Float(priceText) ?? 0.0)
//        print(totalTienDien)
//
//        labelTong.text = """
//        Tổng tiền điện:
//        \(totalTienDien) VND
//        """
        
        
        // cách 2
        guard let numberText = textFieldNhapSoDien.text, let number = Float(numberText) else {return}
        guard let priceText = textFieldNhapGiaDien.text, let price = Float(priceText) else {return}

        labelTong.text = "Tổng tiền điện: \(number * price) VND"
    }
    
}

