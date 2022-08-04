//
//  HotelList.swift
//  HotelList_assignment1
//
//  Created by Thinh, Nguyen Truong on 27/07/2022.
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

struct HotelList: View {
    @State var showFavoriteOnly = false
    var luxuryHotels: [Hotel] {
        hotels.filter {
            $0.stars >= 3
        }
    }
    
    var body: some View {
        NavigationView {
            List{
                ForEach(luxuryHotels.indices, id:\.self){ index in
                    NavigationLink{
                        HotelDetail(hotel: luxuryHotels[index])
                    } label: {
                        HotelRow(hotel: luxuryHotels[index])
                    }
                    .navigationTitle("Luxury Hotels")
                    .navigationBarItems(trailing: MyButton())
                }
            }
        }
    }
}

struct MyButton: View {
    var body: some View {
            NavigationLink("Common Hotels", destination: CommonHotelList())
        }
}

struct CommonHotelList: View {
    var commonHotels: [Hotel] {
        hotels.filter {
            $0.stars < 3
        }
    }
    var body: some View {
            List(commonHotels){
                hotel in
                NavigationLink{
                    HotelDetail(hotel: hotel)
                } label: {
                    HotelRow(hotel: hotel)
                }
                .navigationTitle("Common Hotels")
            }
    }
}


struct HotelList_Previews: PreviewProvider {
    static var previews: some View {
        HotelList()
    }
}
