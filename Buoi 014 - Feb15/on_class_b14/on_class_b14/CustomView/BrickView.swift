//
//  BrickView.swift
//  on_class_b14
//
//  Created by Apple on 2/15/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class BrickView: UIView {
    
    var radius: CGFloat = 0.0 // bán kính
    var fillColor : UIColor! // màu

    convenience init(startPoint: CGPoint, radius: CGFloat, color: UIColor) {
        self.init(frame: CGRect(x: center.x - radius,
                                y: center.y - radius,
                                width: radius*2,
                                height: radius*2))
        self.radius = radius //self là bản thân class BrickView
        self.fillColor = color
        
    }

    override func draw(_ rect: CGRect) {
        super.draw(rect)
        let squareLayer = CAShapeLayer()
        squareLayer.path = UIBezierPath(roundedRect: self.bounds, cornerRadius: 0).cgPath
        squareLayer.fillColor = fillColor.cgColor
        self.layer.addSublayer(squareLayer)

        let L: CGFloat = radius*2
        let x: CGFloat = L/10
        
        // shape 1 - top
        let topLayer = CAShapeLayer()
        let path1 = UIBezierPath()
        path1.move(to: CGPoint(x: 0, y: 0))
        path1.addLine(to: CGPoint(x: L, y: 0))
        path1.addLine(to: CGPoint(x: L-x, y: x))
        path1.addLine(to: CGPoint(x: x, y: x))
        
        topLayer.path = path1.cgPath
        
        topLayer.fillColor = UIColor.white.cgColor
        topLayer.opacity = 0.3
        squareLayer.insertSublayer(topLayer, at: 0)
        
        // số sublayer của 1 layer:
        print(self.layer.sublayers?.count)
        
        let rightLayer = CAShapeLayer()
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: L, y: 0))
        path2.addLine(to: CGPoint(x: L-x, y: x))
        path2.addLine(to: CGPoint(x: L-x, y: L-x))
        path2.addLine(to: CGPoint(x: L, y: L))
        
        rightLayer.path = path2.cgPath
        rightLayer.fillColor = UIColor.black.cgColor
        rightLayer.opacity = 0.3
        squareLayer.insertSublayer(rightLayer, at: 0)
        
        let bottomLayer = CAShapeLayer()
        let path3 = UIBezierPath()
        path3.move(to: CGPoint(x: L, y: L))
        path3.addLine(to: CGPoint(x: L-x, y: L-x))
        path3.addLine(to: CGPoint(x: x, y: L-x))
        path3.addLine(to: CGPoint(x: 0, y: L))
        
        bottomLayer.path = path3.cgPath
        bottomLayer.fillColor = UIColor.black.cgColor
        bottomLayer.opacity = 0.4
        squareLayer.insertSublayer(bottomLayer, at: 0)
        
        let leftLayer = CAShapeLayer()
        let path4 = UIBezierPath()
        path4.move(to: CGPoint(x: 0, y: L))
        path4.addLine(to: CGPoint(x: x, y: L-x))
        path4.addLine(to: CGPoint(x: x, y: x))
        path4.addLine(to: CGPoint(x: 0, y: 0))
        
        leftLayer.path = path4.cgPath
        leftLayer.fillColor = UIColor.white.cgColor
        leftLayer.opacity = 0.3
        squareLayer.insertSublayer(leftLayer, at: 0)
    }


}
