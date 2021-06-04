//
//  LanguageSelectionVIew.swift
//  duolingo (iOS)
//
//  Created by KANISHK VIJAYWARGIYA on 02/06/21.
//

import SwiftUI

struct LanguageSelectionView: View {
    @Environment(\.presentationMode) var presentationMode
    
    @State private var hasTitle = true
    @State private var selectedlanguage = "Hindi"
    
    let languages =
        [
            "Hindi","English", "Gujarati", "Punjabi", "Bengali", "Bhojpuri", "Telugu", "Tamil", "Kannada", "Marathi", "Malayalam", "Nepali", "Sanskrit", "Urdu", "Rajasthani", "Assamese", "Haryanvi"
        ]
    
    init() {
        UITableView.appearance().showsVerticalScrollIndicator = false
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(languages, id: \.self) { language in
                    NavigationLink(destination: HearSelectionView(language: language)
                                    .onAppear {
                                        self.hasTitle = false
                                    }
                                    .onDisappear {
                                        self.hasTitle = true
                                    }
                    ) {
                        HStack {
                            Image("cover")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50, height:50)
                            
                            Text(language)
                                .font(.system(size: 20, weight: .semibold))
                                .padding(.horizontal, 15)
                        }
                    }
                }
            }
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color(#colorLiteral(red: 0.8980392157, green: 0.8980392157, blue: 0.8980392157, alpha: 1)), lineWidth: 2)
            )
            .padding(.vertical, 10)
            .padding(.horizontal, 20)
            .navigationBarTitle(self.hasTitle ? Text("I want to learn...") : Text(""), displayMode: .large)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "arrow.backward")
                    }
                }
            }
            .navigationBarHidden(self.hasTitle ? false : true)
        }
    }
}

struct LanguageSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        LanguageSelectionView()
    }
}
