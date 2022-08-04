//
//  WelcomeView.swift
//  HotelList_assignment1
//
//  Created by Thinh, Nguyen Truong on 27/07/2022.
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

struct WelcomeView: View {
    @State var isWelcomeActive: Bool = true
    var body: some View {
        ZStack {
            if isWelcomeActive {
                GreetingView(active: $isWelcomeActive)
            } else {
                HotelList()
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
