//
//  HotelDetail.swift
//  HotelList_assignment1
//
//  Created by Thinh, Nguyen Truong on 28/07/2022.
//

import SwiftUI
import RiveRuntime

struct HotelDetail: View {
    @State var review: String = ""
    @State private var isShowingMap = false
    @State var isFavorite = false
    let likeButton = RiveViewModel(fileName: "twitter_like_button")
    var hotel: Hotel
    var i = 0
    
    var body: some View {
        ZStack {
            ColorConstants.background.ignoresSafeArea()
            
            ScrollView {
                
                VStack{
                    HStack{
                        Spacer()
                        Button{
                            if (isFavorite == false){
                                isFavorite = true
                            }else{
                                isFavorite = false
                            }
                            
                        }label: {
                                if isFavorite{
                                    Image(systemName: "heart.fill")
                                        .resizable()
                                        .frame(width: 30, height: 30, alignment: .leading)
                                        .foregroundColor(.red)
                                        .padding()
                                }else{
                                    Image(systemName: "heart")
                                        .resizable()
                                        .frame(width: 30, height: 30, alignment: .leading)
                                        .foregroundColor(.black)
                                        .cornerRadius(7)
                                        .padding()
                                        
                                }
                            }

                    }

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
                    case 4:
                        Text("Luxury Hotel")
                    case 3:
                        Text("Middle Class Hotel")
                    default:
                        Text("Common Hotel")
                    }
                    HStack{
                        ForEach((1...hotel.stars), id:\.self){ star in
                            Image(systemName: "star").resizable().frame(width: 20, height: 20)
                        }
                    }

                    CardView(text: hotel.description)
                        .padding(30)
                    
                    ReviewCard(thisHotel: hotel)
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
