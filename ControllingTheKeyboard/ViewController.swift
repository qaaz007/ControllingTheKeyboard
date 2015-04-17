//
//  ViewController.swift
//  ControllingTheKeyboard
//
//  Created by Adnan Aziz on 4/17/15.
//  Copyright (c) 2015 Adnan Aziz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var input: UITextField!
    
    @IBOutlet weak var label: UILabel!
    
    
    @IBAction func action(sender: AnyObject) {
        label.text = input.text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        input.delegate = self

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // methods to CLOSE THE KEYBOARD
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }

    // methods to CLOSE THE KEYBOARD
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }


}

