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
        let yearsFromTextField = enterHumanYearsTextField.text.toInt()!
        let conversionConstant = 7
        dogYearsLabel.hidden = false
        dogYearsLabel.text = "\(yearsFromTextField * conversionConstant)" + " in Dog Years"
        enterHumanYearsTextField.resignFirstResponder()
        
    }

}

