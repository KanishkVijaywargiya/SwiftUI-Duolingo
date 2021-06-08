//
//  AutoCarousel.swift
//  duolingo (iOS)
//
//  Created by KANISHK VIJAYWARGIYA on 08/06/21.
//

import SwiftUI

struct Carousel: Identifiable {
    var id = UUID()
    var image: String
    var tag: Int
}

var carousels = [
    Carousel(image: "carousel1", tag: 1),
    Carousel(image: "carousel2", tag: 2),
    Carousel(image: "alreadyKnow", tag: 3),
    Carousel(image: "carousel3", tag: 4),
    Carousel(image: "carousel4", tag: 5),
]
