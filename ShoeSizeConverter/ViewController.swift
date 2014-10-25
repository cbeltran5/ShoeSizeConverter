//
//  ViewController.swift
//  ShoeSizeConverter
//
//  Created by Carlos Beltran on 9/28/14.
//  Copyright (c) 2014 Carlos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sizeField: UITextField!
    @IBOutlet weak var convertedLabel: UILabel!
    
    @IBOutlet weak var sizeFieldW: UITextField!
    @IBOutlet weak var convertedLabelW: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButton(sender: AnyObject) {
        let conversion = 30
        let fieldToInt = sizeField.text.toInt()!
        
        convertedLabel.text = "Converted shoe size in the UK is: \(fieldToInt + conversion)"
        convertedLabel.hidden = 0
        sizeField.text = ""

    }
    
    @IBAction func convertButtonW(sender: AnyObject) {
        let conversion = 30.5
        let fieldToDouble = (NSString(string: sizeFieldW.text)).doubleValue
        
        convertedLabelW.text = "Converted shoe size in the UK is: \(fieldToDouble + conversion)"
        convertedLabelW.hidden = 0
        sizeFieldW.text = ""
    }


}

