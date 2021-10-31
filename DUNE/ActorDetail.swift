//
//  ActorDetail.swift
//  DUNE
//
//  Created by User03 on 2021/10/31.
//

import Foundation
import SwiftUI
struct ActorDetail: View{
    let actor: Actor
    var body: some View{
        
        //make horizontal scroll
        ScrollView(.horizontal, showsIndicators: true){
            HStack {
                    //character page
                    VStack{
                        //cast pic
                        ImageSetView(who: actor.cast_name,
                                     width: 300)
                        //cast bio
                        TextSetView(who: actor.cast_bio,
                                    width:300)

                    }
                    //actor page
                ScrollView {
                    VStack {
                            //actor pic
                            ImageSetView(who: actor.name,
                                         width: 300)
                            //actor bio
                            TextSetView(who: actor.actor_bio,
                                        width: 300)
                    }
                }
                }
        }
        
    }
}
struct ActorDetail_Previews: PreviewProvider{
    static var previews: some View{
        ActorDetail(actor: .testRow)
    }
}

//HaHa make it easier and save time with sunview
struct ImageSetView: View {
    let who: String
    let width: CGFloat
    var body: some View {
        Image(who)
            .resizable()
            .scaledToFit()
            .frame(width: width, height: .infinity, alignment: .center)
            .cornerRadius(30)
            .padding()
    }
}

struct TextSetView: View {
    let who: String
    let width: CGFloat
    var body: some View {
        Text(who)
            .frame(width: width, height: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .padding()
            .background(Color(red: 1.0, green: 237/255, blue:166/255, opacity: 1.0))
            .cornerRadius(30)
    }
}
