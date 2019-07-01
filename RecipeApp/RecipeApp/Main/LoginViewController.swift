//
//  LoginViewController.swift
//  RecipeApp
//
//  Created by Ilya Pashkov on 6/30/19.
//  Copyright © 2019 Ilya Pashkov. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var emailTextField: CustomTextField!
    @IBOutlet weak var passwordTextField: CustomTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func backButtonTapped(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
}