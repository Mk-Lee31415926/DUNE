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
        HStack(alignment: .center){
            //Round Cast Image :(Use cast_name to pull image from assets)
            Image(actor.cast_name)
                .resizable()
                .clipShape(Circle())
                .scaledToFit()
                .frame(width: 200, height: 200)
                .shadow(color: .orange, radius: 10)
                .padding(.leading,30)
                
            //missing part
            VStack(spacing: 5.0) {
                //Actor(tress) name
                Text(actor.name)
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.trailing)
                // cast name in DUNE
                Text("as  " + actor.cast_name)
                    .font(.body)
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.center)
            }
        }
        .padding(.horizontal)
        //.background(Color.init(red: 1.0, green: 1.0, blue: 1.0, opacity: 0.7))
        .frame(width: 150, height: 150)
        //.clipshape(Circle())
        //why isn't working?
        //A; cornerRadius cant act on Stack
        //->Add blank Image under and adjust
        // bug: Spacer() make picture shift left
        //Solve:Spacer should follow Stack component
        
    }
}
