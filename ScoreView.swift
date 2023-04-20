//
//  ScoreView.swift
//  DiscoverRamadan
//
//  Created by Ario Syahputra on 07/04/23.
//

import SwiftUI

@available(iOS 16.0, *)
struct ScoreView: View {
    @EnvironmentObject var appState: AppState
    @Binding var score: Int

    var body: some View {
        VStack{
            
            Text("**Alhamdulillah, you've got**\n\n **\(score)🎉**\n\nCongratulations on taking the first step to learn about Ramadan!\n\nBy taking the first step towards learning about Ramadan, you're opening the door to a world of understanding, compassion, and cultural diversity. ")
                .font(.system(size: 25))
                .multilineTextAlignment(.center)
                .foregroundColor(Color("DarkGreen"))
                .padding(.vertical,40)
            
            
            Button(action: {
                withAnimation{
                    appState.rootViewId = UUID()
                }
            }, label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 40)
                        .frame(width: 220, height: 60)
                        .foregroundColor(Color("Green"))
                    
                    Text("OK")
                        .font(.system(size: 20))
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                    
                }
            })
            
            VStack{
                NavigationLink(destination: CreditsView()){
                    Text("Credits")
                        .font(.system(size: 18))
                        .fontWeight(.light)
                        .foregroundColor(Color("Green"))
                }
            }.padding(.vertical,10)
            
        }.padding(30)
            .navigationBarBackButtonHidden(true)
    }
}

@available(iOS 16.0, *)
struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(score: .constant(3))
    }
}
