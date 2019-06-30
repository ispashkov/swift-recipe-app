//
//  CustomLabel.swift
//  RecipeApp
//
//  Created by Ilya Pashkov on 6/30/19.
//  Copyright © 2019 Ilya Pashkov. All rights reserved.
//

import UIKit

class CustomLabel: UILabel {

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
        let labelSpacing = 1
        let labelAttributedString = NSMutableAttributedString(string: self.text!)
        labelAttributedString.addAttribute(NSAttributedString.Key.kern, value: labelSpacing, range: NSMakeRange(0, labelAttributedString.length))
        self.attributedText = labelAttributedString
    }
    
    func setSpacing(space: CGFloat) -> Void {
        let labelAttributedString = NSMutableAttributedString(string: self.text!)
        labelAttributedString.addAttribute(NSAttributedString.Key.kern, value: space, range: NSMakeRange(0, labelAttributedString.length))
        self.attributedText = labelAttributedString
    }

}
