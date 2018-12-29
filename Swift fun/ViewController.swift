//
//  ViewController.swift
//  Swift fun
//
//  Created by Juan Guardado on 12/27/18.
//  Copyright © 2018 Juan Guardado. All rights reserved.
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
        
        view.backgroundColor = UIColor.green
        myFirstLabel.text = "Gonna add a button"
    }

    @IBAction func pressMeTapped(_ sender: Any) {
        print(totalTextField.text!)
        print(tipTextField.text!)
        
        let totalAmount = Double(totalTextField.text!)!
        let tipPercent = Double(tipTextField.text!)! / 100.0
        
        let tipAmount = totalAmount * tipPercent
        print(tipAmount)
        
        if tipAmount > 50 {
            myFirstLabel.text = "You're projected tip amount is $\(tipAmount)!😤"
        } else {
            myFirstLabel.text = "You're projected tip amount is $\(tipAmount)"
        }
        
        
        
    }
    
}

