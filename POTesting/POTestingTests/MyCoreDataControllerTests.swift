//
//  MyCoreDataControllerTests.swift
//  POTesting
//
//  Created by Carsten Könemann on 24.04.2017.
//  Copyright © 2017 Carsten Könemann. All rights reserved.
//

import CoreData
import XCTest
@testable import POTesting

class MyCoreDataModelMock: MyCoreDataModelProtocol {
    
    var foobar: Bool {
        return true
    }
    
}

class MyCoreDataControllerTests: XCTestCase {
    
    func testExample01() {
        let coreDataModel = MyCoreDataModel()
        coreDataModel.foobar = true
        XCTAssertEqual(MyCoreDataController.doSomething(with: coreDataModel), "yay")
        // failed: caught "NSInvalidArgumentException", "-[MyCoreDataModel setFoobar:]: unrecognized selector sent to instance ..."
    }
    
    func testExample02() {
        XCTAssertEqual(MyCoreDataController.doSomething(with: MyCoreDataModelMock()), "yay")
    }
    
}
