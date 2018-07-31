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
    
    var manager = CLLocationManager()
    
    var updatingLocation: Bool = false
    
    func simulateLocation(location: CLLocation) {
            
        // Simulate current location update
        if updatingLocation {
            delegate?.locationManager?(manager, didUpdateLocations: [location])
        }
        
        // Simulate region monitoring
        for region in monitoredRegions {
            if let circularRegion = region as? CLCircularRegion, circularRegion.contains(location.coordinate) {
                delegate?.locationManager?(manager, didEnterRegion: region)
            }
        }
    }
    
    // MARK: CLLocationManagerProtocol
    
    var delegate: CLLocationManagerDelegate?
    
    var monitoredRegions: Set<CLRegion> = Set<CLRegion>()
    
    func startUpdatingLocation() {
        updatingLocation = true
    }
    
    func stopUpdatingLocation() {
        updatingLocation = false
    }
    
    func stopMonitoring(for region: CLRegion) {
        monitoredRegions.remove(region)
    }
    
    func startMonitoring(for region: CLRegion) {
        monitoredRegions.insert(region)
    }
    
}

class MyCoreLocationControllerTests: XCTestCase {
    
    func testExample01() {
        
        let controller = MyCoreLocationController()
        let mockLocationManager = CLLocationManagerMock()
        controller.locationManager = mockLocationManager
        
        mockLocationManager.simulateLocation(location: CLLocation(latitude: 1, longitude: 1))
        XCTAssertFalse(controller.didVisitRegion)
        
        mockLocationManager.simulateLocation(location: CLLocation(latitude: 0, longitude: 0))
        XCTAssertTrue(controller.didVisitRegion)
    }
    
}
