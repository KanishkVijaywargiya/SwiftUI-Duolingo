//
//  Demo.swift
//  duolingo (iOS)
//
//  Created by KANISHK VIJAYWARGIYA on 05/06/21.
//

import SwiftUI

struct Demo: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.orange.edgesIgnoringSafeArea(.all)
                
                NavigationLink(destination: DestinationView()) {
                    Text("We are at Home")
                        .font(.system(size: 25, weight: .bold))
                        .foregroundColor(.black)
                }
                .navigationBarHidden(true)
            }
        }
    }
}

struct DestinationView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            NavigationView {
                Text("")
            }
            .navigationBarHidden(true)
            Color.white.edgesIgnoringSafeArea(.all)
            
            List {
                ForEach(languages) { language in
                    NavigationLink(destination: DestinationView2()) {
                        Text("\(language.lang)")
                            .font(.system(size: 24, weight: .semibold))
                            .foregroundColor(language.color)
                    }
                }
            }
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color(#colorLiteral(red: 0.8980392157, green: 0.8980392157, blue: 0.8980392157, alpha: 1)), lineWidth: 2)
            )
            .padding(.vertical, 10)
            .padding(.horizontal, 20)
            .padding(.top, 80)
            
            CustomNavigationView2(title: "I want to learn...")
        }
    }
}

struct DestinationView2: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            NavigationView {
                Text("")
            }
            .navigationBarHidden(true)
            Color.green.edgesIgnoringSafeArea(.all)
            
            Text("We are at the destination")
                .font(.system(size: 24, weight: .semibold))
                .foregroundColor(.black)
            
            CustomNavigationView2(title: "How")
        }
    }
}

struct CustomNavigationView2: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var title: String
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "arrow.backward")
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

struct Demo_Previews: PreviewProvider {
    static var previews: some View {
        Demo()
    }
}
