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
        return Int(numbers) ?? 0
    }
}

