//
//  ViewController.swift
//  dongHo
//
//  Created by Apple on 2/3/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var clockView: UIImageView!
    @IBOutlet weak var kimGioView: UIView!
    @IBOutlet weak var kimPhutView: UIView!
    @IBOutlet weak var kimGiayView: UIView!
    @IBOutlet weak var centerView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
setupUI()
        
    }

    func setupUI () {
        view.bringSubviewToFront(centerView)
        centerView.frame.size = CGSize(width: 20, height: 20)
        centerView.center = view.center
        centerView.layer.cornerRadius = centerView.bounds.width/2
        centerView.layer.masksToBounds = true
        centerView.backgroundColor = UIColor.black
        
        kimGioView.frame.size = CGSize(width: clockView.bounds.size.width/10 * 2.5, height: 6)
        kimGioView.center = clockView.center
        
        kimPhutView.frame.size = CGSize(width: clockView.bounds.size.width/10 * 3, height: 4)
              kimPhutView.center = clockView.center
        
        kimGiayView.frame.size = CGSize(width: clockView.bounds.size.width/10 * 3.5, height: 2)
              kimGiayView.center = clockView.center
    }
}

