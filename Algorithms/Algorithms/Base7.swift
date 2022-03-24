//
//  Base7.swift
//  Algorithms
//
//  Created by Abanoub Emil on 03/03/2022.
//

import Foundation

struct Base7 {
    
    
    func solution() {
        var num: Double = -7
        var power: Double = 0
        var maxBase7: Double = 0
        var arrOfBase7 = [Double]()
        var currentValue = 0
        var str = ""
        if num < 0 {
            num = -1 * num
            str.append("-")
        }
        while maxBase7 < num {
            maxBase7 = pow(7, power)
            arrOfBase7.append(maxBase7)
            power += 1
        }
        
        while num > 0 || !arrOfBase7.isEmpty {
            if (num - (arrOfBase7.last ?? 0)) >= 0 {
                num -= arrOfBase7.last ?? 0
                currentValue += 1
                if num < (arrOfBase7.last ?? 0) {
                    arrOfBase7.removeLast()
                    str += "\(currentValue)"
                    currentValue = 0
                }
            } else {
                if (str.isEmpty || str == "-") && currentValue == 0 {
                    arrOfBase7.removeLast()
                } else {
                    str += "\(currentValue)"
                    currentValue = 0
                    arrOfBase7.removeLast()
                }
            }
        }
//
//        else {
//            while maxBase7 > num {
//                maxBase7 = pow(7, power)
//                arrOfBase7.append(maxBase7)
//                power -= 1
//            }
//
//            while num > 0 {
//                if (num - (arrOfBase7.last ?? 0)) >= 0 {
//                    num -= arrOfBase7.last ?? 0
//                    currentValue += 1
//                    if num < (arrOfBase7.last ?? 0) {
//                        arrOfBase7.removeLast()
//                        str += "\(currentValue)"
//                        currentValue = 0
//                    }
//                } else {
//                    if str.isEmpty && currentValue == 0 {
//                        arrOfBase7.removeLast()
//                    } else {
//                        str += "\(currentValue)"
//                        currentValue = 0
//                        arrOfBase7.removeLast()
//                    }
//                }
//            }
//        }
        print(str)
    }
}
