//
//  CoreTests.swift
//  CoreTests
//
//  Created by kai on 2020/04/22.
//  Copyright © 2020 kai. All rights reserved.
//

import XCTest
@testable import Core

class CoreTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test1() throws {
        let p = Playground1()
        p.test1()
    }
}
