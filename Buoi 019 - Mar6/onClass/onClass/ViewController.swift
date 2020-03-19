//
//  ViewController.swift
//  onClass
//
//  Created by Apple on 3/6/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var orangeView: UIView!
    
    var timer : Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        orangeView.backgroundColor = .orange
        orangeView.frame.size = CGSize(width: 100, height: 100)
        orangeView.transform = CGAffineTransform(rotationAngle: CGFloat.pi/4)
        orangeView.center = view.center
        
        timer = Timer.scheduledTimer(timeInterval: 0.1,
                                     target: self,
                                     selector: #selector(runLoop),
                                     userInfo: nil,
                                     repeats: true)
    }
    
    @objc func runLoop() {
//        let angleLoop = CGAffineTransform(rotationAngle: CGFloat.pi/8)
//
//        orangeView.transform = orangeView.transform.concatenating(angleLoop)
        
        orangeView.transform = orangeView.transform.concatenating(CGAffineTransform(rotationAngle: CGFloat.pi/8))
    }

}

