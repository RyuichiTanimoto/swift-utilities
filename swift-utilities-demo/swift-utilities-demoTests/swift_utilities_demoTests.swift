//
//  swift_utilities_demoTests.swift
//  swift-utilities-demoTests
//
//  Created by Ryuichi Tanimoto on 11/19/16.
//  Copyright © 2016 RyuichiTanimoto. All rights reserved.
//

import XCTest
@testable import swift_utilities_demo
import swift_utilities

class swift_utilities_demoTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_forEach() {
        let opt_int: Int? = 3
        opt_int.forEach {
            XCTAssertEqual($0 * $0, 9)
        }
        let opt_int_nil: Int? = nil
        opt_int_nil.forEach {_ in 
            XCTFail()
        }
    }
    
}
