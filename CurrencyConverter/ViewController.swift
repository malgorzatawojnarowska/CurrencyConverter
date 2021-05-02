//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Małgorzata Wojnarowska on 02/05/2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var convertedLabel: UILabel!
    @IBOutlet weak var rateTextField: UITextField!
    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var currencySegmentedControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        convertedLabel.text = ""
    }

    @IBAction func convertTapped(_ sender: Any) {
        let rate = Double(rateTextField.text!)!
        let amount = Double(amountTextField.text!)!
        
        let converted = rate * amount
        
        if (currencySegmentedControl.selectedSegmentIndex == 0){
            convertedLabel.text = "$\(converted)"
        }
        else {
            convertedLabel.text = "￥\(converted)"
        }
    }
    
}

