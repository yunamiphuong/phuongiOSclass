//
//  ViewController.swift
//  banCoVua
//
//  Created by Apple on 2/18/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let n: Int = 8 // n là số ô bàn cờ trên 1 hàng
//    let radius: CGFloat = 100
//    var containerView = UIView()
//    var width: CGFloat = 0
//    var screenWidth: CGFloat = 0
//    var squareView = UIView()
//    var squareWidth: CGFloat = 0
    
    var containerView = UIView()
    var screenWidth: CGFloat = 0
    var squareWidth: CGFloat = 0
    let margin: CGFloat = 30
    
    var countTag : Int = 0
    
    var images = [UIImageView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        width = self.view.frame.width
//        view.backgroundColor = .gray
//        containerView.frame = CGRect(x: 0, y: 0, width: width, height: width)
//        containerView.center = view.center
//        containerView.backgroundColor = .white
//        view.addSubview(containerView)
//
//        squareWidth = containerView.bounds.width / 8
//
//        drawBlackWall(squareWidth: squareWidth, x: squareWidth, y: squareWidth)
//        view.addSubview(squareView)
        
        
        setupControl()
        placeQueen(isPut: true, row: 3, column: 7)
        
        
    }
    
    func setupControl(){
    
        screenWidth = view.bounds.width
        squareWidth = (screenWidth - margin * 2)/CGFloat(n)
        
        containerView.frame.size = CGSize(width: screenWidth, height: screenWidth)
        containerView.backgroundColor = UIColor.lightGray
        containerView.center = view.center
        view.addSubview(containerView)
        
        for i in 0..<n {
            for j in 0..<n {
                countTag += 1
                let isWhiteSquare = (i+j)%2 == 1 ? true : false
                drawSquare(row: i, col: j, isWhite: isWhiteSquare, width: squareWidth, tag: countTag)
            }
        }
    }
    
    
    func drawSquare(row: Int, col: Int, isWhite: Bool, width: CGFloat, tag: Int) {
        let square = UIView(frame: CGRect(x: CGFloat(col) * width + margin, y: CGFloat(row) * width + margin, width: width, height: width))
        
        square.backgroundColor = isWhite ? UIColor.white : UIColor.black
        
        // .tag là để gắn tag
        square.tag = tag
        let gesture = UITapGestureRecognizer(target: self, action: #selector(tapSquare(_:)))
        
        square.addGestureRecognizer(gesture)
        
        containerView.addSubview(square)
    }
    
    @objc func tapSquare(_ sender: UITapGestureRecognizer){
        guard let squareView = sender.view else {
            return
        }
        print(squareView.tag)
        
        // bỏ hình của quân cờ cũ khỏi bàn cờ sau khi tab vị trí mới
        for image in images {
            image.removeFromSuperview()
        }
        
// chuyển từ tag sang vị trí column , row trên bàn cờ
        if squareView.tag % n == 0{
            placeQueen(isPut: true, row: squareView.tag/n-1, column: (n-1))
        } else {
            placeQueen(isPut: true, row: squareView.tag/n, column: squareView.tag % n - 1)
        }
    }
    
    func placeQueen(isPut: Bool, row: Int, column: Int) {
        let queenImageView = UIImageView(image: UIImage(named: "queen"))
        if isPut {
            queenImageView.frame = CGRect(x: margin + CGFloat(column) * squareWidth, y: margin + CGFloat(row) * squareWidth, width: squareWidth, height: squareWidth)
            queenImageView.contentMode = .scaleAspectFit
            containerView.addSubview(queenImageView)
        }
        images.append(queenImageView)
    }
    
    
    
//    func drawBlackSquare(row: Int, col: Int, radius: CGFloat) {
//        squareView.backgroundColor = .black
//        squareView.frame = CGRect(x: <#T##CGFloat#>, y: <#T##CGFloat#>, width: <#T##CGFloat#>, height: <#T##CGFloat#>)
//    }
//
//    func drawBlackWall(squareWidth: CGFloat, x: CGFloat, y: CGFloat) {
//        for i in 0...7 {
//            for j in 0...7 {
//                squareView.frame = CGRect(x: x * CGFloat(i), y: y * CGFloat(j), width: squareWidth, height: squareWidth)
//                squareView.backgroundColor = .black
//            }
//        }
//
//    }
//

}

