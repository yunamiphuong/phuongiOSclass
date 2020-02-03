//
//  main.swift
//  play
//
//  Created by Apple on 1/17/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation
//
//print("Hello, World!")
//
//var interger : Int = 10
//var decimal : Double = 4.33
//
//interger = Int(decimal)
//print(interger)

//let currentDay = "Tuesday"
// let prefix = "Today is "
//
// let today = prefix + currentDay
// print(today)
//
// // .isEmpty để kiểm tra xem chuỗi có rỗng hay không, isEmpty = true là rỗng
// print(currentDay.isEmpty)
//
// // nối chuỗi = appending
// let anotherToday = prefix.appending(currentDay)
// print(anotherToday)
//
// // viết hoa
// print(today.uppercased())
//
// // viết thường
// print(today.lowercased())
//
// // Kiểm tra đầu chuỗi, cuối chuỗi
// print(today.prefix(5)); print(today.suffix(6))
//
// // Kiểm tra xem trong chuỗi có chứa chuỗi mình muốn tìm
// print(today.contains("Monday"))
//
// // đảo chuỗi
// today.reversed()
//
// // khai báo một mảng string
// let myArrayString = ["This", "is", "Techmaster", "iOS", "class"]
//
// // nối chuỗi từ một mảng
// print(myArrayString.joined())
//
// // nối chuỗi
// print(myArrayString.joined(separator: " "))
//
// // Cắt chuỗi thành một mảng
// let joinedMyString = myArrayString.joined()
// print(joinedMyString.components(separatedBy: "a"))

//var Arr = [Int](repeating: 3, count: 8)
//print(Arr)
//
////Arr.append(contentsOf: [20,10])
//print(Arr)
//
//print(Arr.count)
//print(Arr.last)
//
//var airports: [String: String] = ["NoiBai": "Hà Nội", "SaoVang": "Thanh Hoá", "TSN" : "HCM"]
//for tenSB in airports.keys {
//    print("keys là \(tenSB)")
//}
//
//for tenTP in airports.values {
//    print("values là \(tenTP)")
//}

var set3: Set<String> = ["Apple", "Pear", "Orange"]
//- Thao tác với set:

// thêm phần tử vào Set
set3.insert("Prune")

// xoá phần tử
set3.remove("Orange")

// tìm phần tử
set3.contains("Apple")

// duyệt tập hợp Set
for i in set3 {
    print(i)
}

if set3.contains("Apple") {
    print("yes it does")
} else {
    print("no it doesnt")
}
