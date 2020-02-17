//
//  BrickViewController.swift
//  on_class_b14
//
//  Created by Apple on 2/15/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class BrickViewController: UIViewController {
    
    var brickView: BrickView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        brickView = BrickView(center: view.center, radius: 50, color: .brown)
        //        view.addSubview(brickView)
        
        draw0()
        
    }
    
    func draw0(){
        for i in 0...1{
            for j in 0...1{
                drawBrick(row: i, col: j, radius: 50, color: .red)
            }
        }
    }
    
    func drawBrick(row: Int, col: Int, radius: CGFloat, color: UIColor){
        let d = radius * 2
        let brick = BrickView(startPoint: CGPoint(x: d*CGFloat(col), y: d*CGFloat(row)), radius: radius, color: color)
        view.addSubview(brick)
    }
    
}
