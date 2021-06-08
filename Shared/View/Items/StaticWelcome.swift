//
//  StaticWelcome.swift
//  duolingo (iOS)
//
//  Created by KANISHK VIJAYWARGIYA on 08/06/21.
//

import SwiftUI

struct StaticWelcome: View {
    var body: some View {
        VStack {
            Image("cover")
                .resizable()
                .scaledToFill()
                .frame(maxWidth: 180, maxHeight: 180)
                .padding(.bottom, 8.0)

            Text("Learn a language for free.")
                .font(.system(size: 25, weight: .light))
                .foregroundColor(.secondary)
                .padding(.bottom, 6.0)

            Text("Forever.")
                .font(.system(size: 25, weight: .light))
                .foregroundColor(.secondary)
            
            Spacer()
        }
        .padding(.top, 100)
    }
}

struct StaticWelcome_Previews: PreviewProvider {
    static var previews: some View {
        StaticWelcome()
    }
}
