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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        heightCon.constant = self.view.frame.size.height / 2
        widthCon.constant = self.view.frame.size.width / 2

        // Do any additional setup after loading the view.
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
