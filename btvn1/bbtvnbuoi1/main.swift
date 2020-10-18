//
//  main.swift
//  bbtvnbuoi1
//
//  Created by Thuy on 10/18/20.
//  Copyright © 2020 Cong Thanh. All rights reserved.
//

import Foundation

//bai 1
func cToF (c: Float) {
    let f = Float(c) * 1.8 + 32
    print("DO F LA \(f)")
}

func fToC (f: Float) {
    let c = Float(f) * 1.8 + 32
    print("DO C LA \(c)")
}

cToF(c: 48)
fToC(f: 97)

//bai 2
func tinhDienTichTamGiac (a: Int, b: Int, c: Int) {
    if a > 0 && b > 0 && c > 0 {
        let p = (Float(a) + Float(b) + Float(c)) / 2
        let s = sqrtf(p * (p-Float(a)) * (p-Float(b)) * (p-Float(c)))
        print(s)
    } else {
        print("a, b, b khong phai la 3 canh cua 1 tam giac")
    }
}

tinhDienTichTamGiac(a: 4, b: -6, c: 7)

//bai3
func namNhuan (year: Int) {
    if year % 400 == 0 || (year % 4 == 0 && year % 100 != 0) {
        print("\(year) la nam nhuan")
    } else {
        print("\(year) khong la nam nhuan")
    }
}
namNhuan(year: 1800)

//bai4
func thayTheSoAmBangKhong (numbers: inout [Int]) {
    for i in 0...numbers.count-1 {
        if numbers[i] < 0 {
            numbers[i] = 0
        }
        print(numbers[i])
    }
}
var number = [1, 4, -9, -8, 10]
thayTheSoAmBangKhong(numbers: &number)

//bai5
func timSoNhoNhatVaLonNhat (numbers: [Int]) {
    var soNhoNhat: Int = numbers[0]
    var soLonNhat: Int = numbers[0]
    for i in numbers {
        if soNhoNhat > i {
            soNhoNhat = i
        }
        if soLonNhat < i {
            soLonNhat = i
        }
    }
    print("So nho nhat la \(soNhoNhat)")
    print("So lon nhat la \(soLonNhat)")

}
timSoNhoNhatVaLonNhat(numbers: number)

//bai6
func timSoLeDauTienVaSoChanCuoiCung (numbers: [Int]) {
    var soLeDauTien: Int = -1
    var soChanCuoiCung: Int = -1
    for index in 0..<numbers.count {
        if numbers[index] % 2 == 1 && soLeDauTien == -1 {
            soLeDauTien = index
        }
        if numbers[index] % 2 == 0 {
            soChanCuoiCung = index
        }
    }
    if soLeDauTien == -1 {
        print("Khong co so le nao trong mang")
    } else {
        print("Vi tri cua so le dau tien la \(soLeDauTien)" )
    }
    if soChanCuoiCung == -1 {
        print("Khong co so chan nao trong mang")
    } else {
        print("Vi tri cua so chan cuoi cung la \(soChanCuoiCung)")
    }
}
timSoLeDauTienVaSoChanCuoiCung(numbers: number)
