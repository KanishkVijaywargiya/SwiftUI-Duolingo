//
//  NewLearningLanguage.swift
//  duolingo (iOS)
//
//  Created by KANISHK VIJAYWARGIYA on 07/06/21.
//

import SwiftUI

struct NewLearningLanguage: View {
    @State var progressBarValue: Double = 0.32
    
    let language: String
    
    var body: some View {
        ZStack {
            NavigationView {
                Text("")
            }
            .navigationBarHidden(true)
            
            List {
                ForEach(whyNewLanguage) { whyNewLanguages in
                    NavigationLink(destination: CourseOverviewView(language: language)) {
                        ListView(image: whyNewLanguages.image, text: whyNewLanguages.text, color: whyNewLanguages.color)
                    }
                }
            }
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color(#colorLiteral(red: 0.8980392157, green: 0.8980392157, blue: 0.8980392157, alpha: 1)), lineWidth: 2)
            )
            .padding(.vertical, 70)
            .padding(.horizontal, 20)
            .padding(.top, 80)
            
            CustomNavigationView(progressColor: Color(#colorLiteral(red: 0.537254902, green: 0.8862745098, blue: 0.09803921569, alpha: 1)), progressValue: $progressBarValue, title: "Why are you learning a language?", image: "arrow.backward")
        }.onAppear {
            Timer.scheduledTimer(withTimeInterval: 0.3, repeats: true) { timer in
                self.progressBarValue += 0.16
                if (self.progressBarValue >= 0.48) {
                    timer.invalidate()
                }
            }
        }
    }
}

struct NewLearningLanguage_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(ColorScheme.allCases, id: \.self, content: NewLearningLanguage(language: "").preferredColorScheme)
        
    }
}
