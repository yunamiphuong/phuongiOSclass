//
//  tien dien.swift
//  LearnSwiftDec26
//
//  Created by Apple on 12/26/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation

func printName(){
    var m: Int = 0
    m = m + 5
    print(m)
}

func tinhTienDien(soDien: Int, giaDien: Float) {
    print("Tiền điện là \(Float(soDien) * giaDien)")
}

func tinhBinhPhuong(a: Float) {
    print(powf(a, 3))
}


