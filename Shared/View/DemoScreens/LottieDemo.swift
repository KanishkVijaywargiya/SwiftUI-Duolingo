//
//  LottieDemo.swift
//  duolingo (iOS)
//
//  Created by KANISHK VIJAYWARGIYA on 21/06/21.
//

import SwiftUI
import Lottie

struct LottieDemo: View {
    var body: some View {
        CartHome()
    }
}

struct CartHome: View {
    @State var black = Color.primary
    
    var body: some View {
        NavigationView {
            NavigationLink(destination: Cart()) {
                Text("Go to Cart")
                    .font(.system(size: 26, weight: .semibold))
                    .foregroundColor(black)
                
                Image(systemName: "cart")
                    .font(.system(size: 26, weight: .bold))
                    .foregroundColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
            }
            .navigationTitle("Home")
        }
    }
}

struct Cart: View {
    @State var black = Color.primary.opacity(0.7)
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {presentationMode.wrappedValue.dismiss()}) {
                    Image(systemName: "xmark")
                        .font(.system(size: 24, weight: .heavy))
                        .foregroundColor(black)
                }
                
                Spacer()
                
            }.padding()
            
            LottieView(animationName: "cart")
                .frame(height: UIScreen.main.bounds.height / 2)
            
            Text("Your Cart is Empty")
                .font(.system(size: 24, weight: .heavy))
                .foregroundColor(black)
            
            Text("Load up that basket with some yummy fruits")
                .fontWeight(.bold)
                .foregroundColor(black)
                .padding(.top, 5)
            
            Spacer(minLength: 0)
            
            Button(action: {}) {
                Text("Start Shopping")
                    .font(.system(size: 18, weight: .heavy))
                    .foregroundColor(.white)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 30)
                    .background(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
                    .cornerRadius(4)
            }.padding(.bottom, 10)
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

// lottie animation view...
struct LottieView: UIViewRepresentable {
    var animationName: String
    
    func makeUIView(context: Context) -> AnimationView {
        let view = AnimationView(name: animationName, bundle: Bundle.main)
        view.loopMode = .loop
        view.play()
        return view
    }
    
    func updateUIView(_ uiView: AnimationView, context: Context) {
        
    }
}

struct LottieDemo_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(ColorScheme.allCases, id: \.self, content:LottieDemo().preferredColorScheme)
    }
}
