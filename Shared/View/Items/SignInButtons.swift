//
//  SignInButtons.swift
//  duolingo (iOS)
//
//  Created by KANISHK VIJAYWARGIYA on 05/06/21.
//

import SwiftUI

struct SignInButtons: View {
    let image: String
    let text: String
    
    var body: some View {
        Button(action: {}) {
            HStack {
                Image(image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .padding([.vertical, .horizontal], 5)
                
                Text(text)
                    .textCase(.uppercase)
                    .font(.system(size: 20, weight: .semibold))
                    .padding(.horizontal, 5)
                    .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                
            }
            .frame(width: 360, height: 60)
            .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
        }
        .cornerRadius(10)
        .shadow(color: Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), radius: 1, x: 0, y: 5)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray, lineWidth: 1.0)
        )
    }
}

struct SignInButtons_Previews: PreviewProvider {
    static var previews: some View {
        SignInButtons(image: "cover", text: "Sign IN")
    }
}
