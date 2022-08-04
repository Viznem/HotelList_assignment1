//
//  ReviewCard.swift
//  HotelList_assignment1
//
//  Created by Thinh, Nguyen Truong on 28/07/2022.
//
/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 2
  Author: Nguyen Truong Thinh
  ID: s3777196
  Created  date: 27/07/2022
  Last modified: dd/mm/yyyy (e.g. 05/08/2022)
  Acknowledgement: Acknowledge the resources that you use here.
*/

import SwiftUI

struct ReviewCard: View {
    var thisHotel: Hotel
    @State var review: String = ""
    @State private var isShowingText = false
    @State private var isShowingInput = false
    
    var body: some View {
    
        ZStack {
        RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(.white).shadow(radius: 10)

                    VStack {
                        HStack{
                            Text("Review")
                                .font(.largeTitle)
                                .foregroundColor(.black)
                                .onTapGesture {
                                    isShowingText.toggle()
                                }
                        }

                        if isShowingText{
                            
                            addButton

                            reviewContent

                        }
                    }
                    .padding(20)
                    .multilineTextAlignment(.center)
            
            
            if isShowingInput{
                AddCommentView()
                    .overlay(
                        Button{
                            withAnimation(.spring()){
                                isShowingInput = false
                            }
                        }label: {
                            Image(systemName: "xmark")
                                .frame(width: 35, height: 35)
                                .foregroundColor(.black)
                                .background(.white)
                                .mask(Circle())
                                .shadow(radius: 5)
                        }
                            .frame(maxHeight: .infinity, alignment: .topTrailing)
                    )
            }
        }
    }
    
    
    var addButton: some View{
        HStack{
            Button(action: {
                isShowingInput.toggle()
            }, label: {
                Image(systemName: "plus.circle.fill")
                    .foregroundColor(.black)
                Text("Add Review").foregroundColor(.black)
            })
            
            Spacer()
        }

    }
    
    var reviewContent: some View{
        ForEach(thisHotel.reviews, id:\.self) { review in
            HStack{
                Image("user")
                Text(review)
                    .font(.body)
                    .foregroundColor(.gray)
            }.frame(maxWidth: .infinity ,alignment: .leading)
        }
    }
}


struct ReviewCard_Previews: PreviewProvider {
    static var previews: some View {
        ReviewCard(thisHotel: hotels[0])
    }
}
