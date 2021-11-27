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
    
    @Binding var opacity: Double
    @Binding var offset: Double
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
                        .opacity(opacity)
                        .animation(.easeOut(duration:10),value: opacity)
                        .onAppear{
                            opacity = 1
                        }
                    //Actor(tress) name 連接ActorDetail
                    NavigationLink(
                        destination: ActorDetail(actor: actor),
                        label: {
                            Text(actor.name)
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                                .multilineTextAlignment(.center)
                        })
                    // cast name in DUNE 連結CastDetail
                    NavigationLink(
                        destination: CastDetail(actor: actor),
                        label: {
                            Text("as  " + actor.cast_name)
                                .font(.body)
                                .fontWeight(.regular)
                                .foregroundColor(Color("ConceptColor02"))
                                .multilineTextAlignment(.center)
                        })
                        
                }
                //.buttonStyle(.plain)
                .padding()
                //.clipshape(Circle()) 圓角不會作用在STack上
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
//加了偵測點選值的binding資料好像就無法preview了＝＝
struct CastRow_Previews: PreviewProvider{
    static var previews: some View{
        CastRow(actor: .testRow, selectActor: .constant("Timothée Chalamet"),opacity:.constant(1),offset:.constant(1))
    }
}
