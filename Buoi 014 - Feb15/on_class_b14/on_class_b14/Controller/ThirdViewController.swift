//
//  ThirdViewController.swift
//  on_class_b14
//
//  Created by Apple on 2/15/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    var view1 : CircleView!
    var view2 : CircleView!
    var view3 : CircleView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view1 = CircleView(center: CGPoint(x: 200, y: 200), radius: 50, color: .blue)
        
        view2 = CircleView(center: CGPoint(x: 200, y: 300), radius: 80, color: .green)
        
        view3 = CircleView(center: CGPoint(x: 200, y: 400), radius: 30, color: .red)
        
        view.addSubview(view1)
        view.addSubview(view2)
        view.addSubview(view3)
        
        view1.center.y = 100
        view2.center.y = 200
        view3.center.y = 300
        
        view1.center.x = view.center.x
        view2.center.x = view.center.x
        view3.center.x = view.center.x
        
    }
    
    
    
    
}
