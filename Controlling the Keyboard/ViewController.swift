//
//  ViewController.swift
//  Controlling the Keyboard
//
//  Created by Ashley Jelks on 12/30/15.
//  Copyright © 2015 Ashley Jelks. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //^^ Above I added a delegate to allow the ViewController to control the text field
    
    
    @IBAction func buttonPressed(sender: AnyObject) {
        
        label.text = text.text
    }
    
    @IBOutlet var text: UITextField!
    
    
    @IBOutlet var label: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.text.delegate = self
        // Also need to manually set the delegate to control the text field in the View Controller
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        self.view.endEditing(true)
        //code to close the keyboard in the current view
        
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
        //allows the user to close the keyboard by pressing the Return button, here the keyboard is the First Responder to the app

    }

}


























