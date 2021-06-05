//
//  LanguageSelectionView2.swift
//  duolingo (iOS)
//
//  Created by KANISHK VIJAYWARGIYA on 05/06/21.
//

import SwiftUI

struct LanguageSelectionView: View {
    @Environment(\.presentationMode) var presentationMode
    
    init() {
        UITableView.appearance().showsVerticalScrollIndicator = false
    }
    
    var body: some View {
        ZStack {
            NavigationView {
                Text("")
            }
            .navigationBarHidden(true)
            Color.white.edgesIgnoringSafeArea(.all)
            
            List {
                ForEach(languages) { language in
                    NavigationLink(destination: HearSelectionView()) {
                        HStack {
                            Image("cover")
                                .resizable()
                                .scaledToFill()
                                .frame(maxWidth: 50, maxHeight: 50)
                                .padding([.horizontal, .vertical], 8.0)
                            
                            Text("\(language.lang)")
                                .font(.system(size: 24, weight: .semibold))
                                .foregroundColor(language.color)
                        }
                    }
                }
            }
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color(#colorLiteral(red: 0.8980392157, green: 0.8980392157, blue: 0.8980392157, alpha: 1)), lineWidth: 2)
            )
            .padding(.vertical, 30)
            .padding(.horizontal, 20)
            .padding(.top, 80)
            
            CustomNavigationView(title: "I want to learn...", image: "arrow.backward")
        }
    }
}

struct LanguageSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        LanguageSelectionView()
    }
}
