//
//  CelebrationDemo.swift
//  duolingo (iOS)
//
//  Created by KANISHK VIJAYWARGIYA on 21/06/21.
//

import SwiftUI

struct CelebrationDemo: View {
    @State var celebrate = false
    @State var finishCelebrate = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 30.0) {
                Image("celebrate")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: UIScreen.main.bounds.width / 1.8)
                
                Text("Congratulations\n10 in a row")
                    .font(.system(size: 35, weight: .semibold))
                    .kerning(3) // letter spacing
                    .lineSpacing(10.0) // line spacing
                    .foregroundColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
                    .multilineTextAlignment(.center)
                
                Button(action: doAnimation) {
                    Text("Continue")
                        .font(.system(size: 14, weight: .bold))
                        .padding(.vertical, 12)
                        .padding(.horizontal, 50)
                        .background(celebrate ? Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)) : Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
                        .clipShape(Capsule())
                        .foregroundColor(.white)
                }.disabled(celebrate)
            }
            
            EmitterView()
                .scaleEffect(celebrate ? 1 : 0, anchor: .top)
                .opacity(celebrate && !finishCelebrate ? 1 : 0)
                .offset(y: celebrate ? 0 : UIScreen.main.bounds.height / 2) // moving from center effect...
                .ignoresSafeArea()
        }
    }
    
    func doAnimation() {
        withAnimation(.spring()) {
            celebrate = true
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            withAnimation(.easeInOut(duration: 1.5)) {
                finishCelebrate = true
            }
            // resetting after celebrate finished
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                finishCelebrate = false
                celebrate = false
            }
        }
    }
}

struct EmitterView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        view.backgroundColor = .clear
        
        //emitter layer...
        let emitterLayer = CAEmitterLayer()
        emitterLayer.emitterShape = .line
        emitterLayer.emitterCells = createEmitterCells()
        
        // size and position
        emitterLayer.emitterSize = CGSize(width: UIScreen.main.bounds.width, height: 1)
        emitterLayer.emitterPosition = CGPoint(x: UIScreen.main.bounds.width / 2, y: 0)
        
        view.layer.addSublayer(emitterLayer)
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        
    }
    
    func createEmitterCells() -> [CAEmitterCell] {
        var emitterCells: [CAEmitterCell] = []
        
        for index in 1...12 {
            let cell = CAEmitterCell()
            cell.contents = UIImage(named: getImage(index: index))?.cgImage
            cell.color = getColor().cgColor
            cell.birthRate = 4.5     // new particle creation...
            cell.lifetime = 20      // particle existence
            cell.velocity = 120    // particle velocity
            cell.scale = 0.2
            cell.scaleRange = 0.3
            cell.emissionLongitude = .pi
            cell.emissionRange = 0.5
            cell.spin = 3.5
            cell.spinRange = 1
            
            cell.yAcceleration = 40 // acceleration
            
            emitterCells.append(cell)
        }
        return emitterCells
    }
    
    func getColor() -> UIColor {
        let colors: [UIColor] = [.systemPink, .systemGreen, .systemBlue, .systemYellow, .systemOrange, .systemRed, .systemPurple]
        return colors.randomElement()!
    }
    
    func getImage(index: Int) -> String {
        if index < 4 {
            return "rectangle"
        } else if index > 5 && index <= 8 {
            return "circle"
        } else {
            return "triangle"
        }
    }
}

struct CelebrationDemo_Previews: PreviewProvider {
    static var previews: some View {
        CelebrationDemo()
    }
}
