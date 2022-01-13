//
//  Texts.swift
//  EdvoraTaskMHamdino95
//
//  Created by A One Way To Allah on 1/13/22.
//

import SwiftUI

extension String{

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
    
}
