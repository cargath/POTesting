//
//  MyController.swift
//  POTesting
//
//  Created by Carsten Könemann on 24.04.2017.
//  Copyright © 2017 Carsten Könemann. All rights reserved.
//

class MyController {
    
    static func doSomething(with model: MyModelProtocol) -> String {
        if model.foobar == true {
            return "yay"
        } else {
            return "nay"
        }
    }
    
}
