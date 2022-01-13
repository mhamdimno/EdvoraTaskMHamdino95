//
//  String+Extentions.swift
//  EdvoraTaskMHamdino95
//
//  Created by A One Way To Allah on 1/12/22.
//

import SwiftUI

extension String{
    
    //MARK: -TEXT

    var bodyText:Text{
        Text(self).font(.init(DesignSystem.Typography.body.font))
    }
    var captionText:Text{
        Text(self).font(.init(DesignSystem.Typography.caption.font))
    }
    var subheadlineText:Text{
        Text(self).font(.init(DesignSystem.Typography.subheadline.font))
    }
    var titleText:Text{
        Text(self).font(.init(DesignSystem.Typography.title.font))
    }
    
    //MARK: -IMAGE

    var toImage:Image{
        Image(self)
    }
}
