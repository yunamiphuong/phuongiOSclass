//
//  ViewController.swift
//  dropping ball on class
//
//  Created by Apple on 2/11/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // khai báo đối tượng imageview
    var ballImageView: UIImageView!
    
    //khai báo timer
    var timer: Timer!
    var x : CGFloat = 0
    var y : CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // khởi tạo đối tượng imageview
        ballImageView = UIImageView(frame: CGRect(x: x, y: y, width: 100, height: 100))
        
        // đặt ảnh cho imageview
        ballImageView.image = UIImage(named: "ball")
        ballImageView.contentMode = .scaleAspectFit
        
        // thêm imageview vào superview
        view.addSubview(ballImageView)
        
        // khởi taọ bộ định giờ timer
        timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(rollingBall), userInfo: nil, repeats: true)
    }

    @objc func rollingBall() {
            y += 1
            print(x, y)
    
        if y > 400 {
            timer.invalidate()
        }
        
//        ballImageView.center.x = view.frame.maxX - ballImageView.frame.maxX/2
//        ballImageView.center.y = view.frame.maxY - ballImageView.frame.maxY/2
              
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(bottomLeft), userInfo: nil, repeats: true)
        
//        case (x <= view.frame.maxX, y = view.bounds.height):
//            repeat {
//                x += 1
//                y = view.frame.maxY
//            } while x <= view.bounds.width
//        case (view.frame.maxX, view.frame.maxY):
//            repeat {
//                x = view.frame.maxX
//                y -= 1
//            } while y >= 0
//        case (view.frame.maxX, 0):
//            repeat {
//                x -= 1
//                y = 0
//            } while x >= 0
//        default:
//            x = 0
//            y = 0
//        }
//        print (x, y)
    }

    @objc func bottomLeft() {
            x += 1
            print(x, y)
        
        if ballImageView.center.x == view.frame.maxX - ballImageView.frame.maxX/2 {
            timer.invalidate()
        }
        
        ballImageView.center.x = x + ballImageView.frame.maxX/2
        ballImageView.center.y = y + ballImageView.frame.maxY/2
    
//        timer = Timer.scheduledTimer(timeInterval: 0.1, target: <#T##Any#>, selector: <#T##Selector#>, userInfo: <#T##Any?#>, repeats: <#T##Bool#>)
    }
    
    
}

