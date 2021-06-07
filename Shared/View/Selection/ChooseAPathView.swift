//
//  ChooseAPathView.swift
//  duolingo (iOS)
//
//  Created by KANISHK VIJAYWARGIYA on 07/06/21.
//

import SwiftUI

struct ChooseAPathView: View {
    let language: String
    
    var body: some View {
        ZStack {
            NavigationView {
                Text("")
            }
            .navigationBarHidden(true)
            Color.white.edgesIgnoringSafeArea(.all)
            
            VStack {
                Button(action: {}) {
                    HStack {
                        Image("learningLang")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 100, height: 100)
                            .padding([.vertical, .horizontal], 5)
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Learning \(language) for the first time?")
                                .font(.system(size: 18, weight: .semibold))
                                .foregroundColor(.black)
                            Text("Start from scratch!")
                                .font(.system(size: 18))
                                .foregroundColor(.black)
                        }
                    }
                    .padding()
                    .frame(width: 360, height: 120)
                    .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                }
                .cornerRadius(10)
                .shadow(color: Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), radius: 1, x: 0, y: 5)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray, lineWidth: 1.0)
                )
                .padding(.bottom, 20)
                
                Button(action: {}) {
                    HStack {
                        Image("alreadyKnow")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 100, height: 100)
                            .padding([.vertical, .horizontal], 5)
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Already know some \(language)?")
                                .font(.system(size: 18, weight: .semibold))
                                .foregroundColor(.black)
                            Text("Check your level here!")
                                .font(.system(size: 18))
                                .foregroundColor(.black)
                        }
                    }
                    .padding()
                    .frame(width: 360, height: 120)
                    .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                }
                .cornerRadius(10)
                .shadow(color: Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), radius: 1, x: 0, y: 5)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray, lineWidth: 1.0)
                )
            }
            
            CustomNavigationView(progressValue: 1, title: "Choose a path", image: "arrow.backward")
        }
    }
}

struct ChooseAPathView_Previews: PreviewProvider {
    static var previews: some View {
        ChooseAPathView(language: "Hindi")
    }
}
