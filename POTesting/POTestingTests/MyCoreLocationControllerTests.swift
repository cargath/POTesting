//
//  MyCoreLocationControllerTests.swift
//  POTesting
//
//  Created by Carsten Könemann on 24.04.2017.
//  Copyright © 2017 Carsten Könemann. All rights reserved.
//

import CoreLocation
import XCTest
@testable import POTesting

class CLLocationManagerMock: CLLocationManagerProtocol {
    
    var manager: CLLocationManager
    var delegate: CLLocationManagerDelegate?
    
    init() {
        self.manager = CLLocationManager()
    }
    
    func startMonitoring(for region: CLRegion) {
        if let delegate = self.delegate {
            delegate.locationManager?(manager, didEnterRegion: CLRegion())
        }
    }
    
}

class MyCoreLocationControllerTests: XCTestCase {
    
    func testExample01() {
        let controller = MyCoreLocationController()
        XCTAssertFalse(controller.didVisitRegion)
        controller.locationManager = CLLocationManagerMock()
        XCTAssertTrue(controller.didVisitRegion)
    }
    
}
