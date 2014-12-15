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

        let appDel:AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        let context:NSManagedObjectContext = appDel.managedObjectContext!
        
        let request = NSFetchRequest(entityName: "Class")
        request.returnsObjectsAsFaults = false;
        
        //request.predicate = NSPredicate(format: "classname = %@", className.text)
        
        var results:NSArray = context.executeFetchRequest(request, error: nil)!
        
        if results.count > 0 {
            for name in results {
                var thisClassName = name as Class
                //println("the class name is \(thisClassName.classname) and it starts at \(thisClassName.startTime) and ends at \(thisClassName.endTime)")
                if thisClassName.monday == 1 {
                    switch thisClassName.startTime {
                    case 8:
                        Mon8.text = thisClassName.classname
                        Mon8.backgroundColor = classColor
                        
                    case 9:
                        Mon9.text = thisClassName.classname
                        Mon9.backgroundColor = classColor
                    case 10:
                        Mon10.text = thisClassName.classname
                        Mon10.backgroundColor = classColor
                        
                    case 11:
                        Mon11.text = thisClassName.classname
                        Mon11.backgroundColor = classColor
                        
                    case 12:
                        Mon12.text = thisClassName.classname
                        Mon12.backgroundColor = classColor
                        
                    case 1:
                        Mon1.text = thisClassName.classname
                        Mon1.backgroundColor = classColor
                        
                    case 2:
                        Mon2.text = thisClassName.classname
                        Mon2.backgroundColor = classColor
                        
                    case 3:
                        Mon3.text = thisClassName.classname
                        Mon3.backgroundColor = classColor
                        
                    case 4:
                        Mon4.text = thisClassName.classname
                        Mon4.backgroundColor = classColor
                        
                    case 5:
                        Mon5.text = thisClassName.classname
                        Mon5.backgroundColor = classColor
                        
                    default:
                        break;
                    }
                }
                
                if thisClassName.tuesday == 1 {
                    switch thisClassName.startTime {
                    case 8:
                        Tues8.text = thisClassName.classname
                        Tues8.backgroundColor = classColor
                        
                    case 9:
                        Tues9.text = thisClassName.classname
                        Tues9.backgroundColor = classColor
                    case 10:
                        Tues10.text = thisClassName.classname
                        Tues10.backgroundColor = classColor
                        
                    case 11:
                        Tues11.text = thisClassName.classname
                        Tues11.backgroundColor = classColor
                        
                    case 12:
                        Tues12.text = thisClassName.classname
                        Tues12.backgroundColor = classColor
                        
                    case 1:
                        Tues1.text = thisClassName.classname
                        Tues1.backgroundColor = classColor
                        
                    case 2:
                        Tues2.text = thisClassName.classname
                        Tues2.backgroundColor = classColor
                        
                    case 3:
                        Tues3.text = thisClassName.classname
                        Tues3.backgroundColor = classColor
                        
                    case 4:
                        Tues4.text = thisClassName.classname
                        Tues4.backgroundColor = classColor
                        
                    case 5:
                        Tues5.text = thisClassName.classname
                        Tues5.backgroundColor = classColor
                        
                    default:
                        break;
                    }
                }
                
                if thisClassName.wednesday == 1 {
                    switch thisClassName.startTime {
                    case 8:
                        Wed8.text = thisClassName.classname
                        Wed8.backgroundColor = classColor
                        
                    case 9:
                        Wed9.text = thisClassName.classname
                        Wed9.backgroundColor = classColor
                    case 10:
                        Wed10.text = thisClassName.classname
                        Wed10.backgroundColor = classColor
                        
                    case 11:
                        Wed11.text = thisClassName.classname
                        Wed11.backgroundColor = classColor
                        
                    case 12:
                        Wed12.text = thisClassName.classname
                        Wed12.backgroundColor = classColor
                        
                    case 1:
                        Wed1.text = thisClassName.classname
                        Wed1.backgroundColor = classColor
                        
                    case 2:
                        Wed2.text = thisClassName.classname
                        Wed2.backgroundColor = classColor
                        
                    case 3:
                        Wed3.text = thisClassName.classname
                        Wed3.backgroundColor = classColor
                        
                    case 4:
                        Wed4.text = thisClassName.classname
                        Wed4.backgroundColor = classColor
                        
                    case 5:
                        Wed5.text = thisClassName.classname
                        Wed5.backgroundColor = classColor
                        
                    default:
                        break;
                    }
                }
                
                if thisClassName.thursday == 1 {
                    switch thisClassName.startTime {
                    case 8:
                        Thurs8.text = thisClassName.classname
                        Thurs8.backgroundColor = classColor
                        
                    case 9:
                        Thurs9.text = thisClassName.classname
                        Thurs9.backgroundColor = classColor
                    case 10:
                        Thurs10.text = thisClassName.classname
                        Thurs10.backgroundColor = classColor
                        
                    case 11:
                        Thurs11.text = thisClassName.classname
                        Thurs11.backgroundColor = classColor
                        
                    case 12:
                        Thurs12.text = thisClassName.classname
                        Thurs12.backgroundColor = classColor
                        
                    case 1:
                        Thurs1.text = thisClassName.classname
                        Thurs1.backgroundColor = classColor
                        
                    case 2:
                        Thurs2.text = thisClassName.classname
                        Thurs2.backgroundColor = classColor
                        
                    case 3:
                        Thurs3.text = thisClassName.classname
                        Thurs3.backgroundColor = classColor
                        
                    case 4:
                        Thurs4.text = thisClassName.classname
                        Thurs4.backgroundColor = classColor
                        
                    case 5:
                        Thurs5.text = thisClassName.classname
                        Thurs5.backgroundColor = classColor
                        
                    default:
                        break;
                    }
                }
                
                if thisClassName.friday == 1 {
                    switch thisClassName.startTime {
                    case 8:
                        Fri8.text = thisClassName.classname
                        Fri8.backgroundColor = classColor
                        
                    case 9:
                        Fri9.text = thisClassName.classname
                        Fri9.backgroundColor = classColor
                    case 10:
                        Fri10.text = thisClassName.classname
                        Fri10.backgroundColor = classColor
                        
                    case 11:
                        Fri11.text = thisClassName.classname
                        Fri11.backgroundColor = classColor
                        
                    case 12:
                        Fri12.text = thisClassName.classname
                        Fri12.backgroundColor = classColor
                        
                    case 1:
                        Fri1.text = thisClassName.classname
                        Fri1.backgroundColor = classColor
                        
                    case 2:
                        Fri2.text = thisClassName.classname
                        Fri2.backgroundColor = classColor
                        
                    case 3:
                        Fri3.text = thisClassName.classname
                        Fri3.backgroundColor = classColor
                        
                    case 4:
                        Fri4.text = thisClassName.classname
                        Fri4.backgroundColor = classColor
                        
                    case 5:
                        Fri5.text = thisClassName.classname
                        Fri5.backgroundColor = classColor
                        
                    default:
                        break;
                    }
                }
            }
            
            println("\(results.count) found")
        } else {
            println ("No Results found")
        }

        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
