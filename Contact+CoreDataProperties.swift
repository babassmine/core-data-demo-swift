//
//  Contact+CoreDataProperties.swift
//  CoreDataDemo
//
//  Created by Abass Sesay on 11/15/15.
//  Copyright © 2015 Abass Sesay. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Contact {

    @NSManaged var name: String?
    @NSManaged var address: String?
    @NSManaged var phone: String?
    @NSManaged var status: String?

}
