//
//  ShadowView.swift
//  on_class_b14
//
//  Created by Apple on 2/15/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class ShadowView: UIView {
    
    // right click vào folder project, new cocoa file, set là UIView
    // init(frame) rồi fix theo yêu cầu
    
    override init(frame: CGRect) {
        super.init(frame: CGRect.zero)
        self.backgroundColor = .red
        
        
    }
    
    // khi custom UIView, muốn set các thuộc tính liên quan tới layer thì đặt trong hàm draw()
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        

        self.layer.shadowPath = UIBezierPath(rect: CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height)).cgPath
        self.layer.shadowOpacity = 0.5
        self.layer.shadowOffset = CGSize(width: 10, height: 10)
        
        // corner radius đang ko hoạt động??
                self.layer.cornerRadius = 10
        
        // masktoBound = true: không hiển thị phần layer vượt giới hạn kích thước UIView()
        self.layer.masksToBounds = false
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
