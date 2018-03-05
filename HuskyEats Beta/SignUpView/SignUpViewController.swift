//
//  SignUpViewController.swift
//  HuskyEats Beta
//
//  Created by Sean Lee on 3/5/18.
//  Copyright © 2018 Sean Lee. All rights reserved.
//

import UIKit
import FirebaseAuth

class SignUpViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var confirmField: UITextField!
    @IBOutlet weak var consoleBox: UILabel!
    
    
    /////////////////////////////////////////////////////////////////////////////
    // Creates account in Firebase,
    // Sign up is currently only available with basic email and password.
    //      * I created a field for name, but it is curerntly not used
    //        as you can see.
    //
    // Error handling is done via Firebase, (only displays type of error)/
    //////////////////
    @IBAction func createAccount(_ sender: Any) {
        
        if let name = nameField.text,
            let email = emailField.text,
            let password = passwordField.text,
            let confirm = confirmField.text {
            
            if password == confirm {
                Auth.auth().createUser(withEmail: email, password: password, completion: {
                    user, error in
                    if let firebaseError = error{
                        self.consoleBox.text = firebaseError.localizedDescription
                        print(firebaseError.localizedDescription)
                        return
                    }
                    self.consoleBox.textColor = UIColor.green
                    self.consoleBox.text = "Success! Please go back to Sign in (:"
                    print("Success")
                })
            } else {
                self.consoleBox.text = "Passwords not matching."
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
}
