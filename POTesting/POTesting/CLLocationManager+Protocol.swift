//
//  CLLocationManager+Protocol.swift
//  POTesting
//
//  Created by Carsten Könemann on 28.04.2017.
//  Copyright © 2017 Carsten Könemann. All rights reserved.
//

import CoreLocation
import Foundation

protocol CLLocationManagerProtocol {
    
    var delegate: CLLocationManagerDelegate? { get set }
    
    var monitoredRegions: Set<CLRegion> { get }
    
    func startUpdatingLocation()
    
    func stopUpdatingLocation()
    
    func stopMonitoring(for region: CLRegion)
    
    func startMonitoring(for region: CLRegion)
    
}

extension CLLocationManager: CLLocationManagerProtocol {
    //
}
