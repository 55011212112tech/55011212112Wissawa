//
//  colortwoviewcontroller.swift
//  navigation
//
//  Created by student on 10/17/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit
protocol colortwoviewcontrollerDelegate
{
    func myVCDidFinish(controller:colortwoviewcontroller,text:String)
}

class colortwoviewcontroller: UIViewController {
    
    
   
    var delegate:colortwoviewcontrollerDelegate? = nil
    
    var colorString = ""
    
    @IBAction func colorselect(sender: UIButton)
    {
        colorlabel.text = sender.titleLabel!.text!
    }
    @IBOutlet var colorlabel: UILabel!
    
    @IBAction func savecolor(sender: UIBarButtonItem) {
        if(delegate != nil)
        {
            delegate!.myVCDidFinish(self,text: colorlabel!.text!)
        }
    }
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        colorlabel.text = colorString
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
