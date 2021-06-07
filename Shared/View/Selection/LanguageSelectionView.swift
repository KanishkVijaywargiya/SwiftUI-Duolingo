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
                    NavigationLink(destination: HearSelectionView(language: language.lang)) {
                        ListView(image: language.image, text: language.lang, color: language.color)
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
            
            CustomNavigationView(progressColor: Color(#colorLiteral(red: 0.537254902, green: 0.8862745098, blue: 0.09803921569, alpha: 1)), progressValue: 0.16, title: "I want to learn...", image: "arrow.backward")
        }
    }
}

struct LanguageSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        LanguageSelectionView()
    }
}
