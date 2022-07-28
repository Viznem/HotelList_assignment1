//
//  ReviewCard.swift
//  HotelList_assignment1
//
//  Created by Thinh, Nguyen Truong on 28/07/2022.
//

import SwiftUI

struct ReviewCard: View {
    var review: String
    @State private var isShowingText = false
    
    var body: some View {
        ZStack {
        RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(.white).shadow(radius: 10)

                    VStack {
                        Text("Review")
                            .font(.largeTitle)
                            .foregroundColor(.black)
                        
                        if isShowingText{
                            Text(review)
                                .font(.body)
                                .foregroundColor(.gray)
                        }
                    }
                    .padding(20)
                    .multilineTextAlignment(.center)
                }
                .onTapGesture {
                    isShowingText.toggle()
                }
            }
    }


struct ReviewCard_Previews: PreviewProvider {
    static var previews: some View {
        ReviewCard(review: "BEST REVIEW EVER")
    }
}
