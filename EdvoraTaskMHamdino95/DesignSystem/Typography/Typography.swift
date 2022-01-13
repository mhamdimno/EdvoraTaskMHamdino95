//
//  Typography.swift
//  DesignSystem
//
//  Created by A One Way To Allah on 10/5/21.
//

import UIKit

extension DesignSystem{
    
    enum Typography :String {
    
        case body
        case title
        case subheadline
        case caption
       
        private var fontDescription: CustomFontDescriptor {
              switch self {
              
              case .caption:
                return CustomFontDescriptor(font: .medium, size: 12, style: .caption1)
              case .body:
                return CustomFontDescriptor(font: .regular, size: 17, style: .caption1)
              case .subheadline:
                return CustomFontDescriptor(font: .medium, size: 15, style: .subheadline)
              case .title:
                return CustomFontDescriptor(font: .semiBold, size: 20, style: .title3)
           
              }
          }
        var font:UIFont{
            guard let font = UIFont(name: fontDescription.font.name, size: fontDescription.size) else {
                      return UIFont.preferredFont(forTextStyle: fontDescription.style)
                  }
                  let fontMetrics = UIFontMetrics(forTextStyle: fontDescription.style)
                  return fontMetrics.scaledFont(for: font)
        }
    }
}
