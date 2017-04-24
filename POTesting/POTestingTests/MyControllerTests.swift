//
//  MyControllerTests.swift
//  POTesting
//
//  Created by Carsten Könemann on 24.04.2017.
//  Copyright © 2017 Carsten Könemann. All rights reserved.
//

import XCTest
@testable import POTesting

class MyMockModel: MyModelProtocol {
    
    var foobar: Bool {
        return true
    }
    
}

class MyControllerTests: XCTestCase {
    
    func testExample() {
        XCTAssertEqual(MyController.doSomething(with: MyMockModel()), "yay")
    }
    
}
