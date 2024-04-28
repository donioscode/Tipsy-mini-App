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
    
    @IBAction func tipChanged(_ sender: UIButton) {
        
        zeroPctBtn.isSelected = false
        tenPctBtn.isSelected = false
        twentyPctBtn.isSelected = false
        
        sender.isSelected = true
        
        var currentValue = sender.currentTitle!
        let currentLastRemoveValue = String(currentValue.dropLast())
        let changeValue = Double(currentLastRemoveValue)!
        
        tip = changeValue / 100
        
        
    }
    
    
    
        
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLB.text = String(format: "%.0f", sender.value)
        numberOfPerson = Int(sender.value)
                
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        print(tip)
        print(numberOfPerson)
    }
    
    
}

