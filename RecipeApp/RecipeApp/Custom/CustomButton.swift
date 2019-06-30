//
//  CustomButton.swift
//  RecipeApp
//
//  Created by Ilya Pashkov on 6/30/19.
//  Copyright © 2019 Ilya Pashkov. All rights reserved.
//

import UIKit

class CustomButton: UIButton {
    
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
    
    // Customizes the button to orange background color
    func defaultSetup() -> Void {
        let organe: UIColor = CustomColor(withFrame: frame).getOrangeColor()
        
        layer.borderWidth = 2
        layer.borderColor = organe.cgColor
        layer.backgroundColor = organe.cgColor
        layer.cornerRadius = layer.frame.height / 2
        layer.masksToBounds = true
        
        // Spacing
        let spacing = 1.5
        let buttonAttributedString = NSMutableAttributedString(string: (titleLabel?.text)!)
        buttonAttributedString.addAttribute(NSAttributedString.Key.kern, value: spacing, range: NSMakeRange(0, buttonAttributedString.length))
        self.setAttributedTitle(buttonAttributedString, for: .normal)
    }
    
    func makeOutlineButton() -> Void {
        backgroundColor = .white
    }
}
