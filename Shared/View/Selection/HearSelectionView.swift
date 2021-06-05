//
//  HearSelectionView2.swift
//  duolingo (iOS)
//
//  Created by KANISHK VIJAYWARGIYA on 05/06/21.
//

import SwiftUI

struct HearSelectionView: View {
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
                ForEach(hears) { hear in
                    NavigationLink(destination: Text("Detail")) {
                        Text("\(hear.text)")
                            .font(.system(size: 24, weight: .semibold))
                            .foregroundColor(hear.color)
                    }
                }
            }
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color(#colorLiteral(red: 0.8980392157, green: 0.8980392157, blue: 0.8980392157, alpha: 1)), lineWidth: 2)
            )
            .padding(.vertical, 10)
            .padding(.horizontal, 20)
            .padding(.top, 80)
            
            CustomNavigationView(title: "How", image: "arrow.backward")
        }
    }
}

struct HearSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        HearSelectionView()
    }
}
