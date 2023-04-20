//
//  BreakingtheFast.swift
//  DiscoverRamadan
//
//  Created by Ario Syahputra on 07/04/23.
//

import SwiftUI

@available(iOS 16.0, *)
struct RamadanPrayer: View {
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        VStack{
            
            HStack{
                Text("Moving along,\nRamadan Prayer")
                    .font(.system(size: 27))
                    .fontWeight(.bold)
                    .foregroundColor(Color("DarkGreen"))
                    Spacer()
            }
            
            LottieView(name: "ramadan_prayer",loopMode: .autoReverse)
                .frame(width: 250, height: 250)
            
            VStack{
                ScrollView{
                    Text("During Ramadan, **Muslims increase prayer and worship** by attending congregational prayers at the mosque.\n\nSpecial prayers, such as **Tarawih**, are performed after Isha prayer, and **Laylat al-Qadr** is a significant night of prayer and supplication.\n\nMuslims also practice **Zakat**, or almsgiving, to purify their wealth and assist those in need.").font(.system(size: 18))
                    
                }.padding(25)
                
            }.background(Color("Green"))
                .cornerRadius(30)
                .foregroundColor(.white)
            
            HStack{
                Spacer()
                NavigationLink(destination: OnBoardQuiz()){
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
struct RamadanPrayer_Previews: PreviewProvider {
    static var previews: some View {
        RamadanPrayer()
    }
}
