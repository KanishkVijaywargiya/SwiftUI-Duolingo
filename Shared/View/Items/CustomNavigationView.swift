//
//  CustomNavigationView.swift
//  duolingo (iOS)
//
//  Created by KANISHK VIJAYWARGIYA on 05/06/21.
//

import SwiftUI

struct CustomNavigationView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var title: String
    var image: String
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: image)
                        .resizable()
                        .frame(maxWidth: 25, maxHeight: 25)
                        .foregroundColor(.black)
                }
                Text(title)
                    .font(.system(size: 35, weight: .semibold))
                Spacer()
            }
            .padding()
            Spacer()
        }
    }
}
