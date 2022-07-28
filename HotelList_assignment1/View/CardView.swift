//
//  CardView.swift
//  HotelList_assignment1
//
//  Created by Thinh, Nguyen Truong on 28/07/2022.
//

import SwiftUI

struct CardView: View {
    var text: String
    
    var body: some View {
        ZStack {
        RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(.white).shadow(radius: 10)

                    VStack {
                        Text("Description")
                            .font(.largeTitle)
                            .foregroundColor(.black)

                        Text(text)
                            .font(.body)
                            .foregroundColor(.gray)
                    }
                    .padding(20)
                    .multilineTextAlignment(.center)
                }
                
            }
    }

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(text: "Sky Gem Hotel offers ultimate comfort and luxury. This 4-storied hotel is a beautiful combination of traditional grandeur and modern facilities. The 255 exclusive guest rooms are furnished with a range of modern amenities such as television and internet access. International direct-dial phone and safe are also available in any of these rooms. Wake-up call facility is also available in these rooms. ")
    }
}
