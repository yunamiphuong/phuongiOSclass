//
//  DropBallViewController.swift
//  rolling ball 5 ways on class fix
//
//  Created by Apple on 2/13/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class DropBallViewController: UIViewController {
// tạo giao diện từ code, ko dùng giao diện
    
    var ballImageView : UIImageView!
    var timer: Timer!
    var yBanDau: CGFloat = 100
    
    // gia tốc ban đầu
    let a : CGFloat = 1.0
    // vận tốc v ban đầu
    var v: CGFloat = 0.0
    // biến y để lưu giá trị toạ độ y thay đổi
    var y : CGFloat = 0.0
    // chiều cao màn hình
    var heightScreen : CGFloat!
    //đường kính quả bóng
    var radius: CGFloat = 80
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // đặt màu background
        view.backgroundColor = .green

        // khởi tạo quả bóng
        ballImageView = UIImageView(frame: CGRect(x: 0, y: yBanDau, width: radius, height: radius))
            
            ballImageView.image = UIImage(named: "ball")
        ballImageView.contentMode = .scaleAspectFit
        ballImageView.center.x = view.center.x
        
        view.addSubview(ballImageView)
        
        // gán các giá trị cần thiết ban đầu
        y = yBanDau
        heightScreen = view.bounds.height
        
        // khởi tạo timer
        timer = Timer.scheduledTimer(timeInterval: 0.03, target: self, selector: #selector(runLoop), userInfo: nil, repeats: true)
    }
    
    @objc func runLoop() {
        v = v + a
        y = y + v
        ballImageView.center = CGPoint(x: ballImageView.center.x, y: y)
        
        // check điều kiện để quả bóng nảy lên
        if y > heightScreen - radius/2 {
            y = heightScreen - radius/2
            v = -v * 0.8
        }

    }
    


}
