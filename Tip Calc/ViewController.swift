//
//  ViewController.swift
//  Tip Calc
//
//  Created by Estifanos Alene on 7/17/20.
//  Copyright © 2020 Estifanos Alene. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var defaultTipLabel: UILabel!
    
    @IBOutlet weak var stepper: UIStepper!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        defaultTipLabel.text = "\(Int(stepper.value))"
    }
    
    
    @IBAction func changeDefault(_ sender: Any) {
        let defaultTip = Int(stepper.value)
        defaultTipLabel.text = "\(defaultTip)"
    }
    
    @IBAction func onTap(_ sender: Any) {
    }
    
    
    
  
    @IBAction func tapButton(_ sender: Any) {
        performSegue(withIdentifier: "nextPage", sender: self)
    }
    
}

