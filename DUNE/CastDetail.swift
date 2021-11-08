//
//  CastDetail.swift
//  DUNE
//
//  Created by User03 on 2021/11/8.
//

import Foundation
import SwiftUI
struct CastDetail: View{
    //design as option, to output cast or actor detail
    //can it be reused?
    //let callDetail: String
    let actor: Actor
    
    var body: some View{
        ScrollView {
            VStack {
                Text("Cast Intro")
                //TitleSetView(typein: "Cast Intro")
                //actor pic
                CImageSetView(who: actor.cast_name,
                             width: 300)
                //actor bio
                CTextSetView(who: actor.cast_bio,
                            width: 300)
            }
        }
    }
}
struct CastDetail_Previews: PreviewProvider{
    static var previews: some View{
        CastDetail(actor: .testRow)
            
            
    }
}

//HaHa make it easier and save time with sunview
struct CImageSetView: View {
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

struct CTextSetView: View {
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
