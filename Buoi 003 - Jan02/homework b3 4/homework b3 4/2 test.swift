
//
//  2 test.swift
//  homework b3 4
//
//  Created by Apple on 1/9/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

func mang(){
// khai báo một mảng số nguyên
var numbers: [Int] = [0, 1, 2, 11, 16, -3, 48]

    numbers.remove(at: 1)
    print(numbers)
}

//Trả về Vị trí đầu tiên của số lẻ, vị trí cuối cùng của số chẵn trong mảng bất kì.
func timViTri() {
    var arr: [Int] = [2,4,7,88,9,0, -1]
    var arr1: [Int] = []
    var arr2: [Int] = []
    for index in 0...arr.count-1 {
        if arr[index] % 2 == 0 {
            arr2.append(index)
            print(arr2)
        } else if arr[index] % 2 != 0 {
            arr1.append(index)
            print(arr1)
        }
    }
   print("vị trí số lẻ đầu tiên là \(arr1[0])")
    print("vị trí số chẵn cuối cùng là \(arr2[arr2.count-1])")
    print(arr2)
}

func timViTric2() {
    var arr: [Int] = [2,4,7,88,9,0, -1]
    
    for i in 0..<arr.count {
        if arr[i] % 2 != 0 {
        print("vị trí số lẻ đầu tiên là \(i)")
            break
        }
    }
    for i in (0..<arr.count).reversed() {
        if arr[i] % 2 == 0 {
            print("vị trí số chẵn cuối cùng là \(i)")
            break
        }
    }
}

// cách 2:
func timSoCach2(){
    let mang : [Int] = [2,3,5,6,7,8]
    
    for i in 0..<mang.count{
        if mang[i] % 2 != 0 {
            print("Vị trí lẻ đầu tiên là \(i)")
            break
        }
    }
    
    for i in (0..<mang.count).reversed(){
        if mang[i] % 2 == 0 {
            print("Vị trí chẵn cuối cùng là: \(i)")
            break
        }
    }
}
