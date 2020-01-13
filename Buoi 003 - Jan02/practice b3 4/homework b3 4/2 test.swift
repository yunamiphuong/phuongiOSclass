
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

func testMang () {
    var arr: [Float] = [2,4,7,88,9,0, -1]
//    for (i, item) in arr.enumerated() {
//    print("giá trị arr[i] là \(arr[i]), còn giá trị i là \(i)")
//    }
    
    for a in arr {
        print("a là \(a)")
    }
    for b in arr.reversed() {
        print("b là \(b)")
    }
    for c in 0..<arr.count {
        print("c là \(c), arr[c] là \(arr[c])")
    }
    for d in 0..<arr.count {
        print("d là \(d), arr[d] là \(arr[d])")
    }
    for (e , f) in arr.enumerated() {
        print("e là \(e) , f là \(f), arr[e] là \(arr[e])")
    }
       // bài tập: cho 1 mảng số nguyên, in ra 1 mangr mà các phần tử đã được bình phương
    
    for value in arr {
        print(powf(value, 2))
    }
//    for index in 0..<arr.count {
//        arr[index] = powf(arr[index], 2)
//
//    }
//    print(arr)
    
    // bài tập: kiểm tra trong mảng nếu có phần tử âm thì thay thế bằng 0
    for index in 0...arr.count-1 {
        if arr[index] < 0 {
            arr[index] = 0
        }
    }
    print(arr)
    

    // bài tập tìm số nhỏ nhất và lớn nhất trong mảng số nguyên
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
    
    
    
}
