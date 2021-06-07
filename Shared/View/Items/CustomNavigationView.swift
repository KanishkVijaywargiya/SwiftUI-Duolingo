//
//  CustomNavigationView.swift
//  duolingo (iOS)
//
//  Created by KANISHK VIJAYWARGIYA on 05/06/21.
//

import SwiftUI

struct CustomNavigationView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State var progressValue: Double

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
                        .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                        .padding(.horizontal, 10)
                }
                
                LinearProgressBar(value: $progressValue).frame(height: 20)
                
                Spacer()
            }
            .padding()
            
            HStack {
                Text(title)
                    .font(.system(size: 25, weight: .semibold))
                    .padding(.horizontal, 20)
                    .padding(.bottom, 20)
                Spacer()
            }
            
            Spacer()
        }
    }
}

struct CustomNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavigationView(progressValue: 0.2, title: "How did you hear about us?", image: "arrow.backward")
    }
}
