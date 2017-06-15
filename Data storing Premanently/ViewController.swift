//
//  ViewController.swift
//  Data storing Premanently
//
//  Created by Student14 on 6/15/2560 BE.
//  Copyright © 2560 SNRU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // Implicit declation
    var strPhone = ""
    
    
    @IBOutlet weak var showPhoneLabel: UILabel!
    
    @IBOutlet weak var PhoneTextField: UITextField!
    
    
    @IBAction func saveButton(_ sender: Any) {
        // Get value from Textfield
        strPhone = PhoneTextField.text!
        print("strPhone==>\(strPhone)")
        // Save to Permanantly
        UserDefaults.standard.set(strPhone, forKey: "Phone")
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let strPermanentPhone = UserDefaults.standard.object(forKey: "Phone")
        
        
        if let myPermanent = strPermanentPhone as? String  {
            print("Result from Permanent ==>\(myPermanent)")
            
            showPhoneLabel.text = myPermanent
            
        }
        
        
        
        
        
        // print("strPermanentPhone==>\(strPermanentPhone!)")
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

