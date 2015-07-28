//
//  TipCalcModel.swift
//  TipCalculatorRoeut
//
//  Created by Roeut on 7/27/15.
//  Copyright © 2015 NaturesRenegade. All rights reserved.
//

import Foundation

//Ray Wenderlich's code.
//I went through and worked through the code myself and the testing lines at the bottom is giving me errors so I am borrowing Ray Wenderlich's working code so that I may complete second part of the tutorial.



// 1
class TipCalcModel {
    

    var total: Double
    var taxPct: Double
    var subtotal: Double {
        return total / (taxPct + 1)
    }
    
    init(total: Double, taxPct: Double) {
        self.total = total
        self.taxPct = taxPct

    }

    func calcTipWithTipPct(tipPct: Double) -> Double {
        return subtotal * tipPct
    }

    func returnPossibleTips() -> [Int: Double] {
        
        let possibleTipsInferred = [0.15, 0.18, 0.20]
        let possibleTipsExplicit:[Double] = [0.15, 0.18, 0.20]
        
        var retval = [Int: Double]()
        for possibleTip in possibleTipsInferred {
            let intPct = Int(possibleTip*100)
            retval[intPct] = calcTipWithTipPct(possibleTip)
        }
        return retval
        
    }
    
}