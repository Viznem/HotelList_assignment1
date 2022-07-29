//
//  ReviewCard.swift
//  HotelList_assignment1
//
//  Created by Thinh, Nguyen Truong on 28/07/2022.
//

import SwiftUI

struct ReviewCard: View {
    var thisHotel: Hotel
    @State var review: String = "Hello World"
    @State private var isShowingText = false
    @State private var isShowingInput = false
    
    func save(){
        hotels[thisHotel.id].reviews.append(review)
    }
    
    var body: some View {
    
        ZStack {
        RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(.white).shadow(radius: 10)

                    VStack {
                        HStack{
                            Text("Review")
                                .font(.largeTitle)
                                .foregroundColor(.black)
                                .onTapGesture {
                                    isShowingText.toggle()
                                }
                        }

                        if isShowingText{
                            Button(action: {
                                isShowingInput = true
                            }, label: {
                                Image(systemName: "plus.circle.fill")
                                    .foregroundColor(.black)
                            }).frame(alignment: .trailing)
                                .font(Font.system(.title).bold())
                            
                            
                             
                            TextField("Add Review", text: $review)
                            Button("submit"){save()}
                                
                            
                            
                            
                            ForEach(thisHotel.reviews, id:\.self) { review in
                                HStack{
                                    Image("user")
                                    Text(review)
                                        .font(.body)
                                        .foregroundColor(.gray)
                                }.frame(maxWidth: .infinity ,alignment: .leading)
                            }
                        }
                    }
                    .padding(20)
                    .multilineTextAlignment(.center)
                }
            }
    }


struct ReviewCard_Previews: PreviewProvider {
    static var previews: some View {
        ReviewCard(thisHotel: hotels[0])
    }
}
