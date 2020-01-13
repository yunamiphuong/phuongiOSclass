//
//  ViewController.swift
//  tat bat den c2
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
    }
    @IBAction func turnOff(_ sender: Any) {
          isTurnOn.toggle()
          configBulb(isTurnOn)
      }
      func configBulb(_ isBat: Bool){
          if isBat { // nếu đèn đang bật
              // set ảnh mặc định ban đầu
              // thuộc tính image của UIImageView có kiểu là UIImage?
              bulbImageView.image = UIImage(named: "toi")
              
              // set tên của nút
              // UIControl.State.normal có thể viết tắt là .normal
              // UIControl.State chỉ trạng thái của button
              // Các trạng thái của button thường gặp là normal (bình thường), highlighted, selected, disable
              buttonTurnOff.setTitle("Bật đèn", for: .normal)
              
          }else{ // nếu đèn đang tắt
              bulbImageView.image = UIImage(named: "sang")
              buttonTurnOff.setTitle("Tắt đèn", for: .normal)
          }
  
    }
    

