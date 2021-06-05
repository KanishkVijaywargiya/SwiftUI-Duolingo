//
//  Hear.swift
//  duolingo (iOS)
//
//  Created by KANISHK VIJAYWARGIYA on 05/06/21.
//

import SwiftUI

struct Hear: Identifiable {
    var id = UUID()
    let text: String
    let color: Color
}

var hears = [
    Hear(text: "Web search", color: Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1))),
    Hear(text: "Radio", color: Color(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1))),
    Hear(text: "News, article, or blog", color: Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))),
    Hear(text: "TV", color: Color(#colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))),
    Hear(text: "Friends or family", color: Color(#colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1))),
    Hear(text: "Social media", color: Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))),
    Hear(text: "Online ads", color: Color(#colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1))),
    Hear(text: "App store", color: Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))),
    Hear(text: "Other", color: Color(#colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1))),
]
