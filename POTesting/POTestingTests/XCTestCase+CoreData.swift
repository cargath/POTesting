//
//  XCTestCase+CoreData.swift
//  POTesting
//
//  Created by Carsten Könemann on 04.05.2017.
//  Copyright © 2017 Carsten Könemann. All rights reserved.
//

import CoreData
import XCTest

extension XCTestCase {
    
    /// @see http://stackoverflow.com/a/39317100/1028701
    func setUpInMemoryManagedObjectContext() -> NSManagedObjectContext {
        
        let managedObjectModel = NSManagedObjectModel.mergedModel(from: [Bundle.main])!
        
        let persistentStoreCoordinator = NSPersistentStoreCoordinator(managedObjectModel: managedObjectModel)
        do {
            try persistentStoreCoordinator.addPersistentStore(ofType: NSInMemoryStoreType, configurationName: nil, at: nil, options: nil)
        } catch {
            print("Adding in-memory persistent store failed")
        }
        
        let managedObjectContext = NSManagedObjectContext(concurrencyType:.privateQueueConcurrencyType)
        managedObjectContext.persistentStoreCoordinator = persistentStoreCoordinator
        
        return managedObjectContext
    }
    
}
