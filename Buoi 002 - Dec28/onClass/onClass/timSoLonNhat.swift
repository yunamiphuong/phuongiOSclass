//
//  timSoLonNhat.swift
//  onClass
//
//  Created by Apple on 12/28/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation
// tìm max của 2 số

func timMax(x: Int, y: Int) -> Int {
    if x > y {
        return (x)
    }
    else {
        return (y)
    }
}

// tìm số lớn nhất của 3 số cho trước



func timMax3So (x: Int, y: Int, z: Int) -> Int {
    if x > y && x > z {
        return x
    }
    else if y > z {
        return y
    }
    else {return z}
}



//cách 2


func timMax3SoCach2(u: Int, v: Int, w: Int) {
    var max = u
    if u < v {
        max = v
    }
    if v < w {
        max = w
    }
    print (max)
    
    print (timMax(x: (timMax(x: u, y: v)), y: w))
}




