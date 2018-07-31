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
    
    func validateFeedCallCount() {
        XCTAssert(feedCallCount > 0)
        XCTAssert(feedCallCount < 10)
    }
    
}

class OwnerTests: XCTestCase {
    
    func testBeResponsible() {
        let pet = MockPet()
        let owner = Owner(pet: pet)
        owner.beResponsible()
        XCTAssert(pet.feedCallCount > 0)
        XCTAssert(pet.feedCallCount < 10)
    }
    
    func testBeResponsibleImproved() {
        let pet = MockPet()
        let owner = Owner(pet: pet)
        owner.beResponsible()
        pet.validateFeedCallCount()
    }
    
}
