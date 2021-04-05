//
//  ViewController.swift
//  Keychain
//
//  Created by macbook on 05/04/2021.
//

import UIKit
import SwiftKeychainWrapper

class ViewController: UIViewController {

    
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func savePasswordButtonTapped(_ sender: UIButton) {
        if let password = passwordTextField.text {
                  let saveSuccessful: Bool = KeychainWrapper.standard.set(password, forKey: "userPassword")
                  print("Save was successful: \(saveSuccessful)")
                  self.view.endEditing(true)
              }
       }
    
    @IBAction func retrievePasswordButtonTapped(_ sender: UIButton) {
           let retrievedPassword: String? = KeychainWrapper.standard.string(forKey: "userPassword")
        passwordTextField.text=retrievedPassword
           print("Retrieved passwork is: \(retrievedPassword!)")
       } 
    
}

