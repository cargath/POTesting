//
//  MyCoreLocationController.swift
//  POTesting
//
//  Created by Carsten Könemann on 24.04.2017.
//  Copyright © 2017 Carsten Könemann. All rights reserved.
//

import CoreLocation

// MARK: - CLLocationManagerProtocol

protocol CLLocationManagerProtocol {
    
    var delegate: CLLocationManagerDelegate? { get set }
    
    func startMonitoring(for region: CLRegion)
    
}

extension CLLocationManager: CLLocationManagerProtocol {
    //
}

// MARK: - MyCoreLocationController

class MyCoreLocationController: NSObject {
    
    var locationManager: CLLocationManagerProtocol? {
        didSet {
            guard var locationManager = locationManager else {
                return
            }
            locationManager.delegate = self
            locationManager.startMonitoring(for: CLRegion())
        }
    }
    
    var didVisitRegion = false
    
}

// MARK: - CLLocationManagerDelegate

extension MyCoreLocationController: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didEnterRegion region: CLRegion) {
        self.didVisitRegion = true
    }
    
}
