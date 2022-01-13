//
//  LoginView.swift
//  EdvoraTaskMHamdino95
//
//  Created by A One Way To Allah on 1/11/22.
//

import SwiftUI

struct LoginView: View {
    
    //MARK: - Properities
    @State var username: String = ""
    @State var password: String = ""
    @State var email: String = ""

    @State var isAnimated: Bool = true

    
    //MARK: - View
    var body: some View {
        VStack {
            //Logo
            AuthLogo()
                .scaleEffect(isAnimated ? 0.5 : 1)
                .animation(Animation.easeInOutSlow.repeatForever(autoreverses: true))
            
            Spacer()

            //Inputs
            CustomTextField(placeHolder: "Username", text: $username,leadingIconName: "username")
            CustomTextField(placeHolder: "password", text: $password,leadingIconName: "key",trainlingIconName:"seen",keyboardType: .asciiCapableNumberPad)
            CustomTextField(placeHolder: "email address", text: $email,leadingIconName: "email",trainlingIconName: nil,keyboardType:.emailAddress)
            
            "Forgotten password?"
                .subheadlineText
                .foregroundColor(DesignSystem.Colors.text.color)
                .frame(maxWidth: .infinity, alignment: .trailing)
            
            Spacer()
            
            //Actions
            VStack (spacing:14){
                ButtonAnimationView()
                    .animation(Animation.frameSpring)
                    .frame(width: isAnimated ? 80 : nil)
                HStack{
                    "Don’t have an account?".subheadlineText
                        .foregroundColor(DesignSystem.Colors.text.color)
                    "Sign up".subheadlineText
                        .foregroundColor(DesignSystem.Colors.text.color)
                        .fontWeight(.bold)
                }
            }
           

        }.padding(Khorizontalpadding)
        
        .onAppear{
                isAnimated=false
          
        }
        

    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
