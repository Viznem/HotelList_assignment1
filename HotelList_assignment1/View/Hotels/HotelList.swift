//
//  HotelList.swift
//  HotelList_assignment1
//
//  Created by Thinh, Nguyen Truong on 27/07/2022.
//

import SwiftUI

struct HotelList: View {
    var body: some View {
        NavigationView {
            List(hotels){
                hotel in
                NavigationLink{
                    HotelDetail(hotel: hotel)
                } label: {
                    HotelRow(hotel: hotel)
                }
                .navigationTitle("Luxury Hotels")
                .navigationBarItems(trailing: MyButton())
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
    var body: some View {
            List(hotels){
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
