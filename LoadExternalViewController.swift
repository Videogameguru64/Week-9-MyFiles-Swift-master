//
//  LoadExternalViewController.swift
//  MyFilesSwift9
//
//  Created by webstudent on 3/16/15.
//  Copyright (c) 2015 Rock Valley College. All rights reserved.
//

import UIKit

class LoadExternalViewController: UIViewController {
    
    
    
    @IBAction func btnBack(sender: UIBarButtonItem) {
         self.dismissViewControllerAnimated(false, completion: nil)
    }
    
    
    @IBOutlet weak var webview: UIWebView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        LoadExternalPDF()
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func LoadExternalPDF()
    {
        //webview.loadLocalPDF("testers")
          webview.loadExternalPDF("http://ckonkol.com/wp-content/uploads/2015/02/Spring-2015-Apps-CIS280-3.pdf")
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
//extension UIWebView {
//    func loadLocalPDF(name:String!) {
//        //load local pdf
//        let termsPath:String? = NSBundle.mainBundle().pathForResource(name, ofType: "pdf")!
//        let url = NSURL(fileURLWithPath: termsPath!)
//        let pdfRequest = NSURLRequest(URL: url!)
//        self.loadRequest(pdfRequest)
//    }
//    func loadExternalPDF(name:String!){
//        let url = NSURL(string: name)
//        let request = NSURLRequest(URL:url!)
//        self.scalesPageToFit = true
//        self.loadRequest(request)
//    }
//}