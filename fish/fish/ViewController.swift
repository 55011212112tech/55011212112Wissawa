//
//  ViewController.swift
//  fish
//
//  Created by student on 11/7/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    let colorsquare = UIView()
    let options = UIViewAnimationOptions.Repeat
    
    @IBAction func animate(sender: AnyObject)
    {
        
        colorsquare.backgroundColor = UIColor.blueColor()
        
        colorsquare.frame = CGRect(x:0,y:120,width:50,height:50)
        self.view.addSubview(colorsquare)
        
        UIView.animateWithDuration(1.0, animations: {
            self.colorsquare.backgroundColor = UIColor.redColor()
        })
        
        colorsquare.frame = CGRect(x:320-50,y:120,width:50,height:50)
        
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        colorsquare.frame = CGRect(x: 0 ,y: 120, width: 50, height:50)
        colorsquare.backgroundColor = UIColor.greenColor()
        self.view.addSubview(colorsquare)
        
        UIView.animateWithDuration(1.0, animations:
            {
                self.colorsquare.backgroundColor = UIColor.redColor()
                self.colorsquare.frame = CGRect(x: 320-50, y:120, width:50, height:50)
            })
        
        UIView.animateWithDuration(1.0, delay: 0.0,options: options,animations: {
            self.colorsquare.backgroundColor = UIColor.blueColor()
            self.colorsquare.frame = CGRect(x: 320-50, y:120,width:50,height:50)
            
        },completion: nil)
        
        
        
        
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }


}

