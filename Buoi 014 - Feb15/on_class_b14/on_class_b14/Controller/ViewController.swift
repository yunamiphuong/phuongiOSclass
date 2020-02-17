//
//  ViewController.swift
//  on_class_b14
//
//  Created by Apple on 2/15/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // khởi tạo 3 view giống nhau
    // yêu cầu đổ màu, đổ bóng, bo viền
    // cách làm thông thường phải khởi tạo các thuộc tính
    // => nhu cầu cần custom UIView để tái sử dụng
    
    let view1 : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.red
        view.layer.cornerRadius = 10
        view.layer.shadowPath = UIBezierPath(rect: CGRect(x: 0, y: 0, width: 300, height: 100)).cgPath
        // shadowOffset nếu .zero thì đổ bóng cả 4 phía, còn nếu set width height thì đổ 1 hướng
        view.layer.shadowOffset = CGSize(width: 10, height: 10)
        view.layer.shadowRadius = 10
        view.layer.shadowOpacity = 0.5
        return view
    }()
    
    let view2 : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.blue
        view.layer.cornerRadius = 10
        view.layer.shadowPath = UIBezierPath(rect: CGRect(x: 0, y: 0, width: 300, height: 100)).cgPath
        // shadowOffset nếu .zero thì đổ bóng cả 4 phía, còn nếu set width height thì đổ 1 hướng
        view.layer.shadowOffset = CGSize(width: 10, height: 10)
        view.layer.shadowRadius = 10
        view.layer.shadowOpacity = 0.5
        return view
    }()
    
    let view3 : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.green
        view.layer.cornerRadius = 10
        view.layer.shadowPath = UIBezierPath(rect: CGRect(x: 0, y: 0, width: 300, height: 100)).cgPath
        // shadowOffset nếu .zero thì đổ bóng cả 4 phía, còn nếu set width height thì đổ 1 hướng
        view.layer.shadowOffset = CGSize(width: 10, height: 10)
        view.layer.shadowRadius = 10
        view.layer.shadowOpacity = 0.5
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(view1)
        view.addSubview(view2)
        view.addSubview(view3)
        
        view1.frame = CGRect(x: 0, y: 100, width: 300, height: 100)
        view2.frame = CGRect(x: 0, y: 300, width: 300, height: 100)
        view3.frame = CGRect(x: 0, y: 500, width: 300, height: 100)
        
        view1.center.x = view.center.x
                view2.center.x = view.center.x
                view3.center.x = view.center.x
        
    }
    
    
}

