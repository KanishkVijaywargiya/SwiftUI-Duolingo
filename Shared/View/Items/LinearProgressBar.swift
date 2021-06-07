//
//  LinearProgressBar.swift
//  duolingo (iOS)
//
//  Created by KANISHK VIJAYWARGIYA on 06/06/21.
//

import SwiftUI

struct LinearProgressBar: View {
    @Binding var value: Double
    @State var color: Color
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle().frame(width: geometry.size.width , height: geometry.size.height)
                    .opacity(0.3)
                    .foregroundColor(Color(#colorLiteral(red: 0.6862745098, green: 0.6862745098, blue: 0.6862745098, alpha: 1)))
                
                Rectangle().frame(width: min(CGFloat(self.value)*geometry.size.width, geometry.size.width)
                                  , height: geometry.size.height)
                    .foregroundColor(color)
                    .animation(.linear)
            }.cornerRadius(45.0)
        }
    }
}
