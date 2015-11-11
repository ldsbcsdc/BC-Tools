//
//  DetailViewController.swift
//  MultipleDetailViews
//
//  Code provided As Is, Do whatever you want with it, but do it at your own risk
//  www.SwiftWala.com
//

import UIKit

class DetailViewController: UIViewController {


    @IBOutlet weak var aboutUsWebview: UIWebView!

    var detailItem: AnyObject? {
        didSet {
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
//        if let detail: AnyObject = self.detailItem {
//            if let label = self.detailDescriptionLabel {
//                label.text = detail.description
//            }
//        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Embed feedback form into the view.
        UIWebView.loadRequest(aboutUsWebview)(NSURLRequest(URL: NSURL(string: "https://www.ldsbc.edu/index.php?option=com_content&view=article&id=1074&Itemid=1062")!))
        
        // Do any additional setup after loading the view, typically from a nib.
//        self.configureView()
    }
    

}

