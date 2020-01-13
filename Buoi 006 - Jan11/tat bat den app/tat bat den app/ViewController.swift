//
//  ViewController.swift
//  tat bat den app
//
//  Created by Apple on 1/11/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bulbImageView: UIImageView!
    
    
    @IBOutlet weak var buttonTurnOff: UIButton!
    
    // khai báo biến để kiểm tra trạng thái đèn đang được bật, hay tắt
// true là đang bật, false là đang tắt
    var isTurnOn: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // đổ màu background
        view.backgroundColor = .black
        
        // set kích thước toạ độ cho bóng đèn
        bulbImageView.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height/4*3)
        
        // xác định toạ độ cho nút bấm
        buttonTurnOff.center.x = view.center.x
        
        // Origin là giữa
        // maxY của frame tương đương với chiều cao của đối tượng đó
        buttonTurnOff.frame.origin.y = view.frame.maxY - 200
        
        // view.frame.maxY = view.frame.size.height
        
        // set ảnh mặc định ban đầu
        // thuộc tính iamge của UIImageView có kiểu là UIImage? - trong "" phải điền đúng tên của ảnh trong assets
        bulbImageView.image = UIImage(named: "sang")
        
        //set tên của nút - trong "" điền gì cũng được, nội dung điền vào đây sẽ hiển thị trong app thực tế, còn text bên ngoài main.storyboard ko quan trọng
        //UIControl.State.normal = .normal
        //UIControl.State chỉ trạng thái của button
        // các trạng thái của button thường gặp là normal, highlighted nhấn và giữ, selected được chọn, disable
    
        buttonTurnOff.setTitle("Tắt Đèn!", for: .normal)
        
        // set biến kiểm tra ban đầu là true
        isTurnOn = true
        
    }

    @IBAction func turnOff(_ sender: Any) {
        if isTurnOn { // nếu đang bật
            bulbImageView.image = UIImage(named: "toi")
            buttonTurnOff.setTitle("Bật Đèn..", for: .normal)
            isTurnOn = false
        } else { // nếu đang tắt
            bulbImageView.image = UIImage(named: "sang")
            buttonTurnOff.setTitle("Tắt đèn !!!", for: .normal)
            isTurnOn = true
        }
    }
}

/*
 bài 1 trong vở
 [Bài tập ôn giao diện]
 - Tạo một UIButton và một UILabel
 - Xử lý khi nhấn vào UIButton thì random ra một số tự nhiên và cập nhật vào UI
 Tính tiền cước taxi, tự tạo giao diện
 – Km đầu tiên là 5000đ
     – 30Km tiếp theo là 4000đ
     – Nếu lớn hơn 30Km thì mỗi Km thêm ra sẽ phải trả là 3000đ
     – Hãy nhập số Km sau đó in ra số tiền phải trả.
 */
