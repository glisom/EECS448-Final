//
//  ViewController.swift
//  ScheduleCheck
//
//  Created by Grant Isom on 12/10/14.
//  Copyright (c) 2014 Grant Isom. All rights reserved.
//

import UIKit
import CoreData

//*******************************************************//
//   Represents a student's class                        //
//*******************************************************//

class studentClass {
    
    init(name:String, start:Int, end:Int, days:[Bool]) {
        className = name
        let cTime = classTime(start: start,end: end,days: days)
        timesOffered.append(cTime)
    }
    
    func addTime(start:Int, end:Int, days:[Bool]) -> Bool {
        if timesOffered.count < 3 {
            let cTime = classTime(start: start, end: end, days: days)
            timesOffered.append(cTime)
            return true
        } else {
            return false
        }
    }
    var className:String?
    var timesOffered:[classTime] = []
}

//*******************************************************//
//   Represents a time slot for a class                  //
//*******************************************************//

class classTime {
    
    init(start:Int, end:Int, days:[Bool]) {
        startTime1 = start
        endTime1 = end
        days1 = days
    }
    
    var startTime1:Int = 0
    
    var endTime1:Int = 0
    
    var days1:Array<Bool> = []
}

//*******************************************************//
//   Controls the screen that adds classes               //
//*******************************************************//

class ViewController: UIViewController, UITextFieldDelegate, ScheduleListViewControllerDelegate {
    
    var newClass:Bool = true
    
    var classesList:[studentClass] = []
    
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
    
    var classDays:[Bool] = [false,false,false,false,false]
    
    var schedules:[[studentClass]] = []
    
    func schedule (list:[studentClass]) -> [studentClass] {
        
        
        return list
    }
    
    //*******************************************************//
    //   Creates a class object
    //*******************************************************//
    
    @IBAction func createClicked(sender: AnyObject) {
        
        if monSwitch.on {
            classDays[0] = true
        } else {
            classDays[0] = false
        }
        if tuesSwitch.on {
            classDays[1] = true
        } else {
            classDays[1] = false
        }
        if wedSwtich.on {
            classDays[2] = true
        } else {
            classDays[2] = false
        }
        if thursSwitch.on {
            classDays[3] = true
        } else {
            classDays[3] = false
        }
        if friSwitch.on {
            classDays[4] = true
        } else {
            classDays[4] = false
        }
        
        
        if newClass == true {
            let myClass = studentClass(name: className.text, start: startTime1.text.toInt()!, end: endTime1.text.toInt()!, days: classDays)
            classesList.append(myClass)
            println(classesList.endIndex)
            
            if classesList.endIndex < 5 {
                var createAlert = UIAlertController(title: "Class created!", message: "Do you want to add another time this class is available?\n", preferredStyle: .Alert)
                
                let noAction = UIAlertAction(title: "Nope", style: .Cancel) {
                    (action: UIAlertAction!) -> Void in
                    self.monSwitch.on = false
                    self.tuesSwitch.on = false
                    self.wedSwtich.on = false
                    self.thursSwitch.on = false
                    self.friSwitch.on = false
                    self.startTime1.text = nil
                    self.endTime1.text = nil
                    self.className.text = nil
                    println("New Class!")
                    self.newClass = true
                    self.createButton.setTitle("Create", forState: UIControlState.Normal)
                    self.createButton.setTitle("Create", forState: UIControlState.Selected)
                }
                
                let yesAction = UIAlertAction(title: "Yes", style: .Default, handler: {
                    (alert: UIAlertAction!) -> Void in
                    self.newClass = false
                    self.createButton.setTitle("Add", forState: UIControlState.Normal)
                    self.createButton.setTitle("Add", forState: UIControlState.Selected)
                    self.monSwitch.on = false
                    self.tuesSwitch.on = false
                    self.wedSwtich.on = false
                    self.thursSwitch.on = false
                    self.friSwitch.on = false
                    self.startTime1.text = nil
                    self.endTime1.text = nil
                    
                    println("Entering another time for same class")
                    
                })
                createAlert.addAction(yesAction)
                createAlert.addAction(noAction)
                presentViewController(createAlert, animated: true, completion: nil)
            }
        }
        
        if newClass == false {
            classesList.last?.addTime(startTime1.text.toInt()!, end: endTime1.text.toInt()!, days: classDays)
            
            var addAlert = UIAlertController(title: "Time added to \(className.text)", message: "Would you like to add a third time?", preferredStyle: .Alert)
            let yesAlert = UIAlertAction(title: "Yes", style: .Default, handler: {
                (action: UIAlertAction!) -> Void in
                self.newClass = false
                self.createButton.setTitle("Add", forState: UIControlState.Normal)
                self.createButton.setTitle("Add", forState: UIControlState.Selected)
                self.monSwitch.on = false
                self.tuesSwitch.on = false
                self.wedSwtich.on = false
                self.thursSwitch.on = false
                self.friSwitch.on = false
                self.startTime1.text = nil
                self.endTime1.text = nil
                
                println("Entering another time for same class")
                
            })
            
            let noAction = UIAlertAction(title: "Nope", style: .Default) {
                (action: UIAlertAction!) -> Void in
                self.monSwitch.on = false
                self.tuesSwitch.on = false
                self.wedSwtich.on = false
                self.thursSwitch.on = false
                self.friSwitch.on = false
                self.startTime1.text = nil
                self.endTime1.text = nil
                self.className.text = nil
                println("New Class!")
                self.newClass = true
                self.createButton.setTitle("Create", forState: UIControlState.Normal)
                self.createButton.setTitle("Create", forState: UIControlState.Selected)
            }
            addAlert.addAction(yesAlert)
            addAlert.addAction(noAction)
            presentViewController(addAlert, animated: true, completion: nil)
            
        }
        
        if classesList.endIndex == 5 {
            doneButton.hidden = false
            doneButton.enabled = true
            createButton.enabled = false
            createButton.titleLabel?.textColor = UIColor.redColor()
            
            var doneAlert = UIAlertController(title: "Done!", message: "You can now press done and generate your schedules", preferredStyle: .Alert)
            let doneAction = UIAlertAction(title: "Okay", style: .Default) { (action: UIAlertAction!) -> Void in }
            doneAlert.addAction(doneAction)
            presentViewController(doneAlert, animated: true, completion: nil)
            
        }
    }
    
    @IBAction func doneClicked(sender: UIButton) {
        
        schedules.append(schedule(classesList))
        
    }
    
    func myVCDidFinish(controller: ScheduleListViewController, schedule:[studentClass]) {
        
        controller.navigationController?.popViewControllerAnimated(true)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "ScheduleList"{
            let vc = segue.destinationViewController as ScheduleListViewController
            vc.schedules = schedules
            //vc.delegate = self
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "DismissKeyboard")
        self.view.addGestureRecognizer(tap)
    }
    
    func DismissKeyboard(){
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        self.className.resignFirstResponder()
        self.startTime1.resignFirstResponder()
        self.endTime1.resignFirstResponder()
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

