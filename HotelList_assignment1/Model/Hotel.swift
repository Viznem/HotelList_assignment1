//
//  Hotel.swift
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
import SwiftUI
import CoreLocation

struct Hotel: Identifiable {
    var id: Int
    var name: String
    var stars: Int
    var description: String
    var reviews: [String]
    
    var imageName: String
    var image: Image {
           Image(imageName)
       }
    
    var locationCoordinate: CLLocationCoordinate2D
    var isFavorite: Bool
}

