//
//  ViewController.swift
//  on class 2
//
//  Created by Apple on 1/11/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstUIView: UIView!
    
    @IBOutlet weak var secondUIView: UIView!
    
    let widthScreen = UIScreen.main.bounds.width
    let heightScreen = UIScreen.main.bounds.height
    
    override func viewDidLoad() {
        super.viewDidLoad()

        firstUIView.frame.size = CGSize(width: widthScreen/2, height: widthScreen/2)
        firstUIView.center = view.center
        
        // set màu vàng lùi vào bên trong của màu đỏ mỗi chiều 20
        secondUIView.frame = firstUIView.bounds.insetBy(dx: 50, dy: 20)
    }


}

