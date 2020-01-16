//
//  ViewController.swift
//  tinh tien taxi app
//
//  Created by Apple on 1/13/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit
/*Tính tiền cước taxi, tự tạo giao diện
 – Km đầu tiên là 5000đ
 – 30Km tiếp theo là 4000đ
 – Nếu lớn hơn 30Km thì mỗi Km thêm ra sẽ phải trả là 3000đ
 – Hãy nhập số Km sau đó in ra số tiền phải trả.
 */

class ViewController: UIViewController {
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var myTextField: UITextField!
    
    @IBOutlet weak var myButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onPress(_ sender: Any) {
        let soKm = Int(myTextField.text ?? "") ?? 0
        
        var myCost: Float = 0.0
        
        if soKm < 0 {
            totalLabel.text = "Số Km bị âm"
        } else if soKm > 0 && soKm <= 1 {
            myCost = 5000
            totalLabel.text = "Giá tiền là \(myCost)"
        } else if soKm > 1 && soKm <= 30 {
            myCost = Float(5000 + (soKm - 1) * 4000)
            totalLabel.text = "Giá tiền là \(myCost)"
        } else {
            myCost = Float(5000 + 30 * 4000)
            myCost = myCost + Float((soKm - 31) * 3000)
            totalLabel.text = "Giá tiền là \(myCost)"
        }
        
    }
    
}
