//
//  ScheduleViewController.swift
//  ScheduleCheck
//
//  Created by Grant Isom on 12/13/14.
//  Copyright (c) 2014 Grant Isom. All rights reserved.
//

import UIKit
import CoreData



class ScheduleViewController: UIViewController {
    
    var classColor = UIColor(red: 0.42, green: 1, blue: 0.49, alpha: 1.00)
    var currSchedule:[studentClass] = []
    var entName = "Class"
    
    @IBOutlet var Mon8:UILabel!
    @IBOutlet var Mon9:UILabel!
    @IBOutlet var Mon10:UILabel!
    @IBOutlet var Mon11:UILabel!
    @IBOutlet var Mon12:UILabel!
    @IBOutlet var Mon1:UILabel!
    @IBOutlet var Mon2:UILabel!
    @IBOutlet var Mon3:UILabel!
    @IBOutlet var Mon4:UILabel!
    @IBOutlet var Mon5:UILabel!
    
    @IBOutlet var Tues8:UILabel!
    @IBOutlet var Tues9:UILabel!
    @IBOutlet var Tues10:UILabel!
    @IBOutlet var Tues11:UILabel!
    @IBOutlet var Tues12:UILabel!
    @IBOutlet var Tues1:UILabel!
    @IBOutlet var Tues2:UILabel!
    @IBOutlet var Tues3:UILabel!
    @IBOutlet var Tues4:UILabel!
    @IBOutlet var Tues5:UILabel!
    
    @IBOutlet var Wed8:UILabel!
    @IBOutlet var Wed9:UILabel!
    @IBOutlet var Wed10:UILabel!
    @IBOutlet var Wed11:UILabel!
    @IBOutlet var Wed12:UILabel!
    @IBOutlet var Wed1:UILabel!
    @IBOutlet var Wed2:UILabel!
    @IBOutlet var Wed3:UILabel!
    @IBOutlet var Wed4:UILabel!
    @IBOutlet var Wed5:UILabel!
    
    @IBOutlet var Thurs8:UILabel!
    @IBOutlet var Thurs9:UILabel!
    @IBOutlet var Thurs10:UILabel!
    @IBOutlet var Thurs11:UILabel!
    @IBOutlet var Thurs12:UILabel!
    @IBOutlet var Thurs1:UILabel!
    @IBOutlet var Thurs2:UILabel!
    @IBOutlet var Thurs3:UILabel!
    @IBOutlet var Thurs4:UILabel!
    @IBOutlet var Thurs5:UILabel!
    
