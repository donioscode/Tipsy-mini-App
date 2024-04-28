//
//  ResultsViewController.swift
//  Tipsy-mini-App
//
//  Created by doniyor normuxammedov on 28/04/24.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var totalLB: UILabel!
    @IBOutlet weak var settingsLB: UILabel!
    
    var tip:Int?
    var numberOfPerson:Int?
    var result: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLB.text =  result!
       
        settingsLB.text = "Split between \((numberOfPerson)!) people with \((tip)!)% tip"
    }
    
    
    @IBAction func reCalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
