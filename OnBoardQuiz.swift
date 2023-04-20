//
//  OnBoardQuiz.swift
//  DiscoverRamadan
//
//  Created by Ario Syahputra on 07/04/23.
//

import SwiftUI

@available(iOS 16.0, *)
struct OnBoardQuiz: View {
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        
        VStack{
            Text("**Nicely done!**\nYou’ve come this far and have the understanding of Ramadan,\nReady to challenge your knowledge?")
                .font(.system(size: 25))
                .multilineTextAlignment(.center)
                .foregroundColor(Color("DarkGreen"))
            
            

            NavigationLink(destination: QuestionView()){
                Text("I'm Ready")
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                    .frame(width: 220, height: 60)
                    .background(Color("Green"))
                    .foregroundColor(.white)
                    .cornerRadius(40)
            }.offset(y: 150)
            
        }.padding(4)
        
    }
}

//struct OnBoardQuiz_Previews: PreviewProvider {
//    static var previews: some View {
//        OnBoardQuiz()
//    }
//}
