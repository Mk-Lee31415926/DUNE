//
//  ContentView.swift
//  BookApp
//
//  Created by User03 on 2021/10/27.
//
import AVKit
import SwiftUI

struct ContentView: View {
    let casts = [
        "Paul Atreides","Lady Jessica Atreides","Duke Leto Atreides","Duncan Idaho","Gurney Halleck","Dr. Wellington Yueh","Thufir Hawat","Chani","Stilgar","Dr. Liet Kynes","Baron Vladimir Harkonnen","Beast Rabban Harkonnen","Piter de Vries","Reverend Mother Mohiam"]
    @State private var shoWhich: Int = 0
    //引入mp4檔會導致preview掛掉
    //let videoUrl = URL(fileURLWithPath: Bundle.main.path(forResource: "mainPgMotion", ofType: "mp4")!)
    var body: some View {
        TabView{
            //Main tab 
            ZStack {
                //Cover photo 要換
                Text("TEXT")
                .font(.custom("ROCKETWILDNESS",size: 30))
                .fontWeight(.heavy)
                .background(Image("MainPgCover")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 440, height: .infinity, alignment: .center)
                                .clipped()
                )

//                VideoPlayer(player: AVPlayer(url: videoUrl))
//                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
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
            //which role do you play in this world?
            //character random
            //how to get actors to this page??
            GiveMe(name:casts[shoWhich])
            .onTapGesture {
                shoWhich = Int.random(in: 0...14)
            }
            .tabItem {
                Label("Random",systemImage:"dice")
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
        .preferredColorScheme(.dark)
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
