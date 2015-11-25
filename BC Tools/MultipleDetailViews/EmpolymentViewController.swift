//
//  EmpolymentViewController.swift
//  BC Tools
//
//  Created by studev18 on 10/19/15.
//  Copyright © 2015 PTS. All rights reserved.
//

import UIKit

class EmpolymentViewController: UIViewController {

    @IBOutlet weak var heightCon: NSLayoutConstraint!
    @IBOutlet weak var widthCon: NSLayoutConstraint!
    
    // Button outlets
    @IBOutlet weak var jobSearchButton: UIButton!
    @IBOutlet weak var appointmentsButton: UIButton!
    @IBOutlet weak var workshopsButton: UIButton!
    @IBOutlet weak var feedbackButton: UIButton!
    
    
    @IBAction func jobButton(sender: AnyObject) {
        getLink("https://app.smartsheet.com/b/mpublish?EQBCT=fbae046f0612479eadfdbebc2a77517e#sheet")
    }
    
    @IBAction func workshopsButton(sender: AnyObject) {
        getLink("http://www.eventbrite.com/o/lds-business-college-5412722679")
    }
    
    @IBAction func feedbackButton(sender: AnyObject) {
        getLink("https://docs.google.com/a/ldsbc.edu/forms/d/1IjiLH7JQJXGcZPM3ZE2rw9dAN0NjC5SaZ-9uWXjIjbs/viewform?edit_requested=true")
    }
    
    
    
    @IBAction func fbButton(sender: AnyObject) {
        // page profile id looks like this. "fb://profile/424097204331940"
        let facebookURL = NSURL(string: "fb://profile/424097204331940")!
        if UIApplication.sharedApplication().canOpenURL(facebookURL) {
            // Open in native Facebook app.
            UIApplication.sharedApplication().openURL(facebookURL)
        } else {
            // Open in web browser if Facebook app is not installed.
            UIApplication.sharedApplication().openURL(NSURL(string: "https://www.facebook.com/LDSBCCareerServices")!)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // set button views to Aspect Fit
        jobSearchButton.imageView?.contentMode = UIViewContentMode.ScaleAspectFit
        appointmentsButton.imageView?.contentMode = UIViewContentMode.ScaleAspectFit
        workshopsButton.imageView?.contentMode = UIViewContentMode.ScaleAspectFit
        feedbackButton.imageView?.contentMode = UIViewContentMode.ScaleAspectFit
        
        heightCon.constant = (self.view.frame.size.height / 2) - 500
        widthCon.constant = self.view.frame.size.width / 2
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Link method for all buttons.
    func getLink(linkString: String) {
        let targetURL = NSURL(string: linkString)
        let application = UIApplication.sharedApplication()
        application.openURL(targetURL!);
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
