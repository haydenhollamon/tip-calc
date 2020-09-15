//
//  ViewController.swift
//  tip calc
//
//  Created by Hayden Hollamon on 9/15/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
     override func viewDidLoad() {
           super.viewDidLoad()
           billField.becomeFirstResponder()
           // Do any additional setup after loading the view.
       }
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get the bill amount
        let  bill  = Double(billField.text!) ?? 0
        
        // Calculate the tip and total
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update the tip and total labeling
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }


}

