//
//  Language.swift
//  duolingo (iOS)
//
//  Created by KANISHK VIJAYWARGIYA on 05/06/21.
//

import SwiftUI

struct Language: Identifiable {
    var id = UUID()
    let lang: String
    let color: Color
    var image: String
}

var languages = [
    Language(lang: "Hindi", color: Color(#colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1)), image: "cover"),
    Language(lang: "English", color: Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)), image: "cover"),
    Language(lang: "Assamese", color: Color(#colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)), image: "cover"),
    Language(lang: "Bengali", color: Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)), image: "cover"),
    Language(lang: "Gujarati", color: Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)), image: "cover"),
    Language(lang: "Kannada", color: Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)), image: "cover"),
    Language(lang: "Kashmiri", color: Color(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)), image: "cover"),
    Language(lang: "Konkani", color: Color(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)), image: "cover"),
    Language(lang: "Malayalam", color: Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)), image: "cover"),
    Language(lang: "Manipuri", color: Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)), image: "cover"),
    Language(lang: "Marathi", color: Color(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)), image: "cover"),
    Language(lang: "Nepali", color: Color(#colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)), image: "cover"),
    Language(lang: "Bhojpuri", color: Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)), image: "cover"),
    Language(lang: "Oriya", color: Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)), image: "cover"),
    Language(lang: "Punjabi", color: Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), image: "cover"),
    Language(lang: "Sanskrit", color: Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)), image: "cover"),
    Language(lang: "Sindhi", color: Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)), image: "cover"),
    Language(lang: "Tamil", color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)), image: "cover"),
    Language(lang: "Telugu", color: Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)), image: "cover"),
    Language(lang: "Urdu", color: Color(#colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)), image: "cover"),
    Language(lang: "Bodo", color: Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)), image: "cover"),
    Language(lang: "Santhali", color: Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)), image: "cover"),
    Language(lang: "Maithili", color: Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)), image: "cover"),
    Language(lang: "Dogri", color: Color(#colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)), image: "cover"),
]
