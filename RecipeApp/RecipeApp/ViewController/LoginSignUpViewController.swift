//
//  LoginSignUpViewController.swift
//  RecipeApp
//
//  Created by Ilya Pashkov on 6/30/19.
//  Copyright © 2019 Ilya Pashkov. All rights reserved.
//

import UIKit

class LoginSignUpViewController: UIViewController {
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var dontHaveAccount: UILabel!
    @IBOutlet weak var signUpButton: UIButton!
    
    // First laoding
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpProperties()
    }
    
    // Sets up UI elements
    func setUpProperties() {
        let organe: UIColor = CustomColor(withFrame: loginButton.frame).getOrangeColor()
        
        //Login button
        loginButton.layer.backgroundColor = organe.cgColor
        loginButton.layer.cornerRadius = loginButton.layer.frame.height / 2
        
        //Login spacing
        let loginSpacing = 1.5
        let loginSpacingButtonAttributedString = NSMutableAttributedString(string: (loginButton.titleLabel?.text)!)
        loginSpacingButtonAttributedString.addAttribute(NSAttributedString.Key.kern, value: loginSpacing, range: NSMakeRange(0, loginSpacingButtonAttributedString.length))
        loginButton.setAttributedTitle(loginSpacingButtonAttributedString, for: .normal)
        
        //Label spacing
        let labelSpacing = 1
        let labelAttributedString = NSMutableAttributedString(string: dontHaveAccount.text!)
        labelAttributedString.addAttribute(NSAttributedString.Key.kern, value: labelSpacing, range: NSMakeRange(0, labelAttributedString.length))
        dontHaveAccount.attributedText = labelAttributedString
        
        //Sign Up button
        signUpButton.layer.borderWidth = 2
        signUpButton.layer.borderColor = organe.cgColor
        signUpButton.layer.cornerRadius = loginButton.layer.frame.height / 2
        
        let spacing = 1.5
        let singUpSpacingButtonAttributedString = NSMutableAttributedString(string: (signUpButton.titleLabel?.text)!)
        singUpSpacingButtonAttributedString.addAttribute(NSAttributedString.Key.kern, value: spacing, range: NSMakeRange(0, singUpSpacingButtonAttributedString.length))
        signUpButton.setAttributedTitle(singUpSpacingButtonAttributedString, for: .normal)
        
    }
    
}
