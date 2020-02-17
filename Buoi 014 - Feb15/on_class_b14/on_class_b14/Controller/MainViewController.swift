//
//  MainViewController.swift
//  on_class_b14
//
//  Created by Apple on 2/15/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    // step 3: rightclick vào tên project, new cocoa, set UIViewController
    
    let view1 = ShadowView()
    let view2 = ShadowView()
    let view3 = ShadowView()
    
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
