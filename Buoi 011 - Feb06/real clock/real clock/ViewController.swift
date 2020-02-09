//
//  ViewController.swift
//  real clock
//
//  Created by Apple on 2/6/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelDigitalClock: UILabel!
    
    var count : Int = 0
    var timer : Timer!
    let currentDate = NSDate()
    let calendar = NSCalendar.current
    var totalSecond : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(runTimer), userInfo: nil, repeats: true)
        
//        labelDigitalClock.text = "\(realTime().hour):\(realTime().minute):\(realTime().second)"
        
        labelDigitalClock.numberOfLines = 0
        
        totalSecond = realTime().hour * 60 * 60 + realTime().minute * 60 + realTime().second
        
        
    }
    
    
    @objc func runTimer() {
        if totalSecond >= 23*3600 + 59*60 + 59 {
            totalSecond = 0
        }
        totalSecond += 1
        labelDigitalClock.text = stringFromNumberSecond(totalSecond)
    }
    
    func realTime() -> (hour: Int, minute: Int, second: Int){
        // lấy ra thời gian thực
        let hour = calendar.component(.hour, from: currentDate as Date)
        let minute = calendar.component(.minute, from: currentDate as Date)
        let second = calendar.component(.second, from: currentDate as Date)
        return (hour, minute, second)
    }
    
    func stringFromNumberSecond (_ numberSecond: Int) -> String{
        let gio = numberSecond/3600
        let phut = (numberSecond%3600)/60
        let giay = (numberSecond%3600)%60
        
        return "\(gio < 10 ? "0\(gio)" : "\(gio)") :\(phut < 10 ? "0\(phut)" : "\(phut)") : \(giay < 10 ? "0\(giay)" : "\(giay)")"

    }
}

