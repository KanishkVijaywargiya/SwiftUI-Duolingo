//
//  CourseOverviewView.swift
//  duolingo (iOS)
//
//  Created by KANISHK VIJAYWARGIYA on 07/06/21.
//

import SwiftUI

struct CourseOverviewView: View {
    let language: String
    
    var body: some View {
        ZStack {
            NavigationView {
                Text("")
            }
            .navigationBarHidden(true)
            Color.white.edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading) {
                Text("Lear the basics of listening, speaking, reading, writing and grammar in \(language)")
                    .padding(.top, 100)
                    .padding(.bottom, 20)
                    .padding(.leading, 16)
                    .font(.system(size: 20))
                
                Divider().padding(.horizontal, 16)
                
                CourseContent()
                
                Divider().padding(.horizontal, 16)
                
                BuildYourSkills()
                
                Spacer()
            }
            
            ContinueButton(language: language)
            
            CustomNavigationView(progressColor: Color(#colorLiteral(red: 0.537254902, green: 0.8862745098, blue: 0.09803921569, alpha: 1)), progressValue: 0.64, title: "Course overview", image: "arrow.backward")
        }
    }
}

struct CourseOverviewView_Previews: PreviewProvider {
    static var previews: some View {
        CourseOverviewView(language: "")
    }
}

struct CourseContent: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Text("Course content")
                    .padding(.vertical, 8)
                    .padding(.leading, 16)
                    .font(.system(size: 22, weight: .semibold))
                Spacer()
            }
            
            HStack {
                HStack {
                    Image("icon")
                        .resizable()
                        .scaledToFill()
                        .frame(maxWidth: 50, maxHeight: 50)
                        .padding(.trailing, 10)
                    
                    VStack {
                        Text("9,900+")
                            .font(.system(size: 18, weight: .semibold))
                            .padding(.leading, 8)
                        Text("words")
                            .font(.system(size: 18))
                    }
                }
                
                Spacer()
                
                HStack {
                    Image("icon")
                        .resizable()
                        .scaledToFill()
                        .frame(maxWidth: 50, maxHeight: 50)
                        .padding(.trailing, 10)
                    
                    VStack {
                        Text("22,000+")
                            .font(.system(size: 18, weight: .semibold))
                            .padding(.trailing, 8)
                        Text("sentences")
                            .font(.system(size: 18))
                    }
                }
            }
            .padding(.horizontal, 16)
            .padding(.bottom, 20)
        }
    }
}

struct BuildYourSkills: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Text("Build your Skills")
                    .padding(.vertical, 8)
                    .font(.system(size: 22, weight: .semibold))
                Spacer()
            }
            
            HStack {
                Image("icon")
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: 50, maxHeight: 50)
                
                Text("Order food and ask for directions like a local")
                    .font(.system(size: 18))
                    .padding(.vertical, 10)
                    .frame(maxWidth: 280)
            }
            
            HStack {
                Image("icon")
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: 50, maxHeight: 50)
                
                Text("Supplement your classes to stand out in school")
                    .font(.system(size: 18))
                    .padding(.vertical, 10)
                    .frame(maxWidth: 280)
            }
            
            HStack {
                Image("icon")
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: 50, maxHeight: 50)
                
                Text("Quality for jobs that accelerate your career")
                    .font(.system(size: 18))
                    .padding(.vertical, 8)
                    .frame(maxWidth: 260)
            }
        }
        .padding(.horizontal, 16)
    }
}

struct ContinueButton: View {
    let language: String
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Spacer()
            
            NavigationLink(destination: PickAGoalView(language: language)) {
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
