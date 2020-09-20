//
//  LoginViewController.swift
//  ChapMan
//
//  Created by Elizabeth Luu on 1/4/20.
//  Copyright © 2020 Elizabeth Luu. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var errorLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpElements()
    }
    
    func setUpElements() {
        // Hide error label
        errorLabel.alpha = 0
        
        // Style the elements
        Utilities.styleFilledButton(loginButton)
        
        // Hides password entry
        passwordTextField.isSecureTextEntry = true
    }
    @IBAction func loginTapped(_ sender: Any) {
        // Validate the fields
        let error = validateFields()
        if error != nil {
            // There's something wrong with the fields, show error message
            showError(error!)
        } else {
            // Create cleaned versions of data
            let email = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let password = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            
            // Sign in user
            Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
                if error != nil {
                    // Couldnt's sign in
                    self.showError("Incorrent email or password or user does not exist")
                } else {
                    self.transitionToHome()
                }
            }
        }
            
        
    }
    
    func validateFields() -> String? {
        // Check all fields filled in
        if  emailTextField.text?.trimmingCharacters(in: .whitespaces) == "" ||
                passwordTextField.text?.trimmingCharacters(in: .whitespaces) == "" {
            return "Please fill in all fields"
        }
        return nil
    }
    
    func showError(_ message: String) {
        errorLabel.text = message
        errorLabel.alpha = 1
    }
    
    func transitionToHome() {
       let homeViewController = storyboard!.instantiateViewController(identifier: Constants.StoryBoard.homeViewController) as? HomeViewController
        
        view.window?.rootViewController = homeViewController
        view.window?.makeKeyAndVisible()
    }
}
