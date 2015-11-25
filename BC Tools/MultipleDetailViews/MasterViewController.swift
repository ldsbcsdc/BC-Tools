//
//  MasterViewController.swift
//  MultipleDetailViews
//
//  Code provided As Is, Do whatever you want with it, but do it at your own risk
//  www.SwiftWala.com
//

import UIKit

class MasterViewController: UITableViewController {

    // Class variables
    var pagesArray = ["About Us", "Directory", "Events", "Career Services", "BCSA", "Deals", "Feedback"]
//    var departments = [department]()
    

    // MARK: - Segues

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "About Us" {
            if let _ = self.tableView.indexPathForSelectedRow {
                let controller = (segue.destinationViewController as! UINavigationController).topViewController as! DetailViewController
//                if #available(iOS 8.0, *) {
                    controller.navigationItem.leftBarButtonItem = self.splitViewController?.displayModeButtonItem()
//                } else {
//                    // Fallback on earlier versions
//                }
                controller.navigationItem.leftItemsSupplementBackButton = true
            }
        } else if segue.identifier == "Directory" {
            let controller = (segue.destinationViewController as! UINavigationController).topViewController as! DirectoryTableViewController
            //            if #available(iOS 8.0, *) {
            controller.navigationItem.leftBarButtonItem = self.splitViewController?.displayModeButtonItem()
            //            } else {
            //                // Fallback on earlier versions
            //            }
            controller.navigationItem.leftItemsSupplementBackButton = true
        } else if segue.identifier == "Events" {
            let controller = (segue.destinationViewController as! UINavigationController).topViewController as! EventsTableViewController
//            if #available(iOS 8.0, *) {
                controller.navigationItem.leftBarButtonItem = self.splitViewController?.displayModeButtonItem()
//            } else {
//                // Fallback on earlier versions
//            }
            controller.navigationItem.leftItemsSupplementBackButton = true
        } else if segue.identifier == "Career Services" {
            let controller = (segue.destinationViewController as! UINavigationController).topViewController as! EmpolymentViewController
            //            if #available(iOS 8.0, *) {
            controller.navigationItem.leftBarButtonItem = self.splitViewController?.displayModeButtonItem()
            //            } else {
            //                // Fallback on earlier versions
            //            }
            controller.navigationItem.leftItemsSupplementBackButton = true
        } else if segue.identifier == "BCSA" {
            let controller = (segue.destinationViewController as! UINavigationController).topViewController as! BCSAViewController
            //            if #available(iOS 8.0, *) {
            controller.navigationItem.leftBarButtonItem = self.splitViewController?.displayModeButtonItem()
            //            } else {
            //                // Fallback on earlier versions
            //            }
            controller.navigationItem.leftItemsSupplementBackButton = true
        } else if segue.identifier == "Deals" {
            let controller = (segue.destinationViewController as! UINavigationController).topViewController as! DealsTableViewController
            //            if #available(iOS 8.0, *) {
            controller.navigationItem.leftBarButtonItem = self.splitViewController?.displayModeButtonItem()
            //            } else {
            //                // Fallback on earlier versions
            //            }
            controller.navigationItem.leftItemsSupplementBackButton = true
        } else if segue.identifier == "Feedback" {
            let controller = (segue.destinationViewController as! UINavigationController).topViewController as! FeedbackViewController
            //            if #available(iOS 8.0, *) {
            controller.navigationItem.leftBarButtonItem = self.splitViewController?.displayModeButtonItem()
            //            } else {
            //                // Fallback on earlier versions
            //            }
            controller.navigationItem.leftItemsSupplementBackButton = true
        }
        
    }

    // MARK: - Table View

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pagesArray.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) 
        
        // Configure the cell...
        let currentPage = pagesArray[indexPath.row]
        cell.textLabel?.text = currentPage

        return cell
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        // switch
        switch indexPath.row {
            case 0: self.performSegueWithIdentifier(pagesArray[0], sender: self);
            case 1: self.performSegueWithIdentifier(pagesArray[1], sender: self);
            case 2: self.performSegueWithIdentifier(pagesArray[2], sender: self);
            case 3: self.performSegueWithIdentifier(pagesArray[3], sender: self);
            case 4: self.performSegueWithIdentifier(pagesArray[4], sender: self);
            case 5: self.performSegueWithIdentifier(pagesArray[5], sender: self);
            case 6: self.performSegueWithIdentifier(pagesArray[6], sender: self);
        default:
            self.performSegueWithIdentifier("About Us", sender: self)
        }
    }
  
}

