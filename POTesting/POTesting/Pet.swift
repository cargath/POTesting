//
//  Pet.swift
//  POTesting
//
//  Created by Carsten Könemann on 27.04.2017.
//  Copyright © 2017 Carsten Könemann. All rights reserved.
//

protocol Pet {
    
    func feed()

}

// MARK: - Cat

class Cat: Pet {
    
    func feed() {
        print("miau")
    }

}

// MARK: - Dog

class Dog: Pet {
    
    func feed() {
        print("wuff")
    }
    
}

// MARK: - Fish

class Fish: Pet {
    
    var mealsCount: Int = 0
    
    func die() {
        print("blub")
    }
    
    func feed() {
        mealsCount += 1;
        if mealsCount > 9 {
            die()
        }
    }
    
}
