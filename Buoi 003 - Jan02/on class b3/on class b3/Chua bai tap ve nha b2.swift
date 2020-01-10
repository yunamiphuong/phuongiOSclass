//
//  Chua bai tap ve nha b2.swift
//  on class b3
//
//  Created by Apple on 1/2/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation
/*
 bài tập về nhà buổi 2
 */

/*
1, Viết chương trình nhập vào 3 số nguyên a, b, c. Tìm, in ra số lớn nhất, số bé nhất.
 */

/*
2, Nhập 3 giá trị nguyên dương a, b, c. Kiểm tra xem a, b, c có phải là 3 cạnh của tam giác không?
    - Nếu là 3 cạnh của tam giác thì tính diện tích của tam giác.
    - Nếu không phải là tam giác in ra “a, b, c không phải là 3 cạnh của tam giác”
 */
// chữa
// cách làm của anh Huy ở lớp
func tamGiac(a: Float, b: Float ,c: Float){
    if a + b <= c || a + b == c {
        print("3 canh \(a), \(b), \(c) khong tao thanh 1 tam giac")
    } else{
        if a + c <= b || a + c == b {
            print("3 canh \(a), \(b), \(c) khong tao thanh 1 tam giac")
        } else {
            if b + c <= a || b + c == a {
                print("3 canh \(a), \(b), \(c) khong tao thanh 1 tam giac")
            } else{
                print("3 canh \(a), \(b), \(c) co the tao thanh 1 tam giac")
                let p: Float = Float((a + b + c) / 2)
                let s: Float = Float(sqrt(p * (p - a) * (p - b) * (p - c)))
                print("Dien tich tam giac duoc tao thanh tu 3 canh \(a), \(b), \(c) la: \(s)")
            }
        }
    }
}

// cách2 làm bài tam giác - chữa bài
func tamGiac2(a: Float, b: Float, c: Float){
    if a + b > c && b + c > a && a + c > b {
        let p: Float = Float((a + b + c) / 2)
        let s: Float = Float(sqrt(p * (p - a) * (p - b) * (p - c)))
        print("Dien tich tam giac duoc tao thanh tu 3 canh \(a), \(b), \(c) la: \(s)")
    }else{
        print("3 cạnh \(a), \(b), \(c) không tạo thành một tam giác")
    }
}
 
/*
3, Nhập một năm công lịch bất kỳ , kiểm tra xem năm đó có phải năm nhuận hay không
 năm nhuận chia hết cho 400 hoặc chia hết cho 4 và không chia hết cho 100
 */
// cách của Kiệt
func timNamNhuan (a: Int) {
    if a % 4 == 0 && a % 100 != 0 || a%400 == 0 {
        print("Năm này là năm nhuận")
    } else {
        print("Năm này không phải là năm nhuận")
    }
}

//chữa
// cách 1 bài của Kiệt
func namNhuan(a:Int){
    if a%4 == 0 && a%100 != 0 || a%400 == 0{
        print("năm nhuận")
    }else{
        print("không phải là năm nhuận")
    }
}

// cách2 viết dài hơn nhưng tường mình hơn
func namNhuan2(a: Int){
    if a%100 == 0 {
        if a%400 == 0 {
            print("\(a) là năm nhuận")
        }else{
            print("\(a) không phải là năm nhuận")
        }
    }else{
        if a%4 == 0 {
            print("\(a) là năm nhuận")
        }else{
            print("\(a) không phải là năm nhuận")
        }
    }
}

 /*
4, Nhập vào thời điểm T gồm 3 số theo dạng : “Giờ : Phút : Giây” và 1 số nguyên X <= 10000
    - Hỏi sau X giây kể từ thời điểm T thì thời gian là bao nhiêu ?
    - Hãy in ra theo dạng “Giờ : Phút : Giây”
 */
func timThoiGian() {
    print("Nhập Giờ")
    var h: Int = Int(readLine() ?? "0") ?? 0
    print("Nhập phút")
    var m: Int = Int(readLine() ?? "0") ?? 0
    print("Nhập giây")
    var s: Int = Int(readLine() ?? "0") ?? 0
    print("Nhập X giây không quá 10000")
    var x: Int = Int(readLine() ?? "0") ?? 0
    
    if x > 10000 {
        print("số giây đã quá 10000")
    } else {
        repeat {
            x = x % 60
        
        } while x > 60
         
        }
    }
    
