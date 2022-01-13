//
//  Colors.swift
//  DesignSystem
//
//  Created by A One Way To Allah on 9/30/21.
//

import UIKit

extension DesignSystem{
    
    enum Colors:String {
        case background
        case inputLabel
        case primary
        case secondry
        case text
        case border
        case buttonText

        var color: UIColor {
            return UIColor(named: self.rawValue)!
        }
    }
}
