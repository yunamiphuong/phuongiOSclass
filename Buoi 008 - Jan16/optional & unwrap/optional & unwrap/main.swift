//
//  main.swift
//  optional & unwrap
//
//  Created by Apple on 1/16/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

var age: Int?
age = nil

if age != nil {
    print(age!)
    //! để unwrap bên trong optional
} else {
    print("age nil")
}

// 2 cách để kiểm nil và unwrap
// cách 1:
// sử dụng guard let

guard let age = age else {
    print("age nil")
    fatalError()
}

print("Tuổi là \(age)")

//cách 2
// sử dụng if let

if let b = age {
    print(b)
} else {
    
}
