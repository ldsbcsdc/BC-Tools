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
    
    
    @IBAction func workshopsButton(sender: AnyObject) {
        getLink("http://www.eventbrite.com/e/resume-labworkshop-tickets-18720209651?aff=es2")
    }
    
    @IBAction func feedbackButton(sender: AnyObject) {
        getLink("https://docs.google.com/a/ldsbc.edu/forms/d/1PGgxSl2w9vsp4cq5jxii5Y6AOgCfCJ75o527xOrXD4U/viewform")
    }
    
    
    
    @IBAction func fbButton(sender: AnyObject) {
        // page profile id likes like this. "fb://profile/620248604755560"
        let facebookURL = NSURL(string: "")!
        if UIApplication.sharedApplication().canOpenURL(facebookURL) {
            // Open in native Facebook app.
            UIApplication.sharedApplication().openURL(facebookURL)
        } else {
            // Open in web browser if Facebook app is not installed.
            UIApplication.sharedApplication().openURL(NSURL(string: "https://www.facebook.com/LDSBCCareerServices/timeline")!)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //heightCon.constant = (self.view.frame.size.height / 2) - 500
        //widthCon.constant = self.view.frame.size.width / 2

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
