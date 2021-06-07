//
//  HearSelectionView2.swift
//  duolingo (iOS)
//
//  Created by KANISHK VIJAYWARGIYA on 05/06/21.
//

import SwiftUI

struct HearSelectionView: View {
    @Environment(\.presentationMode) var presentationMode
    
    let language: String
    
//    init() {
//        UITableView.appearance().showsVerticalScrollIndicator = false
//    }
    
    var body: some View {
        ZStack {
            NavigationView {
                Text("")
            }
            .navigationBarHidden(true)
            Color.white.edgesIgnoringSafeArea(.all)
            
            List {
                ForEach(hears) { hear in
                    NavigationLink(destination: NewLearningLanguage(language: language)) {
                        Text("\(hear.text)")
                            .font(.system(size: 24, weight: .semibold))
                            .foregroundColor(hear.color)
                            .padding([.vertical, .horizontal], 10)
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
            
            CustomNavigationView(progressColor: Color(#colorLiteral(red: 0.537254902, green: 0.8862745098, blue: 0.09803921569, alpha: 1)), progressValue: 0.32, title: "How did you hear about us?", image: "arrow.backward")
        }
    }
}

struct HearSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        HearSelectionView(language: "")
    }
}
