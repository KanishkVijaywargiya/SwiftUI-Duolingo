//
//  WhyNewLanguage.swift
//  duolingo (iOS)
//
//  Created by KANISHK VIJAYWARGIYA on 07/06/21.
//

import SwiftUI

struct WhyNewLanguage: Identifiable {
    var id = UUID()
    let text: String
    let color: Color
    var image: String
}

var whyNewLanguage = [
    WhyNewLanguage(text: "Job Opportunities", color: Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)), image: "cover"),
    WhyNewLanguage(text: "Travel", color: Color(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)), image: "cover"),
    WhyNewLanguage(text: "Family & Friends", color: Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)), image: "cover"),
    WhyNewLanguage(text: "Culture", color: Color(#colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)), image: "cover"),
    WhyNewLanguage(text: "School", color: Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)), image: "cover"),
    WhyNewLanguage(text: "Brain Training", color: Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)), image: "cover"),
    WhyNewLanguage(text: "Other", color: Color(#colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)), image: "cover"),
]

