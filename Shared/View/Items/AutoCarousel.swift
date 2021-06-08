//
//  AutoCarousel.swift
//  duolingo (iOS)
//
//  Created by KANISHK VIJAYWARGIYA on 08/06/21.
//

import SwiftUI

struct AutoCarousel: View {
    private var numberOfImages = 5
    private let timer = Timer.publish(every: 2, on: .main, in: .common).autoconnect()
    @State private var currentIndex = 1
    
    var circles: some View {
        HStack(spacing: 8) {
            ForEach(carousels) { carousel in
                Circle()
                    .fill(currentIndex == carousel.tag ? Color(#colorLiteral(red: 0.537254902, green: 0.8862745098, blue: 0.09803921569, alpha: 1)) : Color(#colorLiteral(red: 0.725425601, green: 0.7255315781, blue: 0.725402534, alpha: 1)))
                    .frame(width: 10, height: 10)
            }
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 16)
//        .background(Color(#colorLiteral(red: 0.9607002139, green: 0.9608381391, blue: 0.9606701732, alpha: 1)))
        .clipShape(RoundedRectangle(cornerRadius: 25))
    }
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                TabView(selection: $currentIndex) {
                    ForEach(carousels) { carousel in
                        Image("\(carousel.image)")
                            .resizable()
                            .scaledToFill()
                            .padding()
                            .frame(width: UIScreen.main.bounds.width, height: geo.size.height / 2)
                            .tag(carousel.tag)
                    }
                }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 500)
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
//                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                .onReceive(timer, perform: { _ in
                    withAnimation {
                        currentIndex = currentIndex < numberOfImages ? currentIndex + 1 : 0
                    }
                })
                
                circles
            }
        }
    }
}

struct AutoCarousel_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(ColorScheme.allCases, id: \.self, content: AutoCarousel().preferredColorScheme)
        
    }
}
