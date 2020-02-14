//
//  DefaultShadowViewController.swift
//  shadowProject
//
//  Created by Apple on 2/13/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class DefaultShadowViewController: UIViewController {

    // một cách để tạo imageView, ưu điểm là tập trung code vào 1 chỗ dễ quản lý hơn
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "image")
        imageView.contentMode = .scaleAspectFit
        imageView.frame = CGRect(x: 0, y: 0, width: 300, height: 200)
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.center = view.center
        view.addSubview(imageView)
        depthShadow()

    }
    func defaultShadow() {
        // thêm shadow cho imageView
        imageView.layer.shadowPath = UIBezierPath(rect: CGRect(x: 0, y: 0, width: imageView.frame.width, height: imageView.frame.height)).cgPath
        imageView.layer.shadowOpacity = 1
        
        imageView.layer.shadowOffset = CGSize(width: 10, height: 10)
    }

    func ovalShadow() {
        let rect = CGRect(x: -20, y: imageView.frame.height - 10, width: imageView.frame.width, height: 50)
        imageView.layer.shadowPath = UIBezierPath(ovalIn: rect).cgPath
        imageView.layer.shadowOpacity = 0.5
        imageView.layer.shadowRadius = 5
    }

    func depthShadow() {
        // vẽ shadow theo ý muốn, addLine để add từng điểm
        let width = imageView.frame.width
        let height = imageView.frame.height
        let shadowRadius: CGFloat = 5
        let shadowWidth: CGFloat = 1.5
        let shadowHeight: CGFloat = 0.5
        
        let shadowPath = UIBezierPath()
        
        shadowPath.move(to: CGPoint(x: shadowRadius/2, y: height - shadowRadius))
        shadowPath.addLine(to: CGPoint(x: width - shadowRadius/2, y: height - shadowRadius/2))
        shadowPath.addLine(to: CGPoint(x: width*shadowWidth, y: height + height*shadowHeight))
        shadowPath.addLine(to: CGPoint(x: width*(-shadowWidth - 1)-50, y: height + height*shadowHeight))
        
        
        imageView.layer.shadowPath = shadowPath.cgPath
        imageView.layer.shadowOpacity = 0.5
        imageView.layer.shadowRadius = shadowRadius
        imageView.layer.shadowOffset = .zero
    }
    
    func flatAndLongShadow() {
        let shadowPath = UIBezierPath()
        let width = imageView.frame.width
        let height = imageView.frame.height
        
        shadowPath.move(to: CGPoint(x: 0, y: height))
        shadowPath.addLine(to: CGPoint(x: width, y: 0))
//        shadowPath.addLine(to: CGPoint(x: <#T##CGFloat#>, y: <#T##CGFloat#>))
    }
}
