//
//  adddata.swift
//  Exam1_55011212112
//
//  Created by student on 12/17/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit
import CoreData

var items = [NSManagedObject]()

protocol adddataDelegate
{
    
}

class adddata: UIViewController,UITableViewDataSource{

    @IBAction func Save(sender: AnyObject)
    {
        
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as UITableViewCell
        let Stocks = items[indexPath.row]
        cell.textLabel!.text = Stocks.valueForKey("name") as String?
        return cell
    }
    
    func saveName(name: String){
        //1
        let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        //2
        let managedContext = appDelegate.managedObjectContext!
        let entity = NSEntityDescription.entityForName("Item",inManagedObjectContext:managedContext)
        //3
        let Stocks = NSManagedObject(entity: entity!,insertIntoManagedObjectContext:managedContext)
        Stocks.setValue(name, forKey:"name")
        
        //4
        var error:NSError?
        if !managedContext.save(&error)
        {
            println("Could not save\(error),\(error?.userInfo)")
        }
        items.append(Stocks)
    }

}
