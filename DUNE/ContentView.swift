//
//  ContentView.swift
//  BookApp
//
//  Created by User03 on 2021/10/27.
//
import AVKit
import SwiftUI

struct ContentView: View {
    let pics = [
        "Arrakis","ArtConcept" ,"ArtWork" ,"Atreides" ,"AtreidesMark" ,"Chani&Paul" ,"chani" ,"DUNE" ,"DUNEArt" ,"Harkonnen" ,"Illustartions" ,"Jessica", "movie_Jessica" ,"Paul&Jessica" ,"SecretOfDUNE" ,"SketchAlla" ,"SketchChani", "SketchDuncan" ,"SketchFremen" ,"SketchJessica" ,"SketchLeto" ,"SketchMohiam", "SketchPaul","SketchStilgar"]
    let casts = [
        "Paul Atreides","Lady Jessica Atreides","Duke Leto Atreides","Duncan Idaho","Gurney Halleck","Dr. Wellington Yueh","Thufir Hawat","Chani","Stilgar","Dr. Liet Kynes","Baron Vladimir Harkonnen","Beast Rabban Harkonnen","Piter de Vries","Reverend Mother Mohiam"]
    @State private var shoWhich: Int = 0
    //引入mp4檔會導致preview掛掉
    //let videoUrl = URL(fileURLWithPath: Bundle.main.path(forResource: "mainPgMotion", ofType: "mp4")!)
    var body: some View {
        TabView{
            //Main tab 
            ZStack {
                //Navigationview 會遮蓋所有底圖，背景圖及文字都放不進去
                Text("DUNE")
                .foregroundColor(.blue)
                .font(.custom("ROCKETWILDNESS",size: 100))
                .fontWeight(.heavy)
                .shadow(radius: 20)
                
                Image("MainPgCover")
                .resizable()
                .scaledToFill()
                .clipped()
//                VideoPlayer(player: AVPlayer(url: videoUrl))
//                    .frame(width: 100, height: 100)
                NavigationView {
                    ScrollView(.horizontal){
                        let rows = Array(repeating: GridItem(), count: 2)
                        LazyHGrid(rows: rows, spacing: 20){
                            ForEach(pics.indices){ item in
                                NavigationLink(
                                    destination:
                                        Image(pics[item])
                                        .resizable()
                                        .scaledToFit()
                                    ,label: {
                                        ViewWall(pic_name: pics[item])
                                    })
                                    
                                
                            }
                        }
                            
                    }
                }
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
                shoWhich = Int.random(in: 0...13)
            }
            .tabItem {
                Label("Random",systemImage:"circlebadge.2")
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

struct ViewWall: View {
    let pic_name: String
    var body: some View {
        VStack {
           Image(pic_name)
            .resizable()
            .scaledToFill()
            .cornerRadius(20)
            
        }
    }
}
