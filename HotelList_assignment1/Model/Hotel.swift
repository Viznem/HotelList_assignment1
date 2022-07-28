//
//  Hotel.swift
//  HotelList_assignment1
//
//  Created by Thinh, Nguyen Truong on 28/07/2022.
//

import Foundation
import SwiftUI
import CoreLocation

struct Hotel: Identifiable {
    var id: Int
    var name: String
    var stars: Int
    var description: String
    
    var imageName: String
    var image: Image {
           Image(imageName)
       }
    
    var locationCoordinate: CLLocationCoordinate2D
}

