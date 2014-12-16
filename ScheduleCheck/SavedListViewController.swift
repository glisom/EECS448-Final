//
//  SavedListViewController.swift
//  ScheduleCheck
//
//  Created by Grant Isom on 12/15/14.
//  Copyright (c) 2014 Grant Isom. All rights reserved.
//

import UIKit
import CoreData

class SavedListViewController: UITableViewController {
    var results1:NSArray = []
    var results2:NSArray = []
    var results3:NSArray = []
    
    var listOfClasses:[NSArray] = []
    
    var selectedRow = 0

    override func viewWillAppear(animated: Bool) {
        let appDel:AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        let context:NSManagedObjectContext = appDel.managedObjectContext!
        
        let request = NSFetchRequest(entityName: "Class")
        request.returnsObjectsAsFaults = false;
        
        results1 = context.executeFetchRequest(request, error: nil)!
        
        let request2 = NSFetchRequest(entityName: "Class2")
        request2.returnsObjectsAsFaults = false;
        
        results2 = context.executeFetchRequest(request2, error: nil)!
        
        let request3 = NSFetchRequest(entityName: "Class3")
        request3.returnsObjectsAsFaults = false;
        
        results3 = context.executeFetchRequest(request3, error: nil)!
        if results1.count > 0 {
            listOfClasses.append(results1)
        }
        if results2.count > 0 {
            listOfClasses.append(results2)
        }
        if results3.count > 0 {
            listOfClasses.append(results3)
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.clearsSelectionOnViewWillAppear = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listOfClasses.count
        
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel?.text = "Schedule \(indexPath.row + 1) "
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println("You selected cell #\(indexPath.row)!")
        selectedRow = indexPath.row
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toSavedView" {
            let savedVC:SavedViewController = segue.destinationViewController as SavedViewController
            savedVC.currSchedule = listOfClasses
            savedVC.position = selectedRow
        }
    }
    

}
