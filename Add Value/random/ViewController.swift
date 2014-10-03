//
//  ViewController.swift
//  random
//
//  Created by student on 10/3/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var i1=0
    var i2=0
    var i3=0
    @IBAction func b1(sender: AnyObject)
    {
        i1++
        l1.text = String(i1)
        
    }
    @IBAction func b2(sender: AnyObject)
    {
        i2++
        l2.text = String(i2)
    }
    @IBAction func b3(sender: AnyObject)
    {
        i3++
        l3.text = String(i3)
    }
    
    @IBAction func clear(sender: AnyObject)
    {
        i1 = 0
        i2 = 0
        i3 = 0
        
        l1.text = String(i1)
        l2.text = String(i2)
        l3.text = String(i3)
    }
    
    
    @IBOutlet weak var l1: UILabel!
    @IBOutlet weak var l2: UILabel!
    @IBOutlet weak var l3: UILabel!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

