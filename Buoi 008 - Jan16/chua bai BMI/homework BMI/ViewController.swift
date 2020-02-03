//
//  ViewController.swift
//  homework BMI
//
//  Created by Apple on 1/16/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

// chữa bài
enum State {
    case none
    case reset
}

class ViewController: UIViewController {
    @IBOutlet weak var bigLabel: UILabel!
    
    @IBOutlet weak var chieuCaoLabel: UILabel!
    @IBOutlet weak var chieuCaoTextField: UITextField!
    @IBOutlet weak var canNangLabel: UILabel!
    @IBOutlet weak var nhapCanNangTextField: UITextField!
    
    @IBOutlet weak var tinhBmiButton: UIButton!
    
    @IBOutlet weak var ketQua: UILabel!
    
    var state: State = .none
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // chữa bài
        // set label kết quả
        ketQua.textColor = UIColor.red
        ketQua.font = UIFont.italicSystemFont(ofSize: 22)
        ketQua.isHidden = true
        
        // mặc định trạng thái state là .none
        state = .none
        
        // tap superview
        let gesture = UITapGestureRecognizer(target: self, action: #selector(tabWhenHideKeyboard))
        view.addGestureRecognizer(gesture)
    }
    
    // @objc là dấu hiện sự kế thừa từ objective-c
    @objc func tabWhenHideKeyboard() {
        // ẩn tụt bàn phím
        self.view.endEditing(true)
    }
    
    @IBAction func nhapChieuCao(_ sender: Any) {
    }
    
    @IBAction func nhapCanNang(_ sender: Any) {
    }
    
    @IBAction func onPressTinhBmiButton(_ sender: Any) {
        
    }
    
    func tinhBMI (chieuCao height: Float, canNang weight: Float) {
        let chieuCao = Float(chieuCaoTextField.text ?? " ") ?? 0
        let canNang = Float(nhapCanNangTextField.text ?? " ") ?? 0
        let BMI = canNang/((chieuCao * chieuCao)/10000)
        if BMI < 18.5 {
            ketQua.text = "Bạn bị gầy, BMI của bạn là \(BMI)"
        } else if BMI < 24.9 {
            ketQua.text = "Bạn bình thường, BMI của bạn là \(BMI)"
        } else if BMI < 29.9 {
            ketQua.text = "Bạn hơi béo, BMI của bạn là \(BMI)"
        } else if BMI < 34.9 {
            ketQua.text = "Bạn béo phì cấp độ 1, BMI của bạn là \(BMI)"
        } else if BMI < 39.9 {
            ketQua.text = "Bạn béo phì cấp độ 2, BMI của bạn là \(BMI)"
        } else {
            ketQua.text = "Bạn béo phì cấp độ 3 - nguy hiểm, BMI của bạn là \(BMI)"
        }
    }
}

