//
//  PickAGoalView.swift
//  duolingo (iOS)
//
//  Created by KANISHK VIJAYWARGIYA on 07/06/21.
//

import SwiftUI

struct PickAGoalView: View {
    let language: String
    
    var body: some View {
        ZStack {
            NavigationView {
                Text("")
            }
            .navigationBarHidden(true)
            Color.white.edgesIgnoringSafeArea(.all)
            
            VStack {
                ForEach(goals) { goal in
                    Button(action: {}) {
                        HStack {
                            Text(goal.text1)
                                .font(.system(size: 18, weight: .semibold))
                                .foregroundColor(.black)
                            
                            Spacer()
                            
                            Text(goal.text2)
                                .font(.system(size: 18))
                                .foregroundColor(.black)
                        }.padding()
                        .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    }
                    .cornerRadius(10)
                    .shadow(color: Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), radius: 1, x: 0, y: 5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 1.0)
                    )
                    .padding([.leading, .trailing], 20)
                }
                
                HStack {
                    Image("goalimg")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 120, height: 120)
                    
                    Spacer()
                    
                    Image("goalText")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .padding(.trailing, 60)
                        .padding(.bottom, 50)
                }
                .padding(.leading, 10)
                .padding(.vertical, 80)
            }
            
            CustomNavigationView(progressValue: 0.80, title: "Pick a goal", image: "arrow.backward")
            
            ContinueButton2(language: language)
        }
    }
}

struct PickAGoalView_Previews: PreviewProvider {
    static var previews: some View {
        PickAGoalView(language: "")
    }
}

struct ContinueButton2: View {
    let language: String
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            
            Spacer()
            
            NavigationLink(destination: ChooseAPathView(language: language)) {
                Text("Continue")
                    .textCase(.uppercase)
                    .font(.system(size: 20, weight: .semibold))
                    .frame(width: 360, height: 52)
                    .background(Color(#colorLiteral(red: 0.537254902, green: 0.8862745098, blue: 0.09803921569, alpha: 1)))
                    .foregroundColor(.white)
            }
            .cornerRadius(10.0)
            .shadow(color: Color(#colorLiteral(red: 0.3450980392, green: 0.8, blue: 0.007843137255, alpha: 1)), radius: 1, x: 0, y: 5)
            .padding()
        }
    }
}
