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
        var delimiters = CharacterSet(charactersIn: ",\n")
            var input = numbers

            if numbers.hasPrefix("//") {
                let parts = numbers.components(separatedBy: "\n")
                if let delimiterLine = parts.first {
                    let delimiter = delimiterLine.replacingOccurrences(of: "//", with: "")
                    delimiters.insert(charactersIn: delimiter)
                }
                input = parts.dropFirst().joined(separator: "\n")
            }

            let values = input.components(separatedBy: delimiters).compactMap { Int($0) }
            return values.reduce(0, +)
    }
}

