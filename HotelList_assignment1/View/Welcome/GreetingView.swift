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
        let button = RiveViewModel(fileName: "button");
        
        ZStack{
            RiveViewModel(fileName: "shapes").view()
                .ignoresSafeArea()
                .blur(radius: 5)
                .background(
                    Image("Spline")
                        .resizable()
                        .blur(radius: 50)
                        .offset(x:50,y:100)
                        
                )
                
                
            VStack{
                
                
                Spacer()
                
                Text("LET'S EXPLORE & FIND YOUR BEST HOTEL")
                    .font(.custom("DancingScript-SemiBold", size: 55, relativeTo: .largeTitle))
                    
                
                Spacer()
                
                Image("hotelIcon")
                    .resizable()
                    .frame(width: 100, height: 100, alignment: .topTrailing)
                    .cornerRadius(15)
                
                Text("Find the best hotel ever")
                    .font(.custom("Poppins Bold", size: 15))
                
                button.view()
                    .frame(width:236, height: 64)
                    .overlay(
                        Label("Let's start!", systemImage: "arrow.forward")
                            .offset(x: 4, y: 4)
                    )
                    .background(
                        Color.black
                            .cornerRadius(30)
                            .blur(radius: 15)
                            .opacity(0.3)
                            .offset(y: 10)
                    )
                    .onTapGesture {
                        button.play(animationName: "active")
                        DispatchQueue.main.asyncAfter(deadline: .now()+0.8) {
                            active = false
                        }
                    }
                
                Spacer()
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
