//
//  OnboardingView.swift
//  UG
//
//  Created by Salman Hasan on 11/7/23.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTY
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
   
    // MARK: - BODY
    
    var body: some View {
        ZStack {
          Color("ColorBlack")
             .ignoresSafeArea(.all, edges: .all)
            
        VStack(spacing: 20) {
                
            Spacer()
                
            VStack(spacing:0) {
                Text("UNGUARDED.")
                    .font(.system(size: 40))
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                Text("It's not how much we give but how much love we put into giving.")
                    .font(.title3)
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,10)
                }
        ZStack {
            CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2)
           
            Image("character-1")
                .resizable()
                .scaledToFit()
                }
            
            Spacer()
            
            ZStack{
                Capsule()
                    .fill(Color.white.opacity(0.2))
                
                Capsule()
                    .fill(Color.white.opacity(0.2))
                    .padding(8)
                
                
                Text("Get Started")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .offset(x:20)
                
                
                HStack{
                    Capsule()
                        .fill(Color("ColorOrange"))
                        .frame(width:80)
                    
                    Spacer()
                    
                }
                HStack {
                    ZStack{
                        Circle()
                            .fill(Color("ColorOrange"))
                        Circle()
                            .fill(.black.opacity(0.15))
                            .padding(8)
                        Image(systemName:"chevron.right.2")
                            .font(.system(size:24, weight:.bold))
                    }
                .foregroundColor(.white)
                .frame(width: 80, height: 80, alignment: .center)
                .onTapGesture{
                    isOnboardingViewActive = false
                }
                    Spacer()
                } //: HSTACK
            }
            .frame(height:80, alignment: .center)
            .padding()
          }
       } //: HEADER
    }
}
        
struct OnboardingView_Previews: PreviewProvider {
  static var previews: some View {
    OnboardingView()
  }
}


