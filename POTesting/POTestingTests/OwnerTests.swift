//
//  OwnerTests.swift
//  POTesting
//
//  Created by Carsten Könemann on 27.04.2017.
//  Copyright © 2017 Carsten Könemann. All rights reserved.
//

import XCTest
@testable import POTesting

class MockPet: Pet {
    
    var feedCallCount: Int = 0
    
    func feed() {
        feedCallCount += 1
    }
    
}

class OwnerTests: XCTestCase {
    
    func testBeResponsible() {
        let pet = MockPet()
        let owner = Owner(pet: pet)
        owner.beResponsible()
        XCTAssert(pet.feedCallCount == 1)
    }
    
}
