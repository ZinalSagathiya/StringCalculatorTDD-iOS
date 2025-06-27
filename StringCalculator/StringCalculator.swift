//
//  StringCalculator.swift
//  StringCalculator
//
//  Created by Zinal on 26/06/25.
//

import Foundation

class StringCalculator {
   
    func add(_ numbers: String) -> Int {
        if numbers.isEmpty { return 0 }
        let delimiters = CharacterSet(charactersIn: ",\n")
        let parts = numbers.components(separatedBy: delimiters).map { Int($0) ?? 0 }
        return parts.reduce(0, +)
    }
}

