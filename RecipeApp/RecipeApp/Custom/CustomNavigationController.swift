//
//  CustomNavigationController.swift
//  RecipeApp
//
//  Created by Ilya Pashkov on 7/1/19.
//  Copyright © 2019 Ilya Pashkov. All rights reserved.
//

import UIKit

class CustomNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        makeBarInvisible()
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    func makeBarInvisible() -> Void {
        navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationBar.shadowImage = UIImage()
        navigationBar.isTranslucent = true
    }
    
    func setUpProperties() -> Void {
        navigationController?.navigationBar.layer.frame.origin.y = 24
    }

}
