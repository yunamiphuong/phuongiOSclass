//
//  ViewController.swift
//  random app
//
//  Created by Apple on 1/13/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit
/*
 [Bài tập ôn giao diện]
 - Tạo một UIButton và một UILabel
 - Xử lý khi nhấn vào UIButton thì random ra một số tự nhiên và cập nhật vào UI
 */
class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var myButton: UIButton!
    
    var a : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onPressMyButton(_ sender: Any) {
        self.a = Int.random(in: 0...100)
        self.myLabel.text = "số random là \(String(self.a))"
    }
    
    
}

