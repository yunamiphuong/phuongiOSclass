//
//  ViewController.swift
//  dropping ball 2
//
//  Created by Apple on 2/9/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageBall: UIImageView!
    var timer : Timer!
    var y : Float = 150
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageBall.center.y = CGFloat(y)

        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(dropBallLoop), userInfo: nil, repeats: true)
        
    }
    @objc func dropBallLoop() {

        if y < Float(view.frame.height - imageBall.frame.height/2) {
            y += (Float(view.frame.height - 150 - imageBall.frame.height/2))/10
            imageBall.center.y = CGFloat(y)
print (y)
    }
    }
}

