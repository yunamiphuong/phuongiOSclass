//
//  ViewController.swift
//  on class buoi 5 Jan09
//
//  Created by Apple on 1/9/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    
    @IBOutlet weak var myView2: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myView.backgroundColor = UIColor.yellow
        myView.frame = CGRect(x: 100, y: 165, width: 300, height: 67)
        print(myView.frame)
        
        myView.bounds = CGRect(x: 5, y: 8, width: 160, height: 160)
        print(myView.frame)
        print(myView.bounds)
        // đưa tâm của myView về trung tâm màn hình superview (view)
        // view là superview của class ViewController
//        myView.center = view.center
        
        myView2.backgroundColor = UIColor.purple
        
        myView2.layer.shadowColor = UIColor.red.cgColor
        // độ trong suốt của shadow
        myView2.layer.shadowOpacity = 1
        //CGSize.width height thì đổ theo 1 chiều, .zero thì đổ đều các phía
        myView2.layer.shadowOffset = CGSize.zero
        //bo tròn phần đổ bóng
        myView2.layer.shadowRadius = 7
        
        
    }

    func configProperties(){
        // độ mờ
               myView.alpha = 0.8
               
               // bo tròn
               myView.layer.cornerRadius = 20
               
               // bo thành hình tròn (chỉ được khi hình cũ là hình vuông)
               myView.layer.cornerRadius = 80
               
               // hoặc
               myView.layer.cornerRadius = myView.frame.size.width / 2
    }

}

