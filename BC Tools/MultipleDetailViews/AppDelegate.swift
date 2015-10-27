//
//  AppDelegate.swift
//  LDSBC_Tools
//
//  Created by Riley Hooper on 5/13/15.
//  Copyright (c) 2015 LDS BC. All rights reserved.
//

import UIKit
import Parse
import ParseCrashReporting
import Bolts

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, UISplitViewControllerDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        // Parse
        // [Optional] Power your app with Local Datastore. For more info, go to
        // https://parse.com/docs/ios_guide#localdatastore/iOS
        //Parse.enableLocalDatastore()
        
        // Initialize Parse.
        ParseCrashReporting.enable()
        Parse.setApplicationId("y4mrxs1MVgSv9qv5L79fui8d4ElGs7iQH6mJOWha",
            clientKey: "9Y6aanyHQdDjxzpx6QYsBYxgMUb8tfFsB95caB3c")
        
        // [Optional] Track statistics around application opens.
        PFAnalytics.trackAppOpenedWithLaunchOptions(launchOptions)
        
        //        // Manually crash the app after 5 seconds.
        //        let delayTime = dispatch_time(DISPATCH_TIME_NOW, Int64(5 * Double(NSEC_PER_SEC)))
        //        dispatch_after(delayTime, dispatch_get_main_queue()) {
        //            NSException.raise(NSGenericException, format: "Everything is ok, this is just a test crash.", arguments: getVaList([]))
        //        }
        
        //  Push
        
        // Override point for customization after application launch.
        let splitViewController = self.window!.rootViewController as! UISplitViewController
        let navigationController = splitViewController.viewControllers[splitViewController.viewControllers.count-1] as! UINavigationController
//        if #available(iOS 8.0, *) {
            navigationController.topViewController!.navigationItem.leftBarButtonItem = splitViewController.displayModeButtonItem()
//        } else {
//            // Fallback on earlier versions
//        }
        splitViewController.delegate = self
        return true
    }

   
    // MARK: - Split view

    func splitViewController(splitViewController: UISplitViewController, collapseSecondaryViewController secondaryViewController:UIViewController, ontoPrimaryViewController primaryViewController:UIViewController) -> Bool {
        if let secondaryAsNavController = secondaryViewController as? UINavigationController {
            if let topAsDetailController = secondaryAsNavController.topViewController as? DetailViewController {
                if topAsDetailController.detailItem == nil {
                    // Return true to indicate that we have handled the collapse by doing nothing; the secondary controller will be discarded.
                    //If we don't do this, detail1 will open as the first view when run on iPhone, comment and see
                    return true
                }
            }
        }
        return false
    }

}

