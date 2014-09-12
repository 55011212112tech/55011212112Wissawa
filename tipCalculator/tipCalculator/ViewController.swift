//
//  ViewController.swift
//  tipCalculator
//
//  Created by student on 9/12/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var totalTextField : UITextField!
    @IBOutlet var taxPctSlider : UISlider!
    @IBOutlet var taxPctLabel :UILabel!
    @IBOutlet var resultsTextView : UITextView!

    @IBAction func button(sender: AnyObject) {
        tipCalc.total = Double((totalTextField.text as NSString).doubleValue)
        let possibleTips = tipCalc.returnPossibleTips()
        var results = ""

        for(tipPct,tipValue) in PossibleTips{
            results+="\(tipPct)%: \(tipValue)\n"
        }
        
        resultsTextView.text = results
        var keys = Array(possibleTips.keys)
        sort(&keys)
        for tipPct in keys {
            let tipValue = possibleTips[tipPct]!
            let prettyTipValue = String(format:"%.2f",tipvalue)
            results += "\(tipPct)%:\(prettyTipValue)"
    }
    }
    
    @IBAction func slide(sender: AnyObject) {
            tipCalc.taxPct = Double(taxPctSlider.value)/100.0
    }
    
    @IBAction func gesture(sender: AnyObject){
            totalTextField.resignFirstResponder()

    }


    
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        refreshUI()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    let tipCalc = TipCalculatorModel(total:33.25,taxPct:0.06)
    
    func refreshUI(){
        
        totalTextField.text = String(format:"%0.2f",tipCalc.total)
        
        taxPctSlider.value = Float(tipCalc.taxPct)*100.0
        
        taxPctLabel.text = "Tax Percentage(\(Int(taxPctSlider.value))%)"
        
        resultsTextView.text = ""
    }


}

