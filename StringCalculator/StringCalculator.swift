//
//  StringCalculator.swift
//  StringCalculator
//
//  Created by Zinal on 26/06/25.
//

import Foundation

class StringCalculator {
   
    func add(_ numbers: String) -> Int {
        let parts = numbers.split(separator: ",").map { Int($0) ?? 0 }
        return parts.reduce(0, +)
    }
}

