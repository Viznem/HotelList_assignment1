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
  Last modified: 6/08/2022
*/

import SwiftUI

struct HotelList: View {
    @State var showFavoriteOnly = false
    // Filter hotels that has 3 star or above
    var luxuryHotels: [Hotel] {
        hotels.filter {
            $0.stars >= 3
        }
    }
    
    // Luxury hotels list view
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

//button to navigate to Common hotel list
struct MyButton: View {
    var body: some View {
            NavigationLink("Common Hotels", destination: CommonHotelList())
        }
}

//Common hotels list view
struct CommonHotelList: View {
    //filter hotels only have 1 or 2 star
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
