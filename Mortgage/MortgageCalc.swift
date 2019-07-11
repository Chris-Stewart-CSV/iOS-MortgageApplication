//
//  MortgageCalc.swift
//  Mortgage
//
//  Created by Stewart, Christopher Michael on 6/26/19.
//  Copyright © 2019 Christopher. All rights reserved.
//

import Foundation

class MortgageCalc {
    
    var currentValue: Double
    var tax: Double
    var intRate: Double
    var nyears: Int
    
    init(_ cv: Double, _ t: Double, _ i: Double, _ y: Int){
        currentValue = cv
        tax = t
        intRate = i
        nyears = y
    }//end init
    
    func computeMonthlyPayment() -> Double{
        intRate /= 1200
        tax = (tax / 12) * currentValue
        return currentValue * (intRate + intRate) / pow(1.0 + intRate, Double(nyears) * 12) + tax
    }//end func
    
}//end class
