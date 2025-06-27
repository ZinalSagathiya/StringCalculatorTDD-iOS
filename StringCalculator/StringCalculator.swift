//
//  StringCalculator.swift
//  StringCalculator
//
//  Created by Zinal on 26/06/25.
//

import Foundation

enum StringCalculatorError: Error, LocalizedError {
    case negativesNotAllowed([Int])

    var errorDescription: String? {
        switch self {
        case .negativesNotAllowed(let nums):
            return "negative numbers not allowed: " + nums.map { "\($0)" }.joined(separator: ",")
        }
    }
}

class StringCalculator {
   
    func add(_ numbers: String) -> Int {
        return try! addWithError(numbers)
    }

    func addWithError(_ numbers: String) throws -> Int {
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
        input = input.replacingOccurrences(of: "\\n", with: "\n")

        let values = input.components(separatedBy: delimiters)
            .filter { !$0.isEmpty }
            .compactMap { Int($0) }
        
        let negatives = values.filter { $0 < 0 }
        if !negatives.isEmpty {
            throw StringCalculatorError.negativesNotAllowed(negatives)
        }

        return values.reduce(0, +)
    }
}

