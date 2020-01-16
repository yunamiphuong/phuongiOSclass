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
 *** thêm: hai số random nhưng không trùng với lần trước
 */
class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var myButton: UIButton!
    
    var a : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onPressMyButton(_ sender: Any) {
//        self.a = Int.random(in: 0...100)
//        self.myLabel.text = "số random là \(String(self.a))"
        //chữa:
//        a = Int.random(in: 0...100)
//        myLabel.text = "số random là \(String(a))"
//
        // thêm để ko trùng nhau:
        
        myLabel.text = String(randomGame())
        
    }
    
    func randomGame() -> Int{
        //Int.random(in:1...100) là sẽ random ra số bất kỳ trong khoảng 1...100
        let m = Int.random(in: 1...3)
        // nếu như số random m bằng số cũ n thì gọi lại hàm random để random ra một số khác (gọi hàm trong chính nó)
        if a == m {
            randomGame()
        }
        a = m
        return m
    }
    
    
}

