//
//  HotelDetail.swift
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
*/

import SwiftUI
import RiveRuntime

struct HotelDetail: View {
    @State var review: String = ""
    @State private var isShowingMap = false
    @State var isFavorite = false
    @State var hotel: Hotel
    var i = 0
    
    var body: some View {
        ZStack {
            ColorConstants.background.ignoresSafeArea()
            
            ScrollView {
                
                VStack{
                    HStack{
                        Spacer()
                        Button{
                            hotel.isFavorite.toggle()
                            
                        }label: {
                            // Check if Hotel is your favorite hotel
                            if hotel.isFavorite{
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
                    
                    //Condition to show map location or Image.
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

                    //Hotel Name
                    Text(hotel.name)
                        .fontWeight(.bold)
                        .font(.system(size: 40))
                    
                    // Classify hotels into different category based on stars number.
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
