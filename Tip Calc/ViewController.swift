//
//  ViewController.swift
//  Tip Calc
//
//  Created by Estifanos Alene on 7/17/20.
//  Copyright © 2020 Estifanos Alene. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipPercentageLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var numOfPeople: UITextField!
    
    @IBOutlet weak var splitBill: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func onTap(_ sender: Any) {
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get inital bill amount and calculate tip
        let bill = Double(billAmountTextField.text!) ?? 0
        
        let tipPercentages = [0.15, 0.18, 0.2]
        
        // Calculate tip and total amount
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        let total = bill + tip
        
        
        // Update view in app
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        // Splitting the Bill
        let people = Double(numOfPeople.text!) ?? 1
        let finalBill = total / people
        splitBill.text = String(format: "$%.2f", finalBill)
    }
    
  
    @IBAction func tapButton(_ sender: Any) {
        performSegue(withIdentifier: "nextPage", sender: self)
    }
    
}

