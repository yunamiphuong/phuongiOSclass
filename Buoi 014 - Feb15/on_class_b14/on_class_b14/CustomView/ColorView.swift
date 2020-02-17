//
//  ColorView.swift
//  on_class_b14
//
//  Created by Apple on 2/15/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class ColorView: UIView {

// sử dụng keyword convenience trước init để bên trong hamf init này có thể gọi đến một hàm init khác
    convenience init(color: UIColor) {
        self.init(frame: .zero)
        self.backgroundColor = color
    }

}
