//
//  ViewController.swift
//  slider
//
//  Created by Apple on 1/16/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onChangeWidth(_ sender: UISlider) {
        print(sender.value)
        myView.transform = CGAffineTransform(scaleX: CGFloat(sender.value*2), y: CGFloat(sender.value*2))
    }
    
    @IBAction func onChangeRotate(_ sender: UISlider) {
        myView.transform = CGAffineTransform(rotationAngle: CGFloat(sender.value) * .pi*2)
    }
    
    
    @IBAction func onChangeRadius(_ sender: UISlider) {
        myView.layer.cornerRadius = myView.bounds.width/2 * CGFloat(sender.value)
    }
    
}
