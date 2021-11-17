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
        "Arrakis","ArtConcept" ,"ArtWork" ,"Atreides" ,"AtreidesMark" ,"Chani_Paul" ,"chani" ,"DUNE" ,"DUNEArt" ,"Harkonnen" ,"Illustartions" ,"Jessica", "movie_Jessica" ,"Paul_Jessica" ,"SecretOfDUNE" ,"SketchAlla" ,"SketchChani", "SketchDuncan" ,"SketchFremen" ,"SketchJessica" ,"SketchLeto" ,"SketchMohiam", "SketchPaul","SketchStilgar"]
    let casts = [
        "Paul Atreides","Lady Jessica Atreides","Duke Leto Atreides","Duncan Idaho","Gurney Halleck","Dr. Wellington Yueh","Thufir Hawat","Chani","Stilgar","Dr. Liet Kynes","Baron Vladimir Harkonnen","Beast Rabban Harkonnen","Piter de Vries","Reverend Mother Mohiam"]
    @State private var shoWhich: Int = 0
    @State private var drawCast: Int = 0
    //private means only inside struct can it be used
    
    //引入mp4檔會導致preview掛掉
    //let videoUrl = URL(fileURLWithPath: Bundle.main.path(forResource: "mainPgMotion", ofType: "mp4")!)
    var body: some View {
        TabView{
            //Main tab
                //Navigationview 會遮蓋所有底圖，背景圖及文字都放不進去
                
                NavigationView {
                    //NavigationView是真整顯示的區塊，所以應該將背景放這
                    ZStack {
                        
                        Image("MainPgCover")
                        .resizable()
                        .scaledToFit()
                        .ignoresSafeArea()
                        Text("DUNE")
                        .foregroundColor(.blue)
                        .font(.custom("ROCKETWILDNESS",size: 100))
                        .fontWeight(.heavy)
                        .shadow(radius: 20)
    //                  VideoPlayer(player: AVPlayer(url: videoUrl))
    //                      .frame(width: 100, height: 100)
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
            
            //Exercise button and random and @State property
            VStack {
                //use drawCast as variable
                GiveMe(name: casts[drawCast])
                Button {
                    drawCast = Int.random(in: 0...13)
                } label: {
                    Label("Which DUNE chararcter are u ? ", systemImage: "circle")
                        .font(.title3)
                        .foregroundColor(.white)
                        .padding()
                }
                .background(Color.black)
                .cornerRadius(20)
                //.clipShape(Capsule())
                //.buttonStyle(.bordered) This is new ver. coding lang...
            }
            .tabItem {
                Label("ButtonTest",systemImage:"scribble.variable")
            }
            
            //character random
            //how to get actors data to this page??
            GiveMe(name:casts[shoWhich])
            .onTapGesture {
                shoWhich = Int.random(in: 0...13)
            }
            .tabItem {
                Label("Pending.",systemImage:"circlebadge.2")
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
            .cornerRadius(10)
            .shadow(color: .gray, radius: 10)
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
            .scaledToFit()
            .cornerRadius(20)
            
        }
    }
}
