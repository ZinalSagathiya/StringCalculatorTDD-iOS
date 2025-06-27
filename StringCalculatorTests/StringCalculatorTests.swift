//
//  StringCalculatorTests.swift
//  StringCalculatorTests
//
//  Created by Zinal on 26/06/25.
//

import XCTest
@testable import StringCalculator

final class StringCalculatorTests: XCTestCase {

    var calculator: StringCalculator!

       override func setUp() {
           super.setUp()
           calculator = StringCalculator()
       }

       func testEmptyStringReturnsZero() {
           XCTAssertEqual(calculator.add(""), 0)
       }
}
