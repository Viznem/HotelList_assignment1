//
//  ModelData.swift
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

import Foundation
import CoreLocation

//static data
var hotels: [Hotel] = [
    Hotel(id: 0, name: "Blue Diamond", stars: 5, description: "Sky Gem Hotel offers ultimate comfort and luxury. This 4-storied hotel is a beautiful combination of traditional grandeur and modern facilities. The 255 exclusive guest rooms are furnished with a range of modern amenities such as television and internet access. International direct-dial phone and safe are also available in any of these rooms. Wake-up call facility is also available in these rooms. ", reviews: ["First comments", "Second comment", "hahahaha I'm dying!"] ,imageName: "blue-diamond", locationCoordinate: CLLocationCoordinate2D(latitude: 10.766411, longitude:106.676684), isFavorite: true),
    
    Hotel(id: 1, name: "Sky Gem", stars: 3, description: "Sky Gem Hotel offers ultimate comfort and luxury. This 4-storied hotel is a beautiful combination of traditional grandeur and modern facilities. The 255 exclusive guest rooms are furnished with a range of modern amenities such as television and internet access. International direct-dial phone and safe are also available in any of these rooms. Wake-up call facility is also available in these rooms. ", reviews: ["First comments", "Second comment", "The pool and spa really great, will come back for sure", "Too expensive..."], imageName: "luxury-hotel-3", locationCoordinate: CLLocationCoordinate2D(latitude: 10.765494, longitude:106.674913), isFavorite: true),
    
    Hotel(id: 3, name: "Shappire", stars: 4, description: "Sky Gem Hotel offers ultimate comfort and luxury. This 4-storied hotel is a beautiful combination of traditional grandeur and modern facilities. The 255 exclusive guest rooms are furnished with a range of modern amenities such as television and internet access. International direct-dial phone and safe are also available in any of these rooms. Wake-up call facility is also available in these rooms. ", reviews: ["First comments", "Second comment", "The pool and spa really great, will come back for sure", "Too expensive..."] ,imageName: "luxury-hotel-2", locationCoordinate: CLLocationCoordinate2D(latitude: 10.764524, longitude:106.670118), isFavorite: false),

   Hotel(id: 4, name: "Overnight", stars: 3, description: "Sky Gem Hotel offers ultimate comfort and luxury. This 4-storied hotel is a beautiful combination of traditional grandeur and modern facilities. The 255 exclusive guest rooms are furnished with a range of modern amenities such as television and internet access. International direct-dial phone and safe are also available in any of these rooms. Wake-up call facility is also available in these rooms. ", reviews: ["First comments", "Second comment", "The pool and spa really great, will come back for sure", "Too expensive..."] ,imageName: "small-hotel-1", locationCoordinate: CLLocationCoordinate2D(latitude: 10.729410965174186, longitude:106.69522548892152), isFavorite: false),

    Hotel(id: 5, name: "Henel", stars: 5, description: "Sky Gem Hotel offers ultimate comfort and luxury. This 4-storied hotel is a beautiful combination of traditional grandeur and modern facilities. The 255 exclusive guest rooms are furnished with a range of modern amenities such as television and internet access. International direct-dial phone and safe are also available in any of these rooms. Wake-up call facility is also available in these rooms. ", reviews: ["The view is so beautiful! I love this place so much", "really big room, quite fancy!", "The pool and spa really great, will come back for sure", "Too expensive..."] ,imageName: "luxury-hotel-1", locationCoordinate: CLLocationCoordinate2D(latitude: 10.766411, longitude:106.676684), isFavorite: false),

    Hotel(id: 6, name: "Gala", stars: 4, description: "Sky Gem Hotel offers ultimate comfort and luxury. This 4-storied hotel is a beautiful combination of traditional grandeur and modern facilities. The 255 exclusive guest rooms are furnished with a range of modern amenities such as television and internet access. International direct-dial phone and safe are also available in any of these rooms. Wake-up call facility is also available in these rooms. ", reviews: ["First comments", "The pool and spa really great, will come back for sure", "Too expensive..."] ,imageName: "luxury-hotel-2", locationCoordinate: CLLocationCoordinate2D(latitude: 10.729410965174186, longitude:106.69522548892152), isFavorite: false),
    
    Hotel(id: 7, name: "Genesis", stars: 3, description: "Sky Gem Hotel offers ultimate comfort and luxury. This 4-storied hotel is a beautiful combination of traditional grandeur and modern facilities. The 255 exclusive guest rooms are furnished with a range of modern amenities such as television and internet access. International direct-dial phone and safe are also available in any of these rooms. Wake-up call facility is also available in these rooms. ", reviews: ["First comments", "Second comment", "The pool and spa really great, will come back for sure", "Too expensive..."] ,imageName: "blue-diamond", locationCoordinate: CLLocationCoordinate2D(latitude: 10.764524, longitude:106.670118), isFavorite: false),
    
    Hotel(id: 8, name: "Million", stars: 2, description: "Sky Gem Hotel offers ultimate comfort and luxury. This 4-storied hotel is a beautiful combination of traditional grandeur and modern facilities. The 255 exclusive guest rooms are furnished with a range of modern amenities such as television and internet access. International direct-dial phone and safe are also available in any of these rooms. Wake-up call facility is also available in these rooms. ", reviews: ["First comments", "The pool and spa really great, will come back for sure", "Really cheap!!!"] ,imageName: "small-hotel-1", locationCoordinate: CLLocationCoordinate2D(latitude: 10.764524, longitude:106.670118), isFavorite: true),
    
    Hotel(id: 9, name: "Primogem", stars: 2, description: "Sky Gem Hotel offers ultimate comfort and luxury. This 4-storied hotel is a beautiful combination of traditional grandeur and modern facilities. The 255 exclusive guest rooms are furnished with a range of modern amenities such as television and internet access. International direct-dial phone and safe are also available in any of these rooms. Wake-up call facility is also available in these rooms. ", reviews: ["The pool and spa really great, will come back for sure", "Too expensive..."] ,imageName: "small-hotel-2", locationCoordinate: CLLocationCoordinate2D(latitude: 10.765494, longitude:106.674913), isFavorite: true),
    
    Hotel(id: 10, name: "Mora", stars: 1, description: "Sky Gem Hotel offers ultimate comfort and luxury. This 4-storied hotel is a beautiful combination of traditional grandeur and modern facilities. The 255 exclusive guest rooms are furnished with a range of modern amenities such as television and internet access. International direct-dial phone and safe are also available in any of these rooms. Wake-up call facility is also available in these rooms. ", reviews: ["The pool and spa really great, will come back for sure", "Too expensive...", "Second comment"] ,imageName: "small-hotel-3", locationCoordinate: CLLocationCoordinate2D(latitude: 10.766411, longitude:106.676684), isFavorite: false),
    
    Hotel(id: 11, name: "Bronze", stars: 1, description: "Sky Gem Hotel offers ultimate comfort and luxury. This 4-storied hotel is a beautiful combination of traditional grandeur and modern facilities. The 255 exclusive guest rooms are furnished with a range of modern amenities such as television and internet access. International direct-dial phone and safe are also available in any of these rooms. Wake-up call facility is also available in these rooms. ", reviews: ["The pool and spa really great, will come back for sure", "Really cheap!!!"] ,imageName: "luxury-hotel-2", locationCoordinate: CLLocationCoordinate2D(latitude: 10.729410965174186, longitude:106.69522548892152), isFavorite: false),
]
