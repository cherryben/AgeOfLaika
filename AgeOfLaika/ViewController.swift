//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Ben Coombes on 28/09/2014.
//  Copyright (c) 2014 Ben Coombes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var enterHumanYearsTextField: UITextField!
    @IBOutlet weak var dogYearsLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertDogYearsButtonPressed(sender: UIButton) {
        let stringFromTextField = enterHumanYearsTextField.text
        let optionalIntFromTextField = stringFromTextField.toInt()
        let intFromOptional = optionalIntFromTextField!
        dogYearsLabel.text = "\(intFromOptional * 7)" + " dog years"
        enterHumanYearsTextField.resignFirstResponder()
        
    }

    @IBAction func convertToRealDogYearsButtonPressed(sender: UIButton) {
        let stringFromTextField = enterHumanYearsTextField.text
        let optionalDoubleFromTextField = Double((stringFromTextField as NSString).doubleValue)
        var realDogYears:Double
        
        if optionalDoubleFromTextField > 2 {
            realDogYears = (10.5 * 2) + (optionalDoubleFromTextField - 2) * 4
        }
        else {
        realDogYears = optionalDoubleFromTextField * 10.5
        }
    
    dogYearsLabel.text = "\(realDogYears)" + " real dog years"
    enterHumanYearsTextField.resignFirstResponder()
}
}

