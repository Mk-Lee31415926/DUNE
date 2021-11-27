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
    //@Binding var selectCast: String?
    @Binding var selectActor: String?
    var body: some View{
        HStack {
            VStack {
                    //Cast picture
                    Image(actor.cast_name)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 200, height: 200)
                        .cornerRadius(10)
                        .shadow(color: Color.gray, radius: 15)
                        .padding()
                        .clipped()
            
                    //Actor(tress) name 連接ActorDetail
                    Button{
                        print(actor.name)
                        selectActor = actor.name
                    }label: {
                        Text(actor.name)
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                    }
            
                    // cast name in DUNE 連結CastDetail
                    Button{
                        print(actor.cast_name)
                        //selectCast = actor.cast_name
                    }label: {
                        Text("as  " + actor.cast_name)
                            .font(.body)
                            .fontWeight(.regular)
                            .foregroundColor(Color("ConceptColor02"))
                            .multilineTextAlignment(.center)
                    } 
                }
                //.buttonStyle(.plain)
                .padding()
                //.clipshape(Circle()) 圓角沒辦法作用在STack上
            Spacer()
        }
        .background(LinearGradient(gradient: Gradient(colors: [Color("ConceptColor05"), Color.white]), startPoint: .top, endPoint: .bottomTrailing))
        //why isn't it working?
        //A: cornerRadius cant act on Stack
        //->Add blank Image under and adjust
        // bug: Spacer() make picture shift left
        //Solve:Spacer should follow Stack component
    }
}

