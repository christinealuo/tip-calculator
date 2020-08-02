//
//  ViewController.swift
//  tip-calculator
//
//  Created by Christine Luo on 8/1/20.
//  Copyright © 2020 Christine Luo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        print("Hello")
        // Dismiss keyboard
        view.endEditing(true)
    }

    @IBAction func calculateTip(_ sender: Any) {
        // Get the bill amount
        let bill = Double(billField.text!) ?? 0
        
        // Calculate the tip and total
        let defaults = UserDefaults.standard
        let likeThisTipPercentageValue = defaults.double(forKey: "likeThisTipPercentage")
        let loveThisTipPercentageValue = defaults.double(forKey: "loveThisTipPercentage")
        let gottaHaveThisAgainTipPercentageValue = defaults.double(forKey: "gottaHaveThisAgainTipPercentage")
        let tipPercentages = [
            likeThisTipPercentageValue == 0.0 ? 0.15 : likeThisTipPercentageValue,
            loveThisTipPercentageValue == 0.0 ? 0.18 : loveThisTipPercentageValue,
            gottaHaveThisAgainTipPercentageValue == 0.0 ? 0.20 : gottaHaveThisAgainTipPercentageValue]
        print(tipPercentages)
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("View will appear")
        // Get the default tip percentage from UserDefaults
        let defaults = UserDefaults.standard
        let likeThisTipPercentageValue = defaults.double(forKey: "likeThisTipPercentage")
        let loveThisTipPercentageValue = defaults.double(forKey: "loveThisTipPercentage")
        let gottaHaveThisAgainTipPercentageValue = defaults.double(forKey: "gottaHaveThisAgainTipPercentage")
        
        print(likeThisTipPercentageValue)
        print(loveThisTipPercentageValue)
        print(gottaHaveThisAgainTipPercentageValue)
        
        tipControl.setTitle(
            String(format: "%d%%", Int(likeThisTipPercentageValue * 100)),
            forSegmentAt: 0)
        tipControl.setTitle(
            String(format: "%d%%", Int(loveThisTipPercentageValue * 100)),
            forSegmentAt: 1)
        tipControl.setTitle(
            String(format: "%d%%", Int(gottaHaveThisAgainTipPercentageValue * 100)),
            forSegmentAt: 2)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("View did appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("View will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("View did disappear")
    }
}

