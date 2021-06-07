//
//  LoginView.swift
//  duolingo (iOS)
//
//  Created by KANISHK VIJAYWARGIYA on 05/06/21.
//

import SwiftUI

struct LoginView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "xmark")
                        .resizable()
                        .frame(maxWidth: 20, maxHeight: 20)
                        .padding(.horizontal, 10)
                        .foregroundColor(.black)
                }
                
                Spacer()
                
                Text("Enter your detail")
                    .textCase(.uppercase)
                    .font(.system(size: 20, weight: .semibold))
                    .padding(.trailing, 20)
                
                Spacer()
            }
            .padding([.vertical, .horizontal], 20)
            
            
            
            Button(action: {}) {
                Text("Sign in")
                    .textCase(.uppercase)
                    .font(.system(size: 20, weight: .semibold))
                    .frame(width: 360, height: 52)
                    .background(Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)))
                    .foregroundColor(.white)
            }
            .cornerRadius(10)
            .shadow(color: Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)), radius: 1, x: 0, y: 5)
            .padding()
            
            Spacer()
            
            SignInButtons(image: "googleLogin", text: "Sign in with google")
            
            SignInButtons(image: "facebookLogin", text: "Sign in with facebook")
                .padding()
            
            SignInButtons(image: "emailLogin", text: "Sign in with email")
            
            VStack {
                Text("By signing in to Duolingo, you agree to our")
                    .font(.system(size: 17, weight: .regular)) +
                    Text(" Terms")
                    .font(.system(size: 17, weight: .semibold)) +
                    Text(" and")
                    .font(.system(size: 17, weight: .regular)) +
                    Text(" Privacy Policy")
                    .font(.system(size: 17, weight: .semibold))
            }.padding([.vertical, .horizontal], 8)
            .multilineTextAlignment(.center)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
