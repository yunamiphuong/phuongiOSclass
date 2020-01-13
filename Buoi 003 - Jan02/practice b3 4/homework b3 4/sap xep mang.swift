//
//  sap xep mang.swift
//  homework b3 4
//
//  Created by Apple on 1/10/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

// khai báo một mảng số nguyên
  


func timMinMax() -> Array<Any>{
    var arr: [Float] = [0, 1, 2, 11, 16, -3, 48]
    var min : Float = arr[0]
    var max : Float = arr[0]
    
    for index in 1..<arr.count {
        if min > arr[index] {
            min = arr[index]
        }
        if max < arr[index] {
            max = arr[index]
        }
    }
    print("min là \(min)")
    print("max là \(max)")
    return [min, max]
}

func arrangeArr() {
    var newArr : [Float] = []
    timMinMax()
    
    for index in 0..<arr.count {
        if arr[index] == min {
            arr.remove(at: index)
        }
        if arr[index] == max {
            arr.remove(at: index)
        }
}
