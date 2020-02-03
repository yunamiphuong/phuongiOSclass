//
//  ViewController.swift
//  so ngay cua thang
//
//  Created by Apple on 1/18/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var namTextField: UITextField!
    
    @IBOutlet weak var ngayTrongThang: UILabel!
    
    @IBOutlet weak var MyButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onPressMyButton(_ sender: Any) {
       guard let year = namTextField.text, !year.isEmpty, let numberyear = Int(year) else {
        print("Nhập lại year")
        return
            
        if year%4 == 0 && year%100 != 0 || year%400 == 0{
            ngayTrongThang.text = "Tháng 1: 31 ngày, Tháng 2: 29 ngày, Tháng 3: 31 ngày, Tháng 4: 30 ngày, Tháng 5: 31 ngày, Tháng 6:30 ngày, Tháng 7: 31 ngày, Tháng 8: 31 ngày, Tháng 9: 30 ngày, Tháng 10: 31 ngày, Tháng 11: 30 ngày, Tháng 12: 31 ngày"
        }else{
            ngayTrongThang.text = "Tháng 1: 31 ngày, Tháng 2: 29 ngày, Tháng 3: 31 ngày, Tháng 4: 30 ngày, Tháng 5: 31 ngày, Tháng 6:30 ngày, Tháng 7: 31 ngày, Tháng 8: 31 ngày, Tháng 9: 30 ngày, Tháng 10: 31 ngày, Tháng 11: 30 ngày, Tháng 12: 31 ngày"
        }
        
    }
    
}

