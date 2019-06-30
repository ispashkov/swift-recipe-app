//
//  CustomTextField.swift
//  RecipeApp
//
//  Created by Ilya Pashkov on 6/30/19.
//  Copyright © 2019 Ilya Pashkov. All rights reserved.
//

import UIKit

class CustomTextField: UITextField {

    // First loading func
    override init(frame: CGRect) {
        super.init(frame: frame)
        defaultSetup()
    }
    
    // Fist required loading func
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        defaultSetup()
    }
    
    func defaultSetup() -> Void {
        layer.borderWidth = 2
        layer.borderColor = UIColor(hexString: "E0E0E0", withAlpha: 1)?.cgColor
        layer.sublayerTransform = CATransform3DMakeTranslation(12, 0, 0)
        
        self.attributedPlaceholder = NSAttributedString(string: self.placeholder!, attributes: [NSAttributedString.Key.foregroundColor: UIColor(hexString: "9E9E9E", withAlpha: 1)!])
    }

}
