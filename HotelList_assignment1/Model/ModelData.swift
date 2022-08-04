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
  Last modified: dd/mm/yyyy (e.g. 05/08/2022)
  Acknowledgement: Acknowledge the resources that you use here.
*/

import Foundation
import CoreLocation

var hotels: [Hotel] = [
    Hotel(id: 0, name: "Blue Diamond", stars: 5, description: "Sky Gem Hotel offers ultimate comfort and luxury. This 4-storied hotel is a beautiful combination of traditional grandeur and modern facilities. The 255 exclusive guest rooms are furnished with a range of modern amenities such as television and internet access. International direct-dial phone and safe are also available in any of these rooms. Wake-up call facility is also available in these rooms. ", reviews: ["First comments", "Second comment"] ,imageName: "blue-diamond", locationCoordinate: CLLocationCoordinate2D(latitude: 10.729410965174186, longitude:106.69522548892152), isFavorite: false),
    
    Hotel(id: 1, name: "Sky Gem", stars: 3, description: "Sky Gem Hotel offers ultimate comfort and luxury. This 4-storied hotel is a beautiful combination of traditional grandeur and modern facilities. The 255 exclusive guest rooms are furnished with a range of modern amenities such as television and internet access. International direct-dial phone and safe are also available in any of these rooms. Wake-up call facility is also available in these rooms. ", reviews: ["First comments", "Second comment"], imageName: "blue-diamond", locationCoordinate: CLLocationCoordinate2D(latitude: 10.729410965174186, longitude:106.69522548892152), isFavorite: true),
    
    Hotel(id: 3, name: "Shappire", stars: 4, description: "Sky Gem Hotel offers ultimate comfort and luxury. This 4-storied hotel is a beautiful combination of traditional grandeur and modern facilities. The 255 exclusive guest rooms are furnished with a range of modern amenities such as television and internet access. International direct-dial phone and safe are also available in any of these rooms. Wake-up call facility is also available in these rooms. ", reviews: ["First comments", "Second comment"] ,imageName: "blue-diamond", locationCoordinate: CLLocationCoordinate2D(latitude: 10.729410965174186, longitude:106.69522548892152), isFavorite: true),

   Hotel(id: 4, name: "Overnight", stars: 1, description: "Sky Gem Hotel offers ultimate comfort and luxury. This 4-storied hotel is a beautiful combination of traditional grandeur and modern facilities. The 255 exclusive guest rooms are furnished with a range of modern amenities such as television and internet access. International direct-dial phone and safe are also available in any of these rooms. Wake-up call facility is also available in these rooms. ", reviews: ["First comments", "Second comment"] ,imageName: "blue-diamond", locationCoordinate: CLLocationCoordinate2D(latitude: 10.729410965174186, longitude:106.69522548892152), isFavorite: false),

    Hotel(id: 5, name: "Henel", stars: 2, description: "Sky Gem Hotel offers ultimate comfort and luxury. This 4-storied hotel is a beautiful combination of traditional grandeur and modern facilities. The 255 exclusive guest rooms are furnished with a range of modern amenities such as television and internet access. International direct-dial phone and safe are also available in any of these rooms. Wake-up call facility is also available in these rooms. ", reviews: ["First comments", "Second comment"] ,imageName: "blue-diamond", locationCoordinate: CLLocationCoordinate2D(latitude: 10.729410965174186, longitude:106.69522548892152), isFavorite: false),

    Hotel(id: 6, name: "Gala", stars: 1, description: "Sky Gem Hotel offers ultimate comfort and luxury. This 4-storied hotel is a beautiful combination of traditional grandeur and modern facilities. The 255 exclusive guest rooms are furnished with a range of modern amenities such as television and internet access. International direct-dial phone and safe are also available in any of these rooms. Wake-up call facility is also available in these rooms. ", reviews: ["First comments", "Second comment"] ,imageName: "blue-diamond", locationCoordinate: CLLocationCoordinate2D(latitude: 10.729410965174186, longitude:106.69522548892152), isFavorite: true),
]
