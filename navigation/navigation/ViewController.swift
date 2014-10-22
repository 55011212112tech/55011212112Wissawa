//
//  ViewController.swift
//  navigation
//
//  Created by student on 10/17/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController,colortwoviewcontrollerDelegate {

    @IBOutlet var colorlabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func myVCDidFinish(controller: colortwoviewcontroller, text: String) {
        colorlabel.text = text
        controller.navigationController?.popViewControllerAnimated(true)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!)
    {
        if segue.identifier == "mySegue"
        {
            let vc = segue.destinationViewController as colortwoviewcontroller
            vc.colorString = colorlabel.text!
            vc.delegate = self
        }
        
    }

    

}

