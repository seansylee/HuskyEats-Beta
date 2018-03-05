//
//  SignInViewController.swift
//  HuskyEats Beta
//
//  Created by Sean Lee on 3/5/18.
//  Copyright © 2018 Sean Lee. All rights reserved.
//

import UIKit
import FirebaseAuth

class SignInViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var consoleBox: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    ////////////////////////////////////////////////////////////////////////
    // This will sign the user in,
    // Sign in is currently only available with basic email and password.
    //
    // Error handling is done via Firebase, (only displays type of error)/
    //////////////////
    @IBAction func signIn(_ sender: Any) {
        if let email = emailField.text, let password = passwordField.text {
            Auth.auth().signIn(withEmail: email, password: password, completion: {(user, error) in
                if let firebaseError = error {
                    print(firebaseError.localizedDescription)
                    self.consoleBox.text = firebaseError.localizedDescription
                    return
                }
                self.toHome()
            })
            print("Success!")
        }
    }
    
    ////////////////////////////////////////////////////////////////////////
    // If sign in is successful it will take the user to the home screen.
    //////////////////
    func toHome(){
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let homeVC: HomeViewController = storyboard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        self.present(homeVC, animated: true, completion: nil)
    }
    
}
