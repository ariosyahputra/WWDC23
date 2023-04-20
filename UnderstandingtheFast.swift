//
//  UnderstandingtheFast.swift
//  DiscoverRamadan
//
//  Created by Ario Syahputra on 07/04/23.
//

import SwiftUI

@available(iOS 16.0, *)

struct UnderstandingtheFast: View {
    @EnvironmentObject var appState: AppState

    var body: some View {
        VStack{
        
            HStack{
                Text("Next up,\nUnderstanding the Fast")
                    .font(.system(size: 27))
                    .fontWeight(.bold)
                    .foregroundColor(Color("DarkGreen"))
                    Spacer()
            }
            
            LottieView(name: "understanding_thefast",loopMode: .autoReverse)
                .frame(width: 250, height: 250)
            
            
            VStack{
                ScrollView{
                    Text("Muslims abstain from food and drink **from dawn until sunset**. The meal is eaten before dawn called **Suhoor**.\n\nThe fast is broken at **sunset** with a meal called **iftar**, which **traditionally includes dates and water**, it is believed that prophet Muhammad did the same. Muslims then perform the sunset prayer (Maghrib) before partaking in a larger meal.\n\nThe fast is meant to teach self-control and promote empathy for the less fortunate.").font(.system(size: 18))
                    
                }.padding(25)
                
            }.background(Color("Green"))
                .cornerRadius(30)
                .foregroundColor(.white)
            
            HStack{
                Spacer()
                NavigationLink(destination: RamadanPrayer()){
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
struct UnderstandingtheFast_Previews: PreviewProvider {
    static var previews: some View {
        UnderstandingtheFast()
    }
}
