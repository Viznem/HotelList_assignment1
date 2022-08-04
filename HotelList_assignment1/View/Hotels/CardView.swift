//
//  CardView.swift
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

struct CardView: View {
    var text: String
    @State private var isShowingText = false
    
    var body: some View {
        ZStack {
        RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(.white).shadow(radius: 10)

                    VStack {
                        Text("Description")
                            .font(.largeTitle)
                            .foregroundColor(.black)
                        
                        if isShowingText{
                            Text(text)
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

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(text: "Sky Gem Hotel offers ultimate comfort and luxury. This 4-storied hotel is a beautiful combination of traditional grandeur and modern facilities. The 255 exclusive guest rooms are furnished with a range of modern amenities such as television and internet access. International direct-dial phone and safe are also available in any of these rooms. Wake-up call facility is also available in these rooms. ")
    }
}
