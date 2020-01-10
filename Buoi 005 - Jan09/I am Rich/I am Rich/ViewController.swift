//
//  ViewController.swift
//  I am Rich
//
//  Created by Apple on 1/9/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rubyImageView: UIImageView!
    
    @IBOutlet weak var iAmRichLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
// set cho rubyImageView nằm giữa màn hình và kích thước bằng với superview
        
        rubyImageView.center = view.center
        rubyImageView.frame.size = CGSize(width: view.frame.size.width, height: view.frame.size.height)

        iAmRichLabel.center = CGPoint(x: rubyImageView.center.x, y: rubyImageView.center.y+500)
        
        rubyImageView.alpha = 0
        
        // hoặc
//        iAmRichLabel.center.x = rubyImageView.center.x
//        iAmRichLabel.center.y = rubyImageView.center.y + 200
//
        UIView.animate(withDuration: 2) {
            self.rubyImageView.alpha = 1
            
            self.iAmRichLabel.center.y = self.rubyImageView.center.y + 200
        }
        
    }


}

