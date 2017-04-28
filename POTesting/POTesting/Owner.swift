//
//  Owner.swift
//  POTesting
//
//  Created by Carsten Könemann on 27.04.2017.
//  Copyright © 2017 Carsten Könemann. All rights reserved.
//

class Owner {
    
    var pet: Pet
    
    init(pet: Pet) {
        self.pet = pet
    }
    
    func beResponsible() {
        pet.feed()
    }
    
}
