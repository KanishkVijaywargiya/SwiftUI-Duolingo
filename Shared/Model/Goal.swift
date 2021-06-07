//
//  Goal.swift
//  duolingo (iOS)
//
//  Created by KANISHK VIJAYWARGIYA on 07/06/21.
//

import SwiftUI

struct Goal: Identifiable {
    var id = UUID()
    let text1: String
    let text2: String
}

var goals = [
    Goal(text1: "Casual", text2: "5 minutes a day"),
    Goal(text1: "Regular", text2: "10 minutes a day"),
    Goal(text1: "Serious", text2: "15 minutes a day"),
    Goal(text1: "Insane", text2: "20 minutes a day"),
]

