//
//  UIBundle+Extention.swift
//  Fleez
//
//  Created by A One Way To Allah on 10/10/21.
//  Copyright © 2021 A One Way To Allah. All rights reserved.
//

import UIKit


extension Double{
    
    var estimatedHeight:CGFloat{
        return CGFloat((self/812))*UIScreen.main.bounds.height
    }
    var estimatedWidth:CGFloat{
        return CGFloat((self/414))*UIScreen.main.bounds.width
    }
  
  
}
