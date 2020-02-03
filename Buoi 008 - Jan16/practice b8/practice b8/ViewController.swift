//
//  ViewController.swift
//  practice b8
//
//  Created by Apple on 1/17/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var ingterger : Int = 10
    var decimal : Double = 3.22
   
    func play() {
        ingterger = Int(decimal)
    print(ingterger)
    }
}

