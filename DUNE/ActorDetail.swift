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
        ScrollView {
            VStack {
                TitleSetView(typein:"Actor Bio")
                Text(actor.name)
                    .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                //actor pic
                AImageSetView(who: actor.name,
                             width: 300)
                //actor bio
                ATextSetView(who: actor.actor_bio,
                            width: 300)
                //純測試link
                
                //let Imdbhref: String = actor.actor_link
                Link("Read more on Imdb...", destination: URL(string: "\(actor.actor_link)")!)
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
struct AImageSetView: View {
    let who: String
    let width: CGFloat
    var body: some View {
        Image(who)
            .resizable()
            .scaledToFit()
            .frame(width: width, height: .infinity, alignment: .center)
            .cornerRadius(30)
            .shadow(color: Color("ConceptColor02"),radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .padding()
    }
}

struct ATextSetView: View {
    let who: String
    let width: CGFloat
    var body: some View {
        Text(who)
            .foregroundColor(.black)
            .frame(width: width, height: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [Color("ConceptColor03"), Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(30)
            
    }
}


//weird, this part cause bug. ??
struct TitleSetView: View {
    let typein: String
    var body: some View {
        Text(typein)
            .font(.custom("ROCKETWILDNESS",size: 30))
    }
}
