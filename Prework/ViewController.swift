//
//  ViewController.swift
//  Prework
//
//  Created by Phillip Vo on 12/26/21.
//

import UIKit

class ViewController: UIViewController {

       
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        
        let bill = Double(billAmountTextField.text!) ?? 0
        
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func nums(_ sender: UIButton) {
        if sender.tag > 0 && sender.tag <= 10{
        billAmountTextField.text = billAmountTextField.text! + String(sender.tag-1)
        }
        
        else if sender.tag == 101 {
            billAmountTextField.text = ""
            tipAmountLabel.text = "$0.00"
            totalLabel.text = "$0.00"
        }
    
    }


}
    


