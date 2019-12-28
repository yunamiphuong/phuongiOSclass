//
//  mảng.swift
//  onClass
//
//  Created by Apple on 12/28/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation

func mang() {
    // khai báo một mảng số nguyên
    var numbers: [Int] = [0, 1, 2, 5, 9, -3]
    
    // đếm số phần tử trong mảng
    print(numbers.count)
    
    // thêm mới một phần tử vào mảng
    numbers.append(3)
    print(numbers)
    
    // thêm mới nhiều phần tử vào mảng
    numbers.append(contentsOf: [4, 5])
    print(numbers)
    
    // xoá một phần tử trong mảng
    numbers.remove(at: 2)
    print(numbers)
    
//    // xoá tất cả phần tử trong mảng
//    numbers.removeAll()
//    print(numbers)
    
    // thay thế một phần tử trong mảng
    numbers[3] = 10
    
    // thay thế 1 đoạn phần tử trong mảng (thay bao nhiêu số cũng được, số cho vào ko cần bằng số xoá đi
    numbers.replaceSubrange(2...5, with: [11])
    print(numbers)
    
    // duyệt mảng
    for item in numbers {
        print(item)
    }
    print("_________")
    for item in numbers.reversed(){
        print(item)
    }
    print("_________")
    
    for i in 0..<numbers.count {
        print(numbers[i])
    }
    
    // duyệt mảng theo index sử dụng enumerated
    for (index, value) in numbers.enumerated(){
        print("Index là: \(index) - Value là: \(value)")
    }
    // bài tập: cho 1 mảng số nguyên, in ra 1 mangr mà các phần tử đã được bình phương
    
    for item in numbers {
        print(pow(Double(item), 2))
    }
    
 
}

// chữa bài:

func binhPhuongMang() {
    var arrs: [Int] = [1, 2, 5,8,9]
    for (i, item) in arrs.enumerated() {
        arrs[i] = item * item
    }
    print(arrs)
}

// bài tập: kiểm tra trong mảng nếu có phần tử âm thì thay thế bằng 0
func doiAmThanh0() {
    var arrs: [Int] = [9, 2,-4, -5, -4, 11]
    for (index, value) in arrs.enumerated() {
        if value < 0 {
            arrs[index] = 0
        }
        print(arrs)
    }
    
}
// chữa bài

func timSoAm() {
    var numbers = [9, 2,-4, -5, -4, 11]
    for (i, item) in numbers.enumerated() {
        if item < 0 {
            numbers[i] = 0
        }
    }
    print(numbers)
}

// bài tập tìm số nhỏ nhất và lớn nhất trong mảng số nguyên

func timSoNhoNhat() {
    var arrs: [Int] = [9, 2,-4, -5, -4, 11]
    
    for (index, value) in arrs.enumerated() {
        var max = value
        if arrs[index] < arrs[index + 1] {
            max = value
        } 
        print(max)
    }
}
// chữa bài
func timMinMax() {
    let numbers = [9, 2,-4, -5, -4, 11]
    var min = 0
    var max = 0
    
    for item in numbers {
        // tìm min
        if min > item {
            min = item
        }
        // tìm max
        if max < item {
            max = item
        }
    }
}
