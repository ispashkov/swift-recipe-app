//
//  LoginSignUpViewController.swift
//  RecipeApp
//
//  Created by Ilya Pashkov on 6/30/19.
//  Copyright © 2019 Ilya Pashkov. All rights reserved.
//

import UIKit

class LoginSignUpViewController: UIViewController {
    @IBOutlet weak var loginButton: CustomButton!
    @IBOutlet weak var dontHaveAccount: CustomLabel!
    @IBOutlet weak var signUpButton: CustomButton!
    @IBOutlet weak var logoLabel: CustomLabel!
    
    // First laoding
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpProperties()
    }
    
    // Sets up UI elements
    func setUpProperties() {
        signUpButton.makeOutlineButton()
        logoLabel.setSpacing(space: 1.75)
    }
}
