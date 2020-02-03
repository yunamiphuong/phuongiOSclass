//
//  WaterViewController.swift
//  DemoTimer
//
//  Created by Apple on 1/18/20.
//  Copyright © 2020 Taof. All rights reserved.
//

import UIKit
import AVFoundation // thư viện của hệ thống làm việc với âm thanh

class WaterViewController: UIViewController {
    
    @IBOutlet weak var waterView: UIView!
    
    @IBOutlet weak var labelCount: UILabel!
    
    var time: Timer!
    var count: Int = 0
    var n: Int = 5 // 5s thì tụt hết nước trên màn hình
    
    // cách 1 tạo biến n
    //    var n: Int = 5 //số thời gian ban đầu
    
    
    //-----
    //khai báo một biến AVAudio
    var soundPlayer: AVAudioPlayer?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        time = Timer.scheduledTimer(timeInterval: 1, // 1s
            target: self,
            selector: #selector(runLoop),
            userInfo: nil,
            repeats: true)
        // cách 1:        labelCount.text = "\(n)" // cập nhật labelCount ban đầu là n để bắt đầu đếm ngược
        //        count = 0
        
        // cách 2
        count = n
        labelCount.text = "\(count)"
        playSound()
    }
    
    @objc func runLoop() {
        // cách 1
        //        count += Float(CGFloat(view.frame.maxY) / CGFloat(n))
        //        n -= 1
        //        waterView.frame.origin.y = CGFloat(count)
        //        labelCount.text = "\(n)"
        
        // cách 2
        count -= 1
        labelCount.text = "\(count)"
        waterView.frame = CGRect(x: 0, y: waterView.frame.origin.y + view.bounds.height/CGFloat(n), width: view.bounds.width, height: view.bounds.height)
        
        
        if count < 1 {
            // dừng thời gian bằng .invalidate()
        
            time.invalidate()
            // dừng âm thanh
            soundPlayer?.pause()
        }
    }
    
    func playSound() {
        let path = Bundle.main.path(forResource: "bubblewater.mp3", ofType: nil)!
        let url = URL(fileURLWithPath: path)
        
        do {
            soundPlayer = try AVAudioPlayer(contentsOf: url)
            soundPlayer?.play()
            // đặt numberOfLoops = -1 để nó chạy lại khi chạy hết
            soundPlayer?.numberOfLoops = -1
        } catch {
            print("lỗi")
            // couldn't load file
        }
        
    }
    
}
