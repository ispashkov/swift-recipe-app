//
//  CustomColor.swift
//  RecipeApp
//
//  Created by Ilya Pashkov on 6/30/19.
//  Copyright © 2019 Ilya Pashkov. All rights reserved.
//

import Foundation
import ChameleonFramework

struct CustomColor {
    
    let orange: UIColor!
    
    init(withFrame: CGRect) {
        let firstColor = UIColor(hexString: "FF8C2B", withAlpha: 1)
        let secondColor = UIColor(hexString: "FF6322", withAlpha: 1)
        
        orange = UIColor(gradientStyle: .leftToRight, withFrame: withFrame, andColors: [firstColor!, secondColor!])
    }
    
    func getOrangeColor() -> UIColor {
        return orange
    }
}
