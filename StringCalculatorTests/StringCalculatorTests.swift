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
           XCTAssertEqual(calculator.add("1,2\n,4,5"), 12)
        }
    
       func testCustomDelimiter() {
           XCTAssertEqual(calculator.add("//;\n1;2"), 3)
        }
    
       func testNegativeNumberThrows() {
           XCTAssertThrowsError(try calculator.addWithError("-1,2")) { error in
           XCTAssertEqual(error.localizedDescription, "negative numbers not allowed: -1")
         }
       }

       func testMultipleNegativeNumbers() {
            XCTAssertThrowsError(try calculator.addWithError("-1,-2,3")) { error in
            XCTAssertEqual(error.localizedDescription, "negative numbers not allowed: -1,-2")
          }
       }

}
