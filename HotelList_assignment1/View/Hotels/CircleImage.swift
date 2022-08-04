//
//  CircleImage.swift
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

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .frame(width: 200, height: 200)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color(.black),lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("blue-diamond"))
    }
}
