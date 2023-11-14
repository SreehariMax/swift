//
//  ManagerTeacher+CoreDataProperties.swift
//  coredataproject
//
//  Created by SREEHARI MOHAN on 28/10/23.
//
//

import Foundation
import CoreData


extension ManagerTeacher {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ManagerTeacher> {
        return NSFetchRequest<ManagerTeacher>(entityName: "ManagerTeacher")
    }

    @NSManaged public var updatedTime: Date?
    @NSManaged public var department: String?
    @NSManaged public var student: ManagerStudent?

}

extension ManagerTeacher : Identifiable {

}
