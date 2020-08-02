//
//  SettingsViewController.swift
//  tip-calculator
//
//  Created by Christine Luo on 8/1/20.
//  Copyright © 2020 Christine Luo. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var likeThisField: UITextField!
    @IBOutlet weak var loveThisField: UITextField!
    @IBOutlet weak var gottaHaveThisAgainField: UITextField!
    @IBOutlet weak var likeThisLabel: UILabel!
    @IBOutlet weak var loveThisLabel: UILabel!
    @IBOutlet weak var gottaHaveThisAgainLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func saveChangesButton(_ sender: Any) {
        // Access UserDefaults
        let defaults = UserDefaults.standard
        defaults.set(Double(likeThisField.text!), forKey: "likeThisTipPercentage")
        defaults.set(Double(loveThisField.text!), forKey: "loveThisTipPercentage")
        defaults.set(Double(gottaHaveThisAgainField.text!), forKey: "gottaHaveThisAgainTipPercentage")
        // Save UserDefaults
        defaults.synchronize()
        
        // Change current tip percentage labels
        print(likeThisField.text!)
        likeThisLabel.text = likeThisField.text!
        loveThisLabel.text = loveThisField.text!
        gottaHaveThisAgainLabel.text = gottaHaveThisAgainField.text!
    }
}
