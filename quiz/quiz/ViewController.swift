//
//  ViewController.swift
//  quiz
//
//  Created by student on 11/14/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollisionBehaviorDelegate
{
    let car = UIImageView()
    var box : UIView!
    var collision:UICollisionBehavior!
    var animator:UIDynamicAnimator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //box
        box = UIView(frame: CGRect(x: 200, y: 325, width: 65, height: 50))
        box.backgroundColor = UIColor.brownColor()
        
        self.view.addSubview(box)

       
        //car
        car.image = UIImage(named:"redcar.png")
        car.frame = CGRect(x:10,y:305,width:120,height:120)
        self.view.addSubview(car)
        
        //Add Moving on
        UIView.animateWithDuration(1.0,animations:
            {
                self.car.frame = CGRect(x:320-50,y:305,width:120,height:120)
            })
        
         animator = UIDynamicAnimator(referenceView: view)
        
        let itemBehaviour = UIDynamicItemBehavior(items: [box])
        itemBehaviour.elasticity = 0.6
        animator.addBehavior(itemBehaviour)
        //Add Collision
        collision = UICollisionBehavior(items: [box,car])
        collision.translatesReferenceBoundsIntoBoundary = true
        
        //add a boundary that has the same frame as the barier
  
        
        collision.collisionDelegate = self//define default
        animator.addBehavior(collision)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func collisionBehavior(behavior: UICollisionBehavior!, beganContactForItem item: UIDynamicItem!, withBoundaryIdentifier identifier: NSCopying!, atPoint p: CGPoint)
    {
        
        
    }
    


}

