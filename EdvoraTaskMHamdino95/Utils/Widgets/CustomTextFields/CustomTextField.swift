//
//  CustomTextField.swift
//  EdvoraTaskMHamdino95
//
//  Created by A One Way To Allah on 1/12/22.
//

import SwiftUI

struct CustomTextField: View {
    let textFieldHeight: CGFloat = KcommonViewHeight
    private let placeHolderText: String
    @Binding var text: String
     var leadingIconName: String?
     var trainlingIconName: String?
    var keyboardType:UIKeyboardType = .default
    @State private var isEditing = false
    public init(placeHolder: String,
                text: Binding<String>,leadingIconName: String?=nil,trainlingIconName: String?=nil,keyboardType:UIKeyboardType = .default) {
       
        self._text = text
        self.leadingIconName = leadingIconName
        self.trainlingIconName = trainlingIconName
        self.placeHolderText = placeHolder
        self.keyboardType = keyboardType

    }
    var shouldPlaceHolderMove: Bool {
        isEditing || (text.count != 0)
    }
    var body: some View {
        ZStack(alignment: .leading) {
            HStack {
                leadingIconName?.toImage.foregroundColor(DesignSystem.Colors.inputLabel.color)
                TextField("", text: $text, onEditingChanged: { (edit) in
                    isEditing = edit
                })
                .secure(trainlingIconName != nil)
                .keyboardType(keyboardType)
                trainlingIconName?.toImage.foregroundColor(DesignSystem.Colors.primary.color)
            }
            .padding()
            .overlay(RoundedRectangle(cornerRadius: KcommonCornerRadius).stroke(isEditing ? DesignSystem.Colors.primary.color : DesignSystem.Colors.border.color, lineWidth: 1)
                        .frame(height: textFieldHeight))
            .font(.init(trainlingIconName == nil ? DesignSystem.Typography.body.font:DesignSystem.Typography.caption.font))
            .accentColor(isEditing ? DesignSystem.Colors.border.color : DesignSystem.Colors.border.color)
            .animation(.easeInOut)
            .background(DesignSystem.Colors.background.color)
            //Floating Placeholder
            placeHolderText.captionText.padding([.leading,.trailing],5)
                .foregroundColor(DesignSystem.Colors.inputLabel.color)
                .background(Color(.systemBackground))
            .padding(
                     EdgeInsets(top: 8, leading:15, bottom: textFieldHeight, trailing: 0)
                     )
            .scaleEffect(shouldPlaceHolderMove ? 1.0 : 1.2)
            .animation(.easeInOut)
        }
    }
}
