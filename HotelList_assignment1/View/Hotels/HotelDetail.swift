//
//  HotelDetail.swift
//  HotelList_assignment1
//
//  Created by Thinh, Nguyen Truong on 28/07/2022.
//

import SwiftUI

struct HotelDetail: View {
    var hotel: Hotel
    
    var body: some View {
        ZStack {
            ColorConstants.rmitBlue
                       .edgesIgnoringSafeArea(.bottom)
            
            ScrollView {
                
                VStack{
                    Text(hotel.name)
                    Image(hotel.imageName)
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct HotelDetail_Previews: PreviewProvider {
    static var previews: some View {
        HotelDetail(hotel: hotels[1])
    }
}
