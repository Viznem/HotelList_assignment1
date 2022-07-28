//
//  Hotel.swift
//  HotelList_assignment1
//
//  Created by Thinh, Nguyen Truong on 28/07/2022.
//

import Foundation
import SwiftUI
import CoreLocation

struct Hotel: Identifiable, Codable{
    var id: Int
    var name: String
    
    var imageName: String
    var image: Image {
           Image(imageName)
       }
}
