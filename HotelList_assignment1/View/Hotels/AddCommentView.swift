//
//  AddCommentView.swift
//  HotelList_assignment1
//
//  Created by Thinh, Nguyen Truong on 04/08/2022.
//
/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 2
  Author: Nguyen Truong Thinh
  ID: s3777196
  Created  date: 04/08/2022
  Last modified: 6/08/2022
*/

import SwiftUI

struct AddCommentView: View {
    @State var name = ""
    @State var review = ""
    
    var body: some View {
        ZStack{
            
            VStack(spacing: 24){
                //Title
                Text ("Add Review")
                    .font(.largeTitle)
                
                //Name text box
                VStack(alignment: .leading){
                    Text("Name")
                        .font(.headline)
                        .foregroundColor(.secondary)
                    
                    TextField("", text: $name)
                        .padding(15)
                        .padding(.leading,10)
                        .background(.white)
                        .mask(RoundedRectangle(cornerRadius: 10,
                                               style: .continuous))
                        .overlay(RoundedRectangle(cornerRadius: 10,
                                                  style: .continuous)
                            .stroke()
                            .fill(.black.opacity(0.1))
                        )
                }
                
                //Review text box
                VStack(alignment: .leading){
                    Text("Review")
                        .font(.headline)
                        .foregroundColor(.secondary)
                    
                    TextEditor(text: $review)
                        .frame(height: 150)
                        .padding(15)
                        .padding(.leading,10)
                        .background(.white)
                        .mask(RoundedRectangle(cornerRadius: 10,
                                               style: .continuous))
                        .overlay(RoundedRectangle(cornerRadius: 10,
                                                  style: .continuous)
                            .stroke()
                            .fill(.black.opacity(0.1))
                        )
                }
                
                //submit button
                Button{
                }label: {
                    Label("Submit", systemImage: "arrow.right")
                        .padding(15)
                        .frame(maxWidth: .infinity)
                        .background(.pink)
                        .foregroundColor(.white)
                        .cornerRadius(20)
                        .shadow(radius: 15, x:0,y:10)
                }

            }
            .padding(30)
            .background(.regularMaterial)
            .mask(RoundedRectangle(cornerRadius: 20, style: .continuous))
            .shadow(radius: 50)
            
            .overlay(RoundedRectangle(cornerRadius: 20, style: .continuous)
                .stroke(.linearGradient(colors: [.white.opacity(0.8), .white.opacity(0.1)], startPoint: .topLeading, endPoint:.bottomLeading ))
            )
            .padding()
        }
    }
}

struct AddCommentView_Previews: PreviewProvider {
    static var previews: some View {
        AddCommentView()
    }
}
