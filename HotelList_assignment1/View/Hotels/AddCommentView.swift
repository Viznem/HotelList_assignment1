//
//  AddCommentView.swift
//  HotelList_assignment1
//
//  Created by Thinh, Nguyen Truong on 04/08/2022.
//

import SwiftUI

struct AddCommentView: View {
    @State var name = ""
    @State var review = ""
    
    var body: some View {
        ZStack{
            
            VStack(spacing: 24){
                Text ("Add Review")
                    .font(.largeTitle)
                
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
