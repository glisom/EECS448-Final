//
//  Classes.swift
//  ScheduleCheck
//
//  Created by Grant Isom on 12/13/14.
//  Copyright (c) 2014 Grant Isom. All rights reserved.
//

import UIKit
import CoreData

//Represents what a class is made of inside Core Data

@objc(Class)
class Class: NSManagedObject {
    @NSManaged var classname:String
    @NSManaged var startTime:Int
    @NSManaged var endTime:Int
    @NSManaged var monday:Boolean
    @NSManaged var tuesday:Boolean
    @NSManaged var wednesday:Boolean
    @NSManaged var thursday:Boolean
    @NSManaged var friday: Boolean
     
    
}

