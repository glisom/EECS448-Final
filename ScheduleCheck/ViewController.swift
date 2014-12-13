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
    @IBOutlet weak var startTime2: UITextField!
    @IBOutlet weak var startTime3: UITextField!
    
    @IBOutlet weak var endTime1: UITextField!
    @IBOutlet weak var endTime2: UITextField!
    @IBOutlet weak var endTIme3: UITextField!
    
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
        
        var newClass = Classes(entity: ent!, insertIntoManagedObjectContext: context)
        newClass.classname = className.text
        //newClass.time1 = startTime1.text
        
        context.save(nil)
        
        println(newClass)
        println("Obj saved")
        
    }
    
    @IBAction func doneClicked(sender: AnyObject) {
        let appDel:AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        let context:NSManagedObjectContext = appDel.managedObjectContext!
        
        let request = NSFetchRequest(entityName: "Classes")
        request.returnsObjectsAsFaults = false;
        
        request.predicate = NSPredicate(format: "classname = %@", className.text)
        
        var results:NSArray = context.executeFetchRequest(request, error: nil)!
        
        if results.count > 0 {
            for name in results {
                var thisClassName = name as Classes
                println("the class name is \(thisClassName.classname)")
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

