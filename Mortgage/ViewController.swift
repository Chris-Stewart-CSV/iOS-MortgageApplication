//
//  ViewController.swift
//  Mortgage
//
//  Created by Stewart, Christopher Michael on 6/24/19.
//  Copyright © 2019 Christopher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Outlets:
    @IBOutlet weak var currentPrice: UITextField!
    @IBOutlet weak var interest: UILabel!
    @IBOutlet weak var changeInterest: UISlider!
    @IBOutlet weak var taxRate: UITextField!
    @IBOutlet weak var years: UILabel!
    @IBOutlet weak var changeYears: UIStepper!
    @IBOutlet weak var payment: UILabel!
    var mortgageCalc : MortgageCalc!
    
    @IBAction func calculateMortgage(_ sender: UIButton) {
        let currentValue = Double(currentPrice.text!)!
        if let tax = Double(taxRate.text!){
            let intRate = Double(changeInterest.value)
            let nyears = Int(years.text!)!
            mortgageCalc = MortgageCalc(currentValue, tax, intRate, nyears)
            let pmt = mortgageCalc.computeMonthlyPayment()
            payment.text = String(format: "Monthly payment: $%.2f", pmt)
        }
    }//end
    
    @IBAction func modifyInterest(_ sender: UISlider) {
        let intRate = changeInterest.value
        interest.text = String(format:"%.2f", intRate) + "%"
    }//end
    
    @IBAction func modifyYears(_ sender: UIStepper) {
        years.text = "\(Int(changeYears.value))"
    }//end
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }//end

}//end

//swift
//mvc
//in class examples for coding
