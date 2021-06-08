//
//  GetStartedView2.swift
//  duolingo (iOS)
//
//  Created by KANISHK VIJAYWARGIYA on 05/06/21.
//

import SwiftUI

struct GetStartedView: View {
    @State private var showingSignInScreen = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.white.edgesIgnoringSafeArea(.all)
                
                VStack {
                    Spacer()
                    NavigationLink(destination: LanguageSelectionView()) {
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
                    .navigationBarHidden(true)
                    
                    Button(action: {
                        self.showingSignInScreen.toggle()
                    }) {
                        Text("I already have an account")
                            .textCase(.uppercase)
                            .font(.system(size: 20, weight: .semibold))
                            .frame(width: 360, height: 52)
                            .foregroundColor(Color(#colorLiteral(red: 0.3450980392, green: 0.8, blue: 0.007843137255, alpha: 1)))
                    }
                    .sheet(isPresented: $showingSignInScreen){
                        LoginView()
                    }
                    .cornerRadius(10.0)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 1.0)
                    )
                }
                LogoTextView()
            }
        }
    }
}

struct GetStartedView_Previews: PreviewProvider {
    static var previews: some View {
        GetStartedView()
    }
}

struct LogoTextView: View {
    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
            
            AutoCarousel()
            
            Spacer()
        }.padding(.top, 20)
    }
}
