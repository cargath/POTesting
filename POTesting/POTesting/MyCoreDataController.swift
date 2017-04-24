//
//  MyCoreDataController.swift
//  POTesting
//
//  Created by Carsten Könemann on 24.04.2017.
//  Copyright © 2017 Carsten Könemann. All rights reserved.
//

import CoreData

class MyCoreDataController {
    
    static func doSomething(with model: MyCoreDataModelProtocol) -> String {
        if model.foobar == true {
            return "yay"
        } else {
            return "nay"
        }
    }
    
}
