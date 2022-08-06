//
//  HotelRow.swift
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
  Last modified: 6/08/2022
  Acknowledgement: https://github.com/TomHuynhSG/SSETContactList.git
*/

import SwiftUI

struct HotelRow: View {
    var hotel: Hotel
    
    var body: some View {
        HStack {
            hotel.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(hotel.name)
            
            Spacer()
            
            if hotel.isFavorite{
                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: 30, height: 30, alignment: .leading)
                        .foregroundColor(.yellow)
                        .padding()
                }else{
                    Image(systemName: "star")
                        .resizable()
                        .frame(width: 30, height: 30, alignment: .leading)
                        .foregroundColor(.black)
                        .cornerRadius(7)
                        .padding()
                        
                }
        }
        
    }
}

struct HotelRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            HotelRow(hotel: hotels[0])
                .previewLayout(.fixed(width: 300, height: 70))
            HotelRow(hotel: hotels[1])
                .previewLayout(.fixed(width: 300, height: 70))
        }
    }
}
