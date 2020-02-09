//
//  ViewController.swift
//  dropping ball
//
//  Created by Apple on 2/9/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageBall: UIImageView!
    var time : Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        UIView.animate(withDuration: 4) {
            self.imageBall.center.y = self.view.frame.height - self.imageBall.frame.height/2
        }
        
    }

}

