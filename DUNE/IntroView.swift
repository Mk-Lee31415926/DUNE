//
//  IntrroView.swift
//  BookApp
//
//  Created by User03 on 2021/10/30.
//

import SwiftUI

struct IntroView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("DuneConceptArt")
                    .resizable()
                    .scaledToFit()
                // Use Text As Link to main page
                NavigationLink(
                    destination: ContentView(),
                    label: {
                        VStack {
                            Image(systemName:"circle.circle")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50, alignment: .center)
                                .foregroundColor(.orange)
                                .font(.system(size: 100, weight: .bold, design: .serif))
                            
                            Text("Dive in")
                                .font(.custom("ROCKETWILDNESS",size: 50))
                                .foregroundColor(.orange)
                        }
                    }
                )
                
            }
            .background(Color("ConceptColor03"))  // wont work?
            .navigationTitle("Welcome To DUNE")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
