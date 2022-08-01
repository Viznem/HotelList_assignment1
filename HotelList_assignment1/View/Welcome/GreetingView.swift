//
//  GreetingView.swift
//  HotelList_assignment1
//
//  Created by Thinh, Nguyen Truong on 27/07/2022.
//

import SwiftUI
import RiveRuntime

struct GreetingView: View {
    @Binding var active: Bool
    var body: some View {
        ZStack{
            RiveViewModel(fileName: "shapes").view()
                .ignoresSafeArea()
                
            
            VStack{
                Text("GREETING Customer")
            
                
                Button(action: {
                    active = false
                }, label: {
                    Capsule()
                    .fill(Color.white.opacity(0.2))
                    .padding(8)
                    .frame(height:80)
                    .overlay(Text("Get Started")
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white))
                })
            }
        }
    }
}

struct GreetingView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            GreetingView(active: .constant(true))
        }
    }
}
