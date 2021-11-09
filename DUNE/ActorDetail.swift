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
                Text("Actor Bio")
                //TitleSetView(typein: "Actor Bio")
                //actor pic
                AImageSetView(who: actor.name,
                             width: 300)
                //actor bio
                ATextSetView(who: actor.actor_bio,
                            width: 300)
                //純測試link
                Link("Read more...", destination: URL(string:"https://medium.com/%E5%BD%BC%E5%BE%97%E6%BD%98%E7%9A%84-swift-ios-app-%E9%96%8B%E7%99%BC%E5%95%8F%E9%A1%8C%E8%A7%A3%E7%AD%94%E9%9B%86/swiftui-%E9%BB%9E%E9%81%B8%E6%89%93%E9%96%8B%E9%80%A3%E7%B5%90%E7%9A%84-link-%E6%8C%89%E9%88%95-2b0c382f5468")!)
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
            .background(LinearGradient(gradient: Gradient(colors: [Color("ConceptColor03"), Color.white]), startPoint: /*@START_MENU_TOKEN@*/.topLeading/*@END_MENU_TOKEN@*/, endPoint: .bottomTrailing))
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
