//
//  MyCoreLocationController.swift
//  POTesting
//
//  Created by Carsten Könemann on 24.04.2017.
//  Copyright © 2017 Carsten Könemann. All rights reserved.
//

import CoreLocation

class MyCoreLocationController: NSObject, CLLocationManagerDelegate {
    
    var locationManager: CLLocationManagerProtocol? {
        didSet {
            locationManager?.delegate = self
            locationManager?.startMonitoring(for: CLCircularRegion(center: CLLocationCoordinate2D(latitude: 0, longitude: 0), radius: 5, identifier: "foo"))
        }
    }
    
    // MARK: CLLocationManagerDelegate
    
    var didVisitRegion = false
    
    func locationManager(_ manager: CLLocationManager, didEnterRegion region: CLRegion) {
        self.didVisitRegion = true
    }
    
}
