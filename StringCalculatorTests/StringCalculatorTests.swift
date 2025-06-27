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
    
       func testSingleNumberReturnsValue() {
           XCTAssertEqual(calculator.add("5"), 5)
       }
    
       func testTwoNumbersReturnsSum() {
           XCTAssertEqual(calculator.add("1,2"), 3)
       }
           
       func testNewlineAsSeparator() {
           XCTAssertEqual(calculator.add("1\n2,3"), 6)
        }

}
