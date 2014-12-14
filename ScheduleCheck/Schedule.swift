//
//  Schedule.swift
//  ScheduleCheck
//
//  Created by Grant Isom on 12/14/14.
//  Copyright (c) 2014 Grant Isom. All rights reserved.
//

import UIKit
import CoreData

@objc(Schedule)
class Schedule: NSManagedObject {
    @NSManaged var schedulename:String
    @NSManaged var myClasses:Array<Class>
}