// chữa bài
func timThoiGianc2() {
    print("Nhập Giờ")
    var h: Int = Int(readLine() ?? "0") ?? 0
    print("Nhập phút")
    var m: Int = Int(readLine() ?? "0") ?? 0
    print("Nhập giây")
    var s: Int = Int(readLine() ?? "0") ?? 0
    print("Nhập X giây không quá 10000")
    var x: Int = Int(readLine() ?? "0") ?? 0
    
    let tongSoGiay: Int = h * 3600 + m * 60 + s + x
    var gio = tongSoGiay / 3600
    var phut = (tongSoGiay % 3600)/60
    var giay = (tongSoGiay % 3600) % 60

    print("thời gian ban đầu là \(h) : \(m) : \(s)")
    print("Sau \(x) giây thì thời gian mới là", terminator: "")
    if gio > 24 {
        gio = gio % 24
        print("\(gio):\(phut):\(giay) ngay hôm sau")
    } else {
        print("\(gio):\(phut):\(giay)")
    }
}


/*
5, Tìm số lớn thứ 2 trong mảng số nguyên
*/

// chữa
func timMax2 () {
    var mang : [Int] = [-9, -3, -66, -7, -34, -53, 0]
    var max1 = mang[0]
    var max2 = mang[0]
    
    for item in mang {
        if max1 < item {
            max2 = max1
            max1 = item
        } else if max2 < item && item < max1 {
            max2 = item
        }
        print(max1, max2)
    }
    print("Số lớn thứ 2 là \(max2)")
}

/*
BTVN: Tìm số nhỏ thứ 2 trong mảng số nguyên
*/

/*
 2. Tìm số n bé nhất sao cho n! lớn hơn một số m cho trước (m nhập từ bàn phím).
 */

// chữa
func timSoNBeNhat() {
    print("nhập số m")
    let m : Int = Int (readLine() ?? "0") ?? 0
    var n : Int = 0
    var giaiThua : Int = 1
    while giaiThua <= m {
        n = n + 1
        giaiThua = 1
        for i in 1...n {
            giaiThua = giaiThua*i
        }
        print(n, giaiThua)
    }
    print("Số n là: \(n)")
}

/*
 7, Viết chương trình vẽ một tam giác cân bằng các dấu * với chiều cao nhập từ bàn phím (chiều cao lớn hơn 1)
     *
   * * *
 * * * * *
 
 */

/* chữa
 tìm ra công thức là đáy = 2*h - 1
  
*/

func tamGiacCan() {
    print("Nhập vào chiều cao của tam giác chiều cao lớn hơn 1")
    let h = Int(readLine()!)!
    
    for i in 0..<h {
        for i in 0..<2*h-1 {
            
        }
    }
}

func drawTriangle(){
    print("Nhap chieu cao:")
    let height = Int(readLine()!)!
    if height < 1 {
        drawTriangle()
    } else {
        for index in 0...(height-1) {
            let stars = Array(repeating: "*", count: 2*index + 1)
            let spaces = Array(repeating: " ", count: height - index - 1)
            let line = spaces + stars + spaces
            print(line.joined())
        }
    }
}

/*
 Sắp xếp mảng số nguyên theo chiều tăng dần và giảm dần

 2, Viết chương trình nhập vào một số nguyên dương không lớn hơn 10000, in ra màn hình chữ số lớn thứ nhì có trong số đó (ví dụ nhập n = 1356 in ra 5). Trong trường hợp không có số lớn thứ nhì, thì in ra số lớn nhất.

 3, Liệt kê tất cả các ước số của một số tự nhiên nhập từ bàn phím.

 4, In ra họ và tên của một họ tên cho trước. (Ví dụ Phan Thanh Hoa -> In ra: Phan Hoa)

 5, Viết hàm cho phép người dùng chọn đáp án Question: Đâu không phải là một ngôn ngữ lập trình? a - Golang b - Swift c - Ruby d - Daily

 Cho người dùng chọn a, b, c, d để trả lời! Yêu cầu người dùng chọn lại đáp án nếu input không đúng, (không đúng nếu input khác a, b, c, d) In ra trả lời sai nếu đáp án không đúng In ra trả lời đúng nếu đáp án đúng

 6, Viết chương trình nhập vào số nguyên dương N (N<=32767), in ra màn hình những số hoàn hảo nhỏ hơn N (số hoàn hảo là số bằng tổng các ước số của nó mà không kể chính nó)
 */
