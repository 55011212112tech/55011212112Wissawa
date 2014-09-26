//
//  ViewController.swift
//  showlable
//
//  Created by student on 9/26/14.
//  Copyright (c) 2014 student. All rights reserved.
//


import UIKit

class ViewController: UIViewController,UITableViewDelegate {
    

    @IBOutlet weak var tbview: UITableView!
    
    var listStudent = [student]()//call student.swift
    
   
    
    @IBAction func abutton(sender: AnyObject)
    {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    
    


}

