//
//  MyModel.swift
//  POTesting
//
//  Created by Carsten Könemann on 24.04.2017.
//  Copyright © 2017 Carsten Könemann. All rights reserved.
//

protocol MyModelProtocol {
    
    var foobar: Bool { get }
    
}

class MyModel: MyModelProtocol {
    
    var foobar: Bool
    
    init(foobar: Bool) {
        self.foobar = foobar
    }
    
}
