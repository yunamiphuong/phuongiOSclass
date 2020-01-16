//
//  ViewController.swift
//  count app
//
//  Created by Apple on 1/13/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // khai báo
    @IBOutlet weak var currentNumberLabel: UILabel!
    @IBOutlet weak var countButton: UIButton!
    
    @IBOutlet weak var resetButton: UIButton!
  
    var a : Int = 0
   
    
    // viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentNumberLabel.text = "Mời đếm số"
        currentNumberLabel.accessibilityActivationPoint = CGPoint(x: view.frame.size.width, y: view.frame.size.height/4)

        countButton.center.y = view.frame.size.height/3
        resetButton.center.y = view.frame.size.height/3
        
        countButton.center.x = view.frame.size.width/2 - 100
        resetButton.center.x =
            view.frame.size.width/2 + 100
    }
   
   
    
    // action
    @IBAction func onPressCount(_ sender: Any) {
//        self.a += 1
//        self.currentNumberLabel.text = "Số hiện tại là \(String(self.a))"
        a = a + 1
        currentNumberLabel.text = "Số hiện tại là \(a)"
    }
    
    
    
    @IBAction func onPressReset(_ sender: Any) {
        a = 0
        currentNumberLabel.text = "Số hiện tại là: 0"
    }
    
}

