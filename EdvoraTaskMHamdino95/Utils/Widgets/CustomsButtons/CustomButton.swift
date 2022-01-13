//
//  CustomButton.swift
//  EdvoraTaskMHamdino95
//
//  Created by A One Way To Allah on 1/13/22.
//

import SwiftUI

struct ButtonAnimationView: View {
    
    @State private var downloadButtonTapped = false
    @State private var loading = false
    @State private var fullcircle = false
    @State private var completed = false
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: self.downloadButtonTapped ? KcommonViewHeight/2 : KcommonCornerRadius)
                .trim(from: 0, to: self.fullcircle ? 0.95 : 1)
                .stroke(lineWidth: self.downloadButtonTapped ? 5 : 0)
                .frame(width: self.downloadButtonTapped ? KcommonViewHeight  : nil, height: KcommonViewHeight)
                .foregroundColor(downloadButtonTapped ? DesignSystem.Colors.primary.color.toColor : DesignSystem.Colors.primary.color.toColor)
                .background(self.downloadButtonTapped ? .white : DesignSystem.Colors.primary.color.toColor)
                .cornerRadius(self.downloadButtonTapped ? KcommonViewHeight/2 : KcommonCornerRadius)
                .rotationEffect(Angle(degrees: self.loading ? 0 : -1440))
                .onTapGesture {
                    withAnimation(.default) {
                        self.downloadButtonTapped = true
                        self.fullcircle = true
                    }
                }
            
            if !downloadButtonTapped {
                "Login".titleText
                    .foregroundColor(DesignSystem.Colors.buttonText.color.toColor)
                    .onDisappear() {
                        self.startProcessing()
                    }
            }
            
            if completed {
                CheckView()
                    .offset(x: -5, y: 9)
                    .foregroundColor(DesignSystem.Colors.primary.color.toColor)
            }
        }
    }
    
    private func startProcessing() {
        withAnimation(Animation.linear(duration: 5)) {
            self.loading = true
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
            self.completed = true
            self.fullcircle = false
        }
    }
}

struct ButtonAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonAnimationView()
    }
}
