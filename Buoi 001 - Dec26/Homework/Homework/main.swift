//
//  main.swift
//  Homework
//
//  Created by Apple on 12/27/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation



/*
 1. 1, Cho bán kính hình cầu, tính và in ra diện tích, thể tích của hình cầu đó.
 Hướng dẫn: S = 4πR 2 và V = (4/3)πR 3
 */

print ("nhập bán kính: ")
let R: Double = Double (readLine()!) ?? 0

let S = 4*Double.pi*pow(R, 2)
print ("Diện tích hình cầu là: \(S)" )

let V = (4/3)*Double.pi*pow(R, 3)
print (" Thể tích hình cầu là: \(V) ")

/*
 2, Tính tổng bình phương 2 số a, b (a, b nhập từ bàn phím).
 */

print (" Nhập số a =")
let a: Double = Double (readLine()!) ?? 0

print(" Nhập số b = ")
let b: Double = Double (readLine()!) ?? 0

print ("Tổng bình phương của a và b là \(pow(a, 2)+pow(b, 2))" )

/*
 3*, Viết chương trình nhập vào số nguyên n. Hỏi:
 - n là số nguyên dương hay không?
 - n có phải là số chẵn hay không?
 - n có chia hết cho 5 hay không?
 - n có phải là số nguyên tố hay không?
 */

print ("Nhập vào số nguyên n =")
let n: Int = Int (readLine()!) ?? 0

print (n>0 ? "n là số nguyên dương" : "n không là số nguyên dương")
print (n % 2 == 0 ? "n là số chẵn" : "n không là số chẵn")
print (n % 5 == 0 ? "n có chia hết cho 5" : "n không chia hết cho 5" )

func isPrime(x: Int) -> Bool {
    if x <= 1 {
        return false
    }
    if x <= 3 {
        return true
    }

    var i = 2
    while i*i <= x {
        if x % i == 0 {
            return false
        }
        i = i + 1
        return true
    }
    return false
}

print (isPrime(x: n) ? "n là số nguyên tố" : "n không là số nguyên tố" )


/*
 4*, Cho 2 số a và b, kiểm tra xem a có chia hết cho b không?
 */

print (" Nhập số a1 =")
let a1: Int = Int (readLine()!) ?? 0

print(" Nhập số b1 = ")
let b1: Int = Int (readLine()!) ?? 0

print ( a1 % b1 == 0 ? "số a có chia hết cho số b" : "số a không chia hết cho số b" )



/*
 5*, Tìm giá trị lớn nhất của 2 số

 */

print ("nhập số x:" )
let x: Double = Double (readLine()!) ?? 0

print ("nhập số y:" )
let y: Double = Double (readLine()!) ?? 0

let max = x <= y ? y : x

print ("Gía trị lớn nhất của hai số trên là \(max)")

 /*
 6*, Giải phương trình bậc nhất
 */

print ("giải phương trình bậc nhất ux + v = 0")
print ("mời nhập số u:")
let u: Double = Double (readLine()!) ?? 0

print ("mời nhập số v:")
let v: Double = Double (readLine()!) ?? 0

print ("kết quả x = \(-v/u)")

/*
 7, Chuyển đổi nhiệt độ C sang F và ngược lại
 CT:
 °F  =  ( °C × 1.8 ) +  32
 °C  =  ( °F ─  32 )  ⁄  1.8
 */

print ("Nhập nhiệt độ C:")
let c: Double = Double(readLine()!) ?? 0

print (" Nhiệt độ F là: \((c * 1.8)+32)")

print ("Nhập nhiệt độ F:")
let f: Double = Double(readLine()!) ?? 0

print (" Nhiệt độ C là: \((f - 32)/1.8)")


