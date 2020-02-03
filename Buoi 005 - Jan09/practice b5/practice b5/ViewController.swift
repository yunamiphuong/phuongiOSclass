//
//  ViewController.swift
//  practice b5
//
//  Created by Apple on 1/25/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var view1: UIView!
    
    @IBOutlet weak var labelIAmRich: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view1.backgroundColor = UIColor.gray
        view1.frame = CGRect(x: view.bounds.maxX/3*2, y: view.bounds.maxY/3, width: 100, height: 200)
        print(view1.frame)
        view1.alpha = 0
        
        UIView.animate(withDuration: 2) {
            self.view1.alpha = 1
            self.labelIAmRich.center.y = self.view1.center.y/2 + 200
        }
        
//        UIView.animate(withDuration: 2) {
//             self.view1.alpha = 1
//
//             self.labelIAmRich.center.y = self.view1.center.y + 200
//         }
    }
    
    
}

