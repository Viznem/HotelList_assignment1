//
//  HotelRow.swift
//  HotelList_assignment1
//
//  Created by Thinh, Nguyen Truong on 28/07/2022.
//

import SwiftUI

struct HotelRow: View {
    var hotel: Hotel
    
    var body: some View {
        HStack {
            hotel.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(hotel.name)
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
