//
//  HomeView.swift
//  DiscoverRamadan
//
//  Created by Ario Syahputra on 07/04/23.
//

import SwiftUI

@available(iOS 16.0, *)

struct HomeView: View {
    @EnvironmentObject var appState: AppState

    var body: some View {
        GeometryReader { geometry in
            NavigationView {
                VStack {

                    Text("Discover Ramadan")
                        .font(.system(size: 37))
                        .fontWeight(.heavy)
                        .foregroundColor(Color("DarkGreen"))
                    
                 
                    Image("ramadan_learn").frame(width: 380, height: 290)
                        .padding(.vertical,60)
                        

                    Text("Get ready to embark on a journey to learn about\n the traditions and practices of Ramadan.")
                        .font(.system(size: 15))
                        .fontWeight(.light)
                        .foregroundColor(Color("DarkGreen"))
                        .multilineTextAlignment(.center)

                    NavigationLink(destination: WhatisRamadan()){
                        Text("Explore Now")
                            .font(.system(size: 20))
                            .fontWeight(.semibold)
                            .frame(width: 220, height: 60)
                            .background(Color("Green"))
                            .foregroundColor(.white)
                            .cornerRadius(40)
                            .frame(width: 67, height: 52)
                    }.padding(.top,30)
                }.padding().onAppear(perform: soundManager.instance.playSound)
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .frame(width: geometry.size.width, height: geometry.size.height)

        }
    }
}

//struct HomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeView()
//    }
//}
