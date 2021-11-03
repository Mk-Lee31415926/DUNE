//
//  ActorDetail.swift
//  DUNE
//
//  Created by User03 on 2021/10/31.
//

import Foundation
import SwiftUI
struct ActorDetail: View{
    //design as option, to output cast or actor detail
    //can it be reused?
    //let callDetail: String
    let actor: Actor
    
    var body: some View{
        //actor page
        TabView{
            ScrollView {
                VStack {
                    Text("Cast Intro")
                    //TitleSetView(typein: "Cast Intro")
                    //actor pic
                    ImageSetView(who: actor.cast_name,
                                 width: 300)
                    //actor bio
                    TextSetView(who: actor.cast_bio,
                                width: 300)
                }
            }
//            .tabItem {
//                Label("Cast",systemImage:"mustache")
//
//            }
            ScrollView {
                VStack {
                    Text("Actor Bio")
                    //TitleSetView(typein: "Actor Bio")
                    //actor pic
                    ImageSetView(who: actor.name,
                                 width: 300)
                    //actor bio
                    TextSetView(who: actor.actor_bio,
                                width: 300)
                }
            }
//            .tabItem {
//                Label("Actor",systemImage:"person.fill.viewfinder")\
//            }
            
        }
        .tabViewStyle(PageTabViewStyle())
        //adjust display  ( cant see dot in bright setting
        
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


//weird, this part cause bug. ??
//struct TitleSetView: View {
//    let typein: String
//    var body: some View {
//        Text(typein)
//            //.font(.custom("ROCKETWILDNESS",size: 30))
////            .background(LinearGradient(gradient: Gradient(colors: [Color.orange, Color.white]), startPoint: /*@START_MENU_TOKEN@*/.topLeading/*@END_MENU_TOKEN@*/, endPoint: .bottomTrailing))
//    }
//}
