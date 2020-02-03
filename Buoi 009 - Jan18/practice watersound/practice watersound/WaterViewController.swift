//
//  WaterViewController.swift
//  practice watersound
//
//  Created by Apple on 1/25/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit
import AVFoundation

class WaterViewController: UIViewController {
    
    @IBOutlet weak var UIWaterLevel: UIView!
    
    @IBOutlet weak var labelWaterCount: UILabel!
    
    var timeCountDown : Timer!
    var soundPlayerBubble: AVAudioPlayer?
    var count: Int = 0
    var n: Int = 5 // số giây đếm ngược để tụt hết nước
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timeCountDown = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(runTimer), userInfo: nil, repeats: true)
        labelWaterCount.text = "\(n)"
        count = n
        
        
    }
    
    @objc func runTimer() {
        count -= 1
        labelWaterCount.text = "\(count)"
        UIWaterLevel.frame = CGRect(x: 0, y: UIWaterLevel.frame.origin.y + view.bounds.height/Float(n), width: <#T##CGFloat#>, height: <#T##CGFloat#>)
    }
    
    
}
