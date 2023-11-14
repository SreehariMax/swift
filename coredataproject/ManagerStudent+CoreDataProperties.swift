//
//  ManagerStudent+CoreDataProperties.swift
//  coredataproject
//
//  Created by SREEHARI MOHAN on 28/10/23.
//
//

import Foundation
import CoreData


extension ManagerStudent {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ManagerStudent> {
        return NSFetchRequest<ManagerStudent>(entityName: "ManagerStudent")
    }

    @NSManaged public var name: String?

}

extension ManagerStudent : Identifiable {

}
