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
                .animation(Animation
                                         .spring()
                                         .repeatCount(3,autoreverses: true))
                             .offset(x: isAnimated ? 500 : 0)
            
            Spacer()

            //Inputs
            CustomTextField(placeHolder: "Username", text: $username,leadingIconName: "username")
            CustomTextField(placeHolder: "password", text: $password,leadingIconName: "key",trainlingIconName:"seen",keyboardType: .asciiCapableNumberPad)
            CustomTextField(placeHolder: "email address", text: $email,leadingIconName: "email",trainlingIconName: nil,keyboardType:.emailAddress)
            
            "Forgotten password?"
                .subheadlineText
                .foregroundColor(DesignSystem.Colors.text.color.toColor)
                .frame(maxWidth: .infinity, alignment: .trailing)
            
            Spacer()
            
            //Actions
            VStack (spacing:14){
                ButtonAnimationView()
                HStack{
                    "Don’t have an account?".subheadlineText
                        .foregroundColor(DesignSystem.Colors.text.color.toColor)
                    "Sign up".subheadlineText
                        .foregroundColor(DesignSystem.Colors.text.color.toColor)
                        .fontWeight(.bold)
                }
            }
           

        }.padding(36.5)
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
