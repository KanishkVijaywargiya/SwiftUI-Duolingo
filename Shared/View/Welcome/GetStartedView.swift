//
//  GetStartedView.swift
//  duolingo (iOS)
//
//  Created by KANISHK VIJAYWARGIYA on 02/06/21.
//

import SwiftUI

struct GetStartedView: View {
    @State private var hasTitle = true
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                LogoWithText()
                
                Spacer()
                
                NavigationLink(destination: LanguageSelectionView()
                                .onAppear {
                                    self.hasTitle = false
                                }
                                .onDisappear {
                                    self.hasTitle = true
                                }
                ) {
                    Text("Get Started")
                        .textCase(.uppercase)
                        .font(.system(size: 20, weight: .semibold))
                        .frame(width: 360, height: 52)
                        .background(Color(#colorLiteral(red: 0.537254902, green: 0.8862745098, blue: 0.09803921569, alpha: 1)))
                        .foregroundColor(.white)
                }
                .cornerRadius(10.0)
                .shadow(color: Color(#colorLiteral(red: 0.3450980392, green: 0.8, blue: 0.007843137255, alpha: 1)), radius: 1, x: 0, y: 5)
                .padding()
                
                Button(action: {}) {
                    Text("I already have an account")
                        .textCase(.uppercase)
                        .font(.system(size: 20, weight: .semibold))
                        .frame(width: 360, height: 52)
                        .foregroundColor(Color(#colorLiteral(red: 0.3450980392, green: 0.8, blue: 0.007843137255, alpha: 1)))
                }
                .cornerRadius(10.0)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray, lineWidth: 1.0)
                )
            }
            .navigationBarHidden(self.hasTitle ? true : true)
        }
    }
}

struct GetStartedView_Previews: PreviewProvider {
    static var previews: some View {
        GetStartedView()
    }
}

struct LogoWithText: View {
    var body: some View {
        VStack {
            Image("cover")
                .resizable()
                .scaledToFill()
                .frame(maxWidth: 180, maxHeight: 180)
                .padding(.bottom, 8.0)
            
            Text("Learn a language for free.")
                .font(.system(size: 25, weight: .light))
                .foregroundColor(.secondary)
                .padding(.bottom, 6.0)
            
            Text("Forever.")
                .font(.system(size: 25, weight: .light))
                .foregroundColor(.secondary)
        }
        .padding(.bottom, 25)
    }
}
