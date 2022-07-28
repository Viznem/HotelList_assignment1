//
//  HotelDetail.swift
//  HotelList_assignment1
//
//  Created by Thinh, Nguyen Truong on 28/07/2022.
//

import SwiftUI

struct HotelDetail: View {
    @State private var isShowingMap = false
    var hotel: Hotel
    var i = 0
    
    var body: some View {
        ZStack {
            ColorConstants.background.ignoresSafeArea()
            
            ScrollView {
                
                VStack{
                    
                    ZStack{
                        if isShowingMap{
                            MapView(coordinate: hotel.locationCoordinate)
                                .edgesIgnoringSafeArea(.top)
                                .frame(height: 250)
                        } else {
                            CircleImage(image: hotel.image)
                        }
                    }
                    .onTapGesture {
                        isShowingMap.toggle()
                    }

                    
                    Text(hotel.name)
                        .fontWeight(.bold)
                        .font(.system(size: 40))
                    
                    
                    switch hotel.stars {
                    case 5:
                        Text("Luxury Hotel")
                        HStack{
                            Image(systemName: "star").resizable().frame(width: 20, height: 20)
                            Image(systemName: "star").resizable().frame(width: 20, height: 20)
                            Image(systemName: "star").resizable().frame(width: 20, height: 20)
                            Image(systemName: "star").resizable().frame(width: 20, height: 20)
                            Image(systemName: "star").resizable().frame(width: 20, height: 20)
                        }
                    case 4:
                        Text("Luxury Hotel")
                        HStack{
                            Image(systemName: "star").resizable().frame(width: 20, height: 20)
                            Image(systemName: "star").resizable().frame(width: 20, height: 20)
                            Image(systemName: "star").resizable().frame(width: 20, height: 20)
                            Image(systemName: "star").resizable().frame(width: 20, height: 20)
                        }
                    case 3:
                        Text("Middle Class Hotel")
                        HStack{
                            Image(systemName: "star").resizable().frame(width: 20, height: 20)
                            Image(systemName: "star").resizable().frame(width: 20, height: 20)
                            Image(systemName: "star").resizable().frame(width: 20, height: 20)
                        }
                    default:
                        Text("Common Hotel")
                    }
                    
                    CardView(text: hotel.description)
                        .padding(30)
                    
                    ReviewCard(review: "First Review")
                        .padding(30)
                    
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