    @IBOutlet var Fri8:UILabel!
    @IBOutlet var Fri9:UILabel!
    @IBOutlet var Fri10:UILabel!
    @IBOutlet var Fri11:UILabel!
    @IBOutlet var Fri12:UILabel!
    @IBOutlet var Fri1:UILabel!
    @IBOutlet var Fri2:UILabel!
    @IBOutlet var Fri3:UILabel!
    @IBOutlet var Fri4:UILabel!
    @IBOutlet var Fri5:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if currSchedule.count > 0 {
            for currClass in currSchedule {
                if currClass.timesOffered[0].days1[0] == true {
                    switch currClass.timesOffered[0].startTime1 {
                    case 8:
                        Mon8.text = currClass.className
                        Mon8.backgroundColor = classColor
                        
                    case 9:
                        Mon9.text = currClass.className
                        Mon9.backgroundColor = classColor
                    case 10:
                        Mon10.text = currClass.className
                        Mon10.backgroundColor = classColor
                        
                    case 11:
                        Mon11.text = currClass.className
                        Mon11.backgroundColor = classColor
                        
                    case 12:
                        Mon12.text = currClass.className
                        Mon12.backgroundColor = classColor
                        
                    case 1:
                        Mon1.text = currClass.className
                        Mon1.backgroundColor = classColor
                        
                    case 2:
                        Mon2.text = currClass.className
                        Mon2.backgroundColor = classColor
                        
                    case 3:
                        Mon3.text = currClass.className
                        Mon3.backgroundColor = classColor
                        
                    case 4:
                        Mon4.text = currClass.className
                        Mon4.backgroundColor = classColor
                        
                    case 5:
                        Mon5.text = currClass.className
                        Mon5.backgroundColor = classColor
                        
                    default:
                        break;
                    }
                }
                if currClass.timesOffered[0].days1[1] == true {
                    switch currClass.timesOffered[0].startTime1 {
                        
                    case 8:
                        Tues8.text = currClass.className
                        Tues8.backgroundColor = classColor
                        
                    case 9:
                        Tues9.text = currClass.className
                        Tues9.backgroundColor = classColor
                        
                    case 10:
                        Tues10.text = currClass.className
                        Tues10.backgroundColor = classColor
                        
                    case 11:
                        Tues11.text = currClass.className
                        Tues11.backgroundColor = classColor
                        
                    case 12:
                        Tues12.text = currClass.className
                        Tues12.backgroundColor = classColor
                        
                    case 1:
                        Tues1.text = currClass.className
                        Tues1.backgroundColor = classColor
                        
                    case 2:
                        Tues2.text = currClass.className
                        Tues2.backgroundColor = classColor
                        
                    case 3:
                        Tues3.text = currClass.className
                        Tues3.backgroundColor = classColor
                        
                    case 4:
                        Tues4.text = currClass.className
                        Tues4.backgroundColor = classColor
                        
                    case 5:
                        Tues5.text = currClass.className
                        Tues5.backgroundColor = classColor
                        
                    default:
                        break;
                    }
                }
                
                if currClass.timesOffered[0].days1[2] == true {
                    switch currClass.timesOffered[0].startTime1 {
                        
                    case 8:
                        Wed8.text = currClass.className
                        Wed8.backgroundColor = classColor
                        
                    case 9:
                        Wed9.text = currClass.className
                        Wed9.backgroundColor = classColor
                        
                    case 10:
                        Wed10.text = currClass.className
                        Wed10.backgroundColor = classColor
                        
                    case 11:
                        Wed11.text = currClass.className
                        Wed11.backgroundColor = classColor
                        
                    case 12:
                        Wed12.text = currClass.className
                        Wed12.backgroundColor = classColor
                        
                    case 1:
                        Wed1.text = currClass.className
                        Wed1.backgroundColor = classColor
                        
                    case 2:
                        Wed2.text = currClass.className
                        Wed2.backgroundColor = classColor
                        
                    case 3:
                        Wed3.text = currClass.className
                        Wed3.backgroundColor = classColor
                        
                    case 4:
                        Wed4.text = currClass.className
                        Wed4.backgroundColor = classColor
                        
                    case 5:
                        Wed5.text = currClass.className
                        Wed5.backgroundColor = classColor
                        
                    default:
                        break;
                    }
                }
                
                if currClass.timesOffered[0].days1[3] == true {
                    switch currClass.timesOffered[0].startTime1 {
                    case 8:
                        Thurs8.text = currClass.className
                        Thurs8.backgroundColor = classColor
                        
                    case 9:
                        Thurs9.text = currClass.className
                        Thurs9.backgroundColor = classColor
                        
                    case 10:
                        Thurs10.text = currClass.className
                        Thurs10.backgroundColor = classColor
                        
                    case 11:
                        Thurs11.text = currClass.className
                        Thurs11.backgroundColor = classColor
                        
                    case 12:
                        Thurs12.text = currClass.className
                        Thurs12.backgroundColor = classColor
                        
                    case 1:
                        Thurs1.text = currClass.className
                        Thurs1.backgroundColor = classColor
                        
                    case 2:
                        Thurs2.text = currClass.className
                        Thurs2.backgroundColor = classColor
                        
                    case 3:
                        Thurs3.text = currClass.className
                        Thurs3.backgroundColor = classColor
                        
                    case 4:
                        Thurs4.text = currClass.className
                        Thurs4.backgroundColor = classColor
                        
                    case 5:
                        Thurs5.text = currClass.className
                        Thurs5.backgroundColor = classColor
                        
                    default:
                        break;
                    }
                }
                
                if currClass.timesOffered[0].days1[4] == true {
                    switch currClass.timesOffered[0].startTime1 {
                    case 8:
                        Fri8.text = currClass.className
                        Fri8.backgroundColor = classColor
                        
                    case 9:
                        Fri9.text = currClass.className
                        Fri9.backgroundColor = classColor
                        
                    case 10:
                        Fri10.text = currClass.className
                        Fri10.backgroundColor = classColor
                        
                    case 11:
                        Fri11.text = currClass.className
                        Fri11.backgroundColor = classColor
                        
                    case 12:
                        Fri12.text = currClass.className
                        Fri12.backgroundColor = classColor
                        
                    case 1:
                        Fri1.text = currClass.className
                        Fri1.backgroundColor = classColor
                        
                    case 2:
                        Fri2.text = currClass.className
                        Fri2.backgroundColor = classColor
                        
                    case 3:
                        Fri3.text = currClass.className
                        Fri3.backgroundColor = classColor
                        
                    case 4:
                        Fri4.text = currClass.className
                        Fri4.backgroundColor = classColor
                        
                    case 5:
                        Fri5.text = currClass.className
                        Fri5.backgroundColor = classColor
                        
                    default:
                        break;
                    }
                }
            }
        }
    }

    
    @IBAction func saveButton(sender:AnyObject) {
        var saveSpot = multiSave()
        
        switch saveSpot {
        case 1:
            entName = "Class"
            
        case 2:
            entName = "Class2"
            
        case 3:
            entName = "Class3"
            
        case 4:
            entName = "Error"
            
        default:
            break;
        }
        
        for currClass in currSchedule {
        
            let appDel:AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate
            let context:NSManagedObjectContext = appDel.managedObjectContext!
            
            let ent = NSEntityDescription.entityForName(entName, inManagedObjectContext: context)
            
            var newClass = Class(entity: ent!, insertIntoManagedObjectContext: context)
            newClass.classname = currClass.className!
            newClass.startTime = currClass.timesOffered[0].startTime1
            newClass.endTime = currClass.timesOffered[0].endTime1
            if currClass.timesOffered[0].days1[0] == true {
                newClass.monday = 1
            } else {
                newClass.monday = 0
            }
            if currClass.timesOffered[0].days1[1] == true {
                newClass.tuesday = 1
            } else {
                newClass.tuesday = 0
            }
            if currClass.timesOffered[0].days1[2] == true {
                newClass.wednesday = 1
            } else {
                newClass.wednesday = 0
            }
            if currClass.timesOffered[0].days1[3] == true {
                newClass.thursday = 1
            } else {
                newClass.thursday = 0
            }
            if currClass.timesOffered[0].days1[4] == true {
                newClass.friday = 1
            } else {
                newClass.friday = 0
            }
            
            context.save(nil)
            
            println(newClass)
            println("Obj saved")
        }
        
    }
    
    func multiSave() -> Int {
        let appDeli:AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        var contexti:NSManagedObjectContext = appDeli.managedObjectContext!
        var requesti = NSFetchRequest(entityName: "Class")
        requesti.returnsObjectsAsFaults = false;
        var results:NSArray = contexti.executeFetchRequest(requesti, error: nil)!
        
        let appDeli2:AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        var contexti2:NSManagedObjectContext = appDeli2.managedObjectContext!
        var requesti2 = NSFetchRequest(entityName: "Class2")
        requesti2.returnsObjectsAsFaults = false;
        var results2:NSArray = contexti2.executeFetchRequest(requesti2, error: nil)!
        
        let appDeli3:AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        var contexti3:NSManagedObjectContext = appDeli3.managedObjectContext!
        var requesti3 = NSFetchRequest(entityName: "Class3")
        requesti3.returnsObjectsAsFaults = false;
        var results3:NSArray = contexti.executeFetchRequest(requesti, error: nil)!
        
        if results.count == 0 {
            return 1
        } else if results2.count == 0 {
            return 2
        } else if results3.count == 0 {
            return 3
        } else {
            return 4
        }
        
        
            
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
