//
//  HomeViewController.swift
//  HuskyEats Beta
//
//  Created by Sean Lee on 3/5/18.
//  Copyright © 2018 Sean Lee. All rights reserved.
//

import UIKit
import FirebaseAuth

class HomeViewController: UIViewController {
    
    //////////////////////////////////////////////////////////////////////////////
    // Sign out via Firebase/Auth
    //
    // prints message to console if not successful.
    //   but not really sure how to set up a case for unsuccessful sign out.
    //////////////////
    @IBAction func signOut(_ sender: Any) {
        do{
            try Auth.auth().signOut()
            dismiss(animated: true, completion: nil)
        } catch {
            print("There was a problem logging out please try again.")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    



}
