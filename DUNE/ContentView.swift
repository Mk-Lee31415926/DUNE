//
//  ContentView.swift
//  BookApp
//
//  Created by User03 on 2021/10/27.
//

import SwiftUI

struct ContentView: View {
    @State private var shoWhich: Int = 0
    
    var body: some View {
        TabView{
            //Main tab 
            ZStack {
                //Cover photo 要換
//                Image("MainPageCover")
//                    .resizable()
//                    .scaledToFit()
//                    .opacity(0.5)
                Text("The spice extends LIFE. The spice expands consciousness. The spice is vital to space travel. He who controls the spice controls the universe. Fear is the mind-killer. A beginning is a very delicate time. It is by will alone I set my mind in motion. The mystery of life isn't a problem to solve, but a reality to experience. The sleeper must awaken."
                )
                .font(.custom("ROCKETWILDNESS",size: 30))
                .fontWeight(.heavy)
                //.multilineTextAlignment(.trailing)
                .clipShape(Rectangle())
            }
            .tabItem {
                    Label("Main()",systemImage:"house.circle")
            }
            
            // 1st Tab (Top Cast)
            ZStack {
                Image("CastView_bg")
                CastList()
                //
                //CastRow(actor: .testRow)
            }
            .tabItem {
                    Label("Top cast",systemImage:"person.crop.rectangle")
            }
            
            //2nd Tab
            GiveMe(name:actors[shoWhich])
            .onTapGesture {
                shoWhich = Int.random(in: 0...11)
            }
            .tabItem {
                Label("製作中",systemImage:"nose")
            }
        }
        .navigationTitle("Now you're stuck.")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}

struct GiveMe: View {
    @State private var opacity: Double = 0
    @State private var show = false
    
    let name: String
    var body: some View {
        Image(name)
            .resizable()
            .scaledToFill()
            .frame(width:300,height:400)
            .transition(.opacity)
            .animation(.easeInOut(duration: 4),value: show)
            .onAppear{
                opacity = 1
                show = true
            }
    }
}
