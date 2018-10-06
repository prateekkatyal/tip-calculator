//
//  ViewController.swift
//  Swift Fun
//
//  Created by Prateek Katyal on 04/10/18.
//  Copyright © 2018 Prateek Katyal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var totalTextField: UITextField!
    
    @IBOutlet weak var tipTextField: UITextField!
    
    @IBOutlet weak var myFirstLabel: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        
        // Converts the text field input into double and stores it inside total
        
        if let totalText = totalTextField.text {
            if let total = Double(totalText) {
                if let tipText = tipTextField.text {
                    if let tipPercentage = Double(tipText) {
                        var tip = total * tipPercentage / 100
                        
                        
                        
                        if tip >= 50 {
                            myFirstLabel.text = String("Tip : \(tip)!!!")
                        } else {
                            myFirstLabel.text = String("Tip : \(tip)")
                        }

                    }
                }
            }
        }
        
        var total = Double(totalTextField.text!)!
        
        var tipPercentage = Double(tipTextField.text!)! / 100.0
        
        // calculates tip
        
        var tip = total * tipPercentage
        
        
        
        if tip >= 50 {
            myFirstLabel.text = String("Tip : \(tip)!!!")
        } else {
            myFirstLabel.text = String("Tip : \(tip)")
        }
        
        
        
        
        
    }
    
}

