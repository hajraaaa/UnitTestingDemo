//
//  DemoUnitTestingTests.swift
//  DemoUnitTestingTests
//
//  Created by Hajra Masood on 03/07/2025.
//

import Testing
import DemoUnitTesting
@testable import DemoUnitTesting

struct DemoUnitTestingTests {

    @Test func example() async throws {
        // Write your test here and use APIs like `#expect(...)` to check expected conditions.
        func testUpdateTextReturnsCorrectValue() {
                let viewModel = TextUpdater()
                let result = viewModel.updateText()
                print("Result from view model: \(result)")
//                XCTAssertEqual(result, "Text Updated!", "Expected 'Text Updated!' but got \(result)")
            
            }
    }

}
