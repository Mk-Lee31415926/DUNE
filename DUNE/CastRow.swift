//
//  CastList.swift
//  BookApp
//  This is use to generate Cast List Template for Cast View
//  Created by User03 on 2021/10/30.
//

import Foundation
import SwiftUI

struct CastRow: View{
    var actor : Actor
    var body: some View{
        HStack(){
            //Round Cast Image :(Use cast_name to pull image from assets)
            Image(actor.cast_name)
                .resizable()
                .clipShape(Circle())
                .scaledToFit()
                .frame(width: 200, height: 200)
                .shadow(color: .orange, radius: 10)
                .padding(.leading,5)
            //missing part
            VStack(spacing: 0.0) {
                //Actor(tress) name
                Text(actor.name)
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
                // cast name in DUNE
                Text("as  " + actor.cast_name)
                    .font(.body)
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.center)
            }
        }
        .padding()
        //.clipshape(Circle()) 沒辦法使用圓角
        .background(LinearGradient(gradient: Gradient(colors: [Color.gray, Color.white]), startPoint: /*@START_MENU_TOKEN@*/.topLeading/*@END_MENU_TOKEN@*/, endPoint: .bottomTrailing))
        //.frame(width: 150, height: 150)
        
        //why isn't working?
        //A; cornerRadius cant act on Stack
        //->Add blank Image under and adjust
        // bug: Spacer() make picture shift left
        //Solve:Spacer should follow Stack component
        
    }
}

struct CastRow_Previews: PreviewProvider{
    static var previews: some View{
        CastRow(actor: .testRow)
    }
}
