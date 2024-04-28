//
//  ViewController.swift
//  Tipsy-mini-App
//
//  Created by doniyor normuxammedov on 28/04/24.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var billTF: UITextField!
    
    @IBOutlet weak var zeroPctBtn: UIButton!
    @IBOutlet weak var tenPctBtn: UIButton!
    @IBOutlet weak var twentyPctBtn: UIButton!
    
    @IBOutlet weak var splitNumberLB: UILabel!
    
    var tip = 0.10
    var numberOfPerson = 2
    var billTotal = 0.0
    var finalResult = "0.0"
    @IBAction func tipChanged(_ sender: UIButton) {
        
        zeroPctBtn.isSelected = false
        tenPctBtn.isSelected = false
        twentyPctBtn.isSelected = false
        sender.isSelected = true
        
        var currentValue = sender.currentTitle!
        let currentLastRemoveValue = String(currentValue.dropLast())
        let changeValue = Double(currentLastRemoveValue)!
        tip = changeValue / 100
        billTF.endEditing(true)
    }
      
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLB.text = String(format: "%.0f", sender.value)
        numberOfPerson = Int(sender.value)
                
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let bill = billTF.text!
        
        if bill != "" {
            billTotal = Double(bill)!
            let result = billTotal * (1 + tip) / Double(numberOfPerson)
            let resultTo2DecimalPlaces = String(format: "%.2f", result)
            
            finalResult = resultTo2DecimalPlaces
            self.performSegue(withIdentifier: "goToResultsView", sender: self)
            print(resultTo2DecimalPlaces)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResultsView" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.result = finalResult
            destinationVC.numberOfPerson = numberOfPerson
            destinationVC.tip = Int(tip * 100)
        }
    }
    
}

