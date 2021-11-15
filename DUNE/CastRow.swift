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
            VStack(spacing: 0.0) {
                
                //Cast picture
                Image(actor.cast_name)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 200)
                    .cornerRadius(10)
                    .shadow(color: Color.gray, radius: 15)
                    .padding()
                    .clipped()
        
                //Actor(tress) name
                Text(actor.name)
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
        
                // cast name in DUNE
                Text("as  " + actor.cast_name)
                    .font(.body)
                    .fontWeight(.regular)
                    .foregroundColor(Color("ConceptColor02"))
                    .multilineTextAlignment(.center)
            }
            .padding()
            //.clipshape(Circle()) 沒辦法使用圓角
            .background(LinearGradient(gradient: Gradient(colors: [Color("ConceptColor05"), Color.white]), startPoint: .top, endPoint: .bottomTrailing))
        //why isn't it working?
        //A: cornerRadius cant act on Stack
        //->Add blank Image under and adjust
        // bug: Spacer() make picture shift left
        //Solve:Spacer should follow Stack component
    }
}

struct CastRow_Previews: PreviewProvider{
    static var previews: some View{
        CastRow(actor: .testRow)
            .preferredColorScheme(.dark)
    }
}
