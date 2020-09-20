//
//  SignUpViewController.swift
//  ChapMan
//
//  Created by Elizabeth Luu on 1/4/20.
//  Copyright © 2020 Elizabeth Luu. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    
    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var signUpButton: UIButton!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpElements()
        
    }
    
    func setUpElements() {
        //Hide error label
        errorLabel.alpha = 0
        // Style system elements
        Utilities.styleTextField(firstNameTextField)
        Utilities.styleTextField(lastNameTextField)
        Utilities.styleTextField(emailTextField)
        Utilities.styleTextField(passwordTextField)
        Utilities.styleFilledButton(signUpButton)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    // Check fields and validate that data is correct
    // If everything is correct, methods returns nil
    // Otherwise retuns error message
    func validateFields() -> String? {
        // Check all fields filled in
        if  firstNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || lastNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            emailTextField.text?.trimmingCharacters(in: .whitespaces) == "" ||
                passwordTextField.text?.trimmingCharacters(in: .whitespaces) == "" {
            return "Please fill in all fields"
        }
        
        
        return nil
    }

    @IBAction func signUpTapped(_ sender: Any) {
        // Validate the fields
        
        // Create the user
        
        // Transition to homescreen
    }
    
    
    
    
}
