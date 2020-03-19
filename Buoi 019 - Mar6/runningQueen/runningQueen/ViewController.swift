//
//  ViewController.swift
//  runningQueen
//
//  Created by Apple on 3/6/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var grayView = UIView()
    var margin: CGFloat = 10
    var screenWidth : CGFloat = 0
    var squareWidth : CGFloat = 0
    var timer : Timer!
    //    var timerReverse : Timer!
    
    
    let imageQueen = UIImageView()
    var col : Int = 0
    var row : Int = 0
    
    var maxRow : Int = 7
    var maxCol : Int = 7
    var minRow : Int = 0
    var minCol : Int = 0
    
    var squareTag : Int = 0
    var setOfSquareTag = [Int]()
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        screenWidth = view.frame.width
        squareWidth = (screenWidth - 2*margin)/8
        
        grayView.backgroundColor = .gray
        grayView.frame.size = CGSize(width: screenWidth, height: screenWidth)
        grayView.center = view.center
        view.addSubview(grayView)
        
        
        
        for i in 0..<8 {
            for j in 0..<8 {
                squareTag += 1
                setOfSquareTag.append(squareTag)
                let isWhiteSquare = (i+j)%2 == 0 ? true : false
                drawASquare(row: j, column: i, isWhite: isWhiteSquare, tag: squareTag)
            }
        }
        
        
        placeAQueen(row: row, col: col, isPut: true)
        
        
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(runLoopQueen), userInfo: nil, repeats: true)
        

    }
    
    func drawASquare(row: Int, column : Int, isWhite: Bool, tag: Int) {
        let squareView = UIView()
        squareView.backgroundColor = isWhite ? .white : .black
        squareView.frame = CGRect(x: CGFloat(column) * squareWidth + margin, y: CGFloat(row) * squareWidth + margin ,width: squareWidth, height: squareWidth)
        squareView.tag = tag
        grayView.addSubview(squareView)
    }
    
    func placeAQueen(row: Int, col: Int, isPut: Bool) {
        imageQueen.image = UIImage(named: "queen")
        if isPut {
            imageQueen.frame = CGRect(x: squareWidth*CGFloat(col) + margin, y: squareWidth*CGFloat(row) + margin, width: squareWidth, height: squareWidth)
            imageQueen.contentMode = .scaleAspectFit
            grayView.addSubview(imageQueen)
        }
    }
    
    @objc func runLoopQueen() {
        if row == minRow && col < maxCol {
            col += 1
            placeAQueen(row: row, col: col, isPut: true)
            
        } else if col == maxCol && row < maxRow {
            row += 1
            placeAQueen(row: row, col: col, isPut: true)
        } else if col > minCol && row == maxRow {
            col -= 1
            placeAQueen(row: row, col: col, isPut: true)
        } else if col == minCol && row > minRow + 1 {
            row -= 1
            placeAQueen(row: row, col: col, isPut: true)
        } else if col == minCol && row == minRow + 1 {
            minRow += 1
            minCol += 1
            maxRow -= 1
            maxCol -= 1
        }
        print("row: \(row), col \(col), maxCol \(maxCol), maxRow \(maxRow), minCol \(minCol), minRow \(minRow)")
        
        if row == 4 && col == 3 {
//            timer.invalidate()
            timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(runLoopQueenReverse), userInfo: nil, repeats: true)
        }
    }
    
    @objc func runLoopQueenReverse() {
        if row == 4 && col < maxCol + 1 /* 4*/ {
            col += 1
            placeAQueen(row: row, col: col, isPut: true)
        } else if row > minRow - 1 /* 3 */ && col == 4 {
            row -= 1
            placeAQueen(row: row, col: col, isPut: true)
        } else if row == 3 && col > 3 {
            col -= 1
            placeAQueen(row: row, col: col, isPut: true)
        } else if col == 3 && row == 3 {
            minRow -= 1
            minCol -= 1
            maxRow += 1
            maxCol += 1
        }
        print("row: \(row), col \(col), maxCol \(maxCol), maxRow \(maxRow), minCol \(minCol), minRow \(minRow)")
    }
    

}

