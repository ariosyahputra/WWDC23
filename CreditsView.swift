//
//  CreditsView.swift
//  DiscoverRamadan
//
//  Created by Ario Syahputra on 12/04/23.
//

import SwiftUI

@available(iOS 16.0, *)
struct CreditsView: View {
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        VStack{
            
            VStack{
                Text("Credits").font(.system(size: 30)).fontWeight(.bold).foregroundColor(.white).padding(.bottom,10)
                ScrollView{
                    VStack (alignment: .leading){
                        
                        Text(.init("**Background Music** \nhttps://www.youtube.com/watch?v=rlGjxyxeaZg")).fontWeight(.light).foregroundColor(.white).tint(.white).padding(.vertical,5)
                        

                    }
                }
                
            }.padding(20).padding(.vertical,25).frame(width: 335, height: 550).background(Color("Green")).cornerRadius(30)
    
        }.padding(.bottom,20)

    }
}

@available(iOS 16.0, *)
struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
    }
}
