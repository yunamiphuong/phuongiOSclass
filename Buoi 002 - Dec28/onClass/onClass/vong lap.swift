//
//  vong lap.swift
//  onClass
//
//  Created by Apple on 12/28/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation


// vòng lặp



func vongLapFor() {
    for i in 5...10 {
        print (i+1)
    }
    for i in 0..<10 {
        print (i)
    }

}

func vongLapWhile() {
    var i = 10
    while i > 8 {
        i -= 1 // đồng nghĩa với biểu thức i = i - 1
        print (i)
    }
}

func vongLapRepeatWhile() {
    var i = 0
    repeat {
        print(i)
        i += 1
    }
    while i < 0
}
