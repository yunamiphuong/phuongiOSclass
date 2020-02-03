//
//  ViewController.swift
//  demGio
//
//  Created by Apple on 2/3/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelCounting: UILabel!
    @IBOutlet weak var buttonStartPause: UIButton!
    @IBOutlet weak var buttonReset: UIButton!
    
    var timer : Timer!
    var numberSecond: Int = 0
    enum Time {
        case Start
        case Pause
    }
    var timeType: Time = .Start
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelCounting.text = "00:00:00"
//        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(runLoop), userInfo: nil, repeats: true)
        labelCounting.center.x = view.center.x
        labelCounting.center.y = view.center.y - 200
        labelCounting.numberOfLines = 0
        
    }
    @IBAction func onPressStartPause(_ sender: Any) {
        if timeType == Time.Start {
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(runLoop), userInfo: nil, repeats: true)
            buttonStartPause.setTitle("PAUSE", for: .normal)
            timeType = .Pause
        } else {
            buttonStartPause.setTitle("START", for: .normal)
            timeType = .Start
            timer.invalidate()
        }
        
    }
    
    @IBAction func onPressReset(_ sender: Any) {
        numberSecond = 0
        labelCounting.text = stringFromNumberSecond(numberSecond)
        timeType = .Start
        timer.invalidate()
    }
    
   @objc func runLoop() {
        numberSecond += 1
        labelCounting.text = stringFromNumberSecond(numberSecond)
    }
    
    func stringFromNumberSecond (_ numberSecond: Int) -> String{
        let gio = numberSecond/3600
        let phut = (numberSecond%3600)/60
        let giay = (numberSecond%3600)%60
        
        return "\(gio < 10 ? "0\(gio)" : "\(gio)") :\(phut < 10 ? "0\(phut)" : "\(phut)") : \(giay < 10 ? "0\(giay)" : "\(giay)")"

    }
}

