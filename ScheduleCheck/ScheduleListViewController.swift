//
//  ScheduleListViewController.swift
//  ScheduleCheck
//
//  Created by Grant Isom on 12/14/14.
//  Copyright (c) 2014 Grant Isom. All rights reserved.
//

import UIKit
import CoreData



protocol ScheduleListViewControllerDelegate{
    func myVCDidFinish(controller:ScheduleListViewController,schedule:[studentClass])
}

class ScheduleListViewController: UITableViewController {
    var delegate:ScheduleListViewController? = nil
    
    var schedules:[[studentClass]] = []
    
    var selectedRow = 0
    
    override func viewWillAppear(animated: Bool) {
        self.tableView.reloadData()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
         self.clearsSelectionOnViewWillAppear = true

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
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
        return self.schedules.count
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
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toScheduleView" {
            let scheduleVC:ScheduleViewController = segue.destinationViewController as ScheduleViewController
            scheduleVC.currSchedule = schedules[selectedRow]
        }
    }
    

}
