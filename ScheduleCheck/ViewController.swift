//
//  ViewController.swift
//  ScheduleCheck
//
//  Created by Grant Isom on 12/10/14.
//  Copyright (c) 2014 Grant Isom. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var className: UITextField!
    
    @IBOutlet weak var startTime1: UITextField!
    
    @IBOutlet weak var endTime1: UITextField!
    
    @IBOutlet weak var createButton: UIButton!
    @IBOutlet weak var doneButton: UIButton!
    
    @IBOutlet weak var monSwitch: UISwitch!
    @IBOutlet weak var tuesSwitch: UISwitch!
    @IBOutlet weak var wedSwtich: UISwitch!
    @IBOutlet weak var thursSwitch: UISwitch!
    @IBOutlet weak var friSwitch: UISwitch!
    
    @IBAction func createClicked(sender: AnyObject) {
        
        let appDel:AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        let context:NSManagedObjectContext = appDel.managedObjectContext!
        
        let ent = NSEntityDescription.entityForName("Classes", inManagedObjectContext: context)
        
        var newClass = Class(entity: ent!, insertIntoManagedObjectContext: context)
        newClass.classname = className.text
        newClass.startTime = startTime1.text.toInt()!
        newClass.endTime = endTime1.text.toInt()!
        
        if monSwitch.on {
            newClass.monday = 1;
        } else {
            newClass.monday = 0;
        }
        
        if tuesSwitch.on {
            newClass.tuesday = 1;
        } else {
            newClass.tuesday = 0;
        }
        
        if wedSwtich.on {
            newClass.wednesday = 1;
        } else {
            newClass.wednesday = 0;
        }
        
        if thursSwitch.on {
            newClass.thursday = 1;
        } else {
            newClass.thursday = 0;
        }
        
        if friSwitch.on {
            newClass.friday = 1;
        } else {
            newClass.friday = 0;
        }
        
        context.save(nil)
        
        
        println(newClass)
        println("Obj saved")
        
        className.text = nil
        startTime1.text = nil
        endTime1.text = nil
        
        monSwitch.on = false
        tuesSwitch.on = false
        wedSwtich.on = false
        thursSwitch.on = false
        friSwitch.on = false
        
    }
    
    @IBAction func doneClicked(sender: AnyObject) {
        let appDel:AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        let context:NSManagedObjectContext = appDel.managedObjectContext!
        
        let request = NSFetchRequest(entityName: "Class")
        request.returnsObjectsAsFaults = false;
        
        request.predicate = NSPredicate(format: "classname = %@", className.text)
        
        var results:NSArray = context.executeFetchRequest(request, error: nil)!
        
        if results.count > 0 {
            for name in results {
                var thisClassName = name as Class
                println("the class name is \(thisClassName.classname) and it starts at \(thisClassName.startTime) and ends at \(thisClassName.endTime)")
                if thisClassName.monday == 1 {
                    println("And it is on monday")
                }
            }
            
            println("\(results.count) found")
        } else {
            println ("No Results found")
        }
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        textField.resignFirstResponder()
        self.view.endEditing(true);
        return true;
    }
    

}

