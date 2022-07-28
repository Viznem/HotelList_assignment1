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
            ColorConstants.background.ignoresSafeArea()
            
            ScrollView {
                
                VStack{
                    
                    
                    CircleImage(image: hotel.image)
                    
                    Text(hotel.name)
                        .fontWeight(.bold)
                        .font(.system(size: 40))
                    
                    CardView(text: "Sky Gem Hotel offers ultimate comfort and luxury. This 4-storied hotel is a beautiful combination of traditional grandeur and modern facilities. The 255 exclusive guest rooms are furnished with a range of modern amenities such as television and internet access. International direct-dial phone and safe are also available in any of these rooms. Wake-up call facility is also available in these rooms. ")
        
                    
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
