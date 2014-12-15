// Playground - noun: a place where people can play

import UIKit
import CoreData

class studentClass {
    
    init(name:String, start:int, end:Int, days:[Bool]) {
        className = name
        let cTime = classTime(start: start,end: end,days: days)
        timesOffered?.append(cTime)
    }
    
    func addTime(start:Int, end:Int, days:[Bool]) -> Bool {
        if timesOffered?.count < 3 {
            let cTime = classTime(start: start, end: end, days: days)
            timesOffered?.append(cTime)
            return true
        } else {
            return false
        }
        
        
    }
    var className:String?
    var timesOffered:[classTime]?
    
    
}

class classTime {
    
    init(start:Int, end:Int, days:[Bool]) {
        startTime1 = start
        endTime1 = end
        days1 = days
    }
    
    var startTime1:Int?
    
    var endTime1:Int?
    
    var days1:Array<Bool>?
}

var name:String = "EECS_388"



let EECS_388 = studentClass(name, 8, 9, [1,0,1,0,1])

println("The class name is \(EECS_388.className)")


