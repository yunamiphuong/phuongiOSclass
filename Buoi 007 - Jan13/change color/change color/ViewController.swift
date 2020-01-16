//
//  ViewController.swift
//  change color
//
//  Created by Apple on 1/13/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var reloadButton: UIButton!
    let colors: [UIColor] = [.blue, .purple, .cyan, .green, .yellow, .red]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set image cho UIButton
        reloadButton.setImage(UIImage(named: "reloadButton"), for: .normal)
        //set sẵn màu random ban đầu
        randomColor()
        
    }
    
    @IBAction func onPressReload(_ sender: Any) {
        randomColor()
    }
    
    func randomColor() {
        //cách 1: chỉ random phần tử từ mảng
        //random từ một mảng, gọi hàm randomElement()
        //        let random = colors.randomElement()
        //        view.backgroundColor = random
        
        // cách 2 (dùng filter) tạo một mảng màu mới trừ đi màu hiện tại
        let newColors = colors.filter {
            $0 != view.backgroundColor
        }
        view.backgroundColor = newColors.randomElement()
        
    }
    
}

