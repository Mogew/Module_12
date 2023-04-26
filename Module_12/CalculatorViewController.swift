//
//  ViewController.swift
//  Module_12
//
//  Created by Renat on 24.04.2023.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    var model = MainModel()

    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var splitNumber: UILabel!
    


    @IBAction func pressedCalculation(_ sender: UIButton) {
        print("\(model.percentage)")
    }
    
    
    @IBAction func splitNumberChanged(_ sender: UIStepper) {
        splitNumber.text = "\(sender.value)"
    }
    
    @IBAction func tipPressed(_ sender: UIButton){
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        sender.isSelected = true
        model.setPercentage(buttonsTag: sender.tag)
    }
}

