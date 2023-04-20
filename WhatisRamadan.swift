//
//  WhatisRamadan.swift
//  DiscoverRamadan
//
//  Created by Ario Syahputra on 07/04/23.
//

import SwiftUI

@available(iOS 16.0, *)
struct WhatisRamadan: View {
    @EnvironmentObject var appState: AppState

    var body: some View {
        VStack{
        
            HStack{
                Text("Our first stop,\nWhat is Ramadan?")
                    .font(.system(size: 27))
                    .fontWeight(.bold)
                    .foregroundColor(Color("DarkGreen"))
                    Spacer()
            }
            
            Image("whatisRamadan")
                .frame(width: 250, height: 250)
            
            
            VStack{
                ScrollView{
                    
                    Text("Welcome to Ramadan!\nThe most exciting month in the Islamic calendar!\n\n**Ramadan is the ninth month of the Islamic calendar**, and it is considered to be the holiest month of the year for Muslims.\n\nIt is a time of **fasting, prayer, and spiritual** reflection for Muslims around the world and believed to be the month in which the **first verses of the Quran**, the holy book of Islam, were revealed to the Prophet Muhammad.")
                        .font(.system(size: 18))
                    
                }.padding(25)
                
            }.background(Color("Green"))
                .cornerRadius(30)
                .foregroundColor(.white)
            
            HStack{
                Spacer()
                NavigationLink(destination: UnderstandingtheFast()){
                    Image(systemName: "chevron.right")
                        .font(.system(size: 20))
                        .fontWeight(.semibold)
                        .frame(width: 67, height: 52)
                        .background(Color("Green"))
                        .foregroundColor(.white)
                        .cornerRadius(40)
                    
                }.padding(.vertical,15)
            }
            
        }.padding(.horizontal,30)
        
    }
}

@available(iOS 16.0, *)
struct WhatisRamadan_Previews: PreviewProvider {
    static var previews: some View {
        WhatisRamadan()
    }
}
