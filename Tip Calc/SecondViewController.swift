//
//  SecondViewController.swift
//  Tip Calc
//
//  Created by Estifanos Alene on 7/18/20.
//  Copyright © 2020 Estifanos Alene. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var perPersonView: UIView!
    
    @IBOutlet weak var totalView: UIView!
    
    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipSlider: UISlider!
    
    @IBOutlet weak var splitSlider: UISlider!
    
    @IBOutlet weak var tipPercent: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var splitBillAmount: UILabel!
    
    @IBOutlet weak var tipAmount: UILabel!
    
    @IBOutlet weak var splitLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        billAmountTextField.becomeFirstResponder()
        totalView.layer.cornerRadius = 10
        perPersonView.layer.cornerRadius = 10
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // Set Tip Percent Label
        let currVal = Int(tipSlider.value)
        
        tipPercent.text = "\(Int(tipSlider.value))"
        
        // Get initial bill amount and calculate tip
        let bill = Double(billAmountTextField.text!) ?? 0
        
        let tipPercentage = Double(currVal) / 100
        // Calculate tip and total amount
        let tip = bill * Double(tipPercentage)
        
        let total = bill + tip
        
        tipAmount.text = String(format: "$%.2f", tip)
        
        totalLabel.text = String(format: "$%.2f", total)
        
        
        // Splitting the Bill
        let people = Int(splitSlider.value)
        
        // Set view for number of people to split with
        splitLabel.text = "\(Int(splitSlider.value))"
        
        let splitBill = total / Double(people)
        
        splitBillAmount.text = String(format: "$%.2f", splitBill)
    }
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
