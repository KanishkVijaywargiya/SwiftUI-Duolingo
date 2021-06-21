//
//  Demo2.swift
//  duolingo (iOS)
//
//  Created by KANISHK VIJAYWARGIYA on 09/06/21.
//

import SwiftUI

struct Demo2: View {
    let title: String
    let image: String
    let text: String
    let buttonName: String
    let cardBackground: Color
    let cardShadow: Color
    
    var body: some View {
        ZStack {
            NavigationView {
                Text("")
            }
            .navigationBarHidden(true)
            
            Color.accentColor.edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading, spacing: 10) {
                Text(title)
                    .font(.system(size: 34, weight: .semibold))
                    .foregroundColor(Color.white)
                    .padding(.top, 20)
                    .padding(.horizontal, 20)
                
                Spacer()
                
                HStack {
                    ForEach(0..<2) { _ in
                        Button(action: {}) {
                            VStack {
                                Image(image)
                                    .resizable()
                                    .scaledToFill()
                                
                                Spacer()
                                
                                Text(text)
                                    .font(.system(size: 22, weight: .semibold))
                                    .foregroundColor(.white)
                            }
                            .frame(maxWidth: 150, maxHeight: 180)
                            .padding()
                            .background(cardBackground)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                        }.shadow(color: cardShadow, radius: 1, x: 0, y: 5)
                        .animation(.easeInOut(duration: 0.5))
                        .padding(.horizontal, 5)
                    }
                }.padding()
                
                HStack {
                    ForEach(0..<2) { _ in
                        Button(action: {}) {
                            VStack {
                                Image(image)
                                    .resizable()
                                    .scaledToFill()
                                
                                Spacer()
                                
                                Text(text)
                                    .font(.system(size: 22, weight: .semibold))
                                    .foregroundColor(.white)
                            }
                            .frame(maxWidth: 150, maxHeight: 180)
                            .padding()
                            .background(cardBackground)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                        }.shadow(color: cardShadow, radius: 1, x: 0, y: 5)
                        .animation(.easeInOut(duration: 0.5))
                        .padding(.horizontal, 5)
                    }
                }.padding()
                
                Spacer()
                
                Button(action: {}) {
                    Text(buttonName)
                        .font(.system(size: 22, weight: .semibold))
                        .foregroundColor(.white)
                        .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: 50)
                        .background(cardBackground)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                }
                .padding()
                .shadow(color: cardShadow, radius: 1, x: 0, y: 5)
                .animation(.easeInOut(duration: 0.5))
            }
        }
    }
}

struct Demo2_Previews: PreviewProvider {
    static var previews: some View {
        Demo2(title: "Gamification demo", image: "alreadyKnow", text: "Boy", buttonName: "Check",cardBackground: Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)), cardShadow: Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
    }
}
