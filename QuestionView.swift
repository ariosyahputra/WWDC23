//
//  QuestionView.swift
//  DiscoverRamadan
//
//  Created by Ario Syahputra on 07/04/23.
//

import SwiftUI

@available(iOS 16.0, *)

struct QuestionView: View {
    @State private var currentIndex: Int = 0
    @State private var score = 0
    @State private var showScoreView = false
    var randomQuestion = selectionQuestion.shuffled()
    
    
    var body: some View {
        VStack{
            VStack{
                Text("Challenge your self").font(.system(size: 32)).fontWeight(.heavy).foregroundColor(Color("DarkGreen"))
            }.padding(.bottom,55)
            
            
            VStack (alignment: .leading){
                
                Text("\(currentIndex + 1) of \(randomQuestion.count)").font(.system(size: 18)).fontWeight(.bold).foregroundColor(.white)
                    Text("Ramadan Knowledge").font(.system(size: 18)).fontWeight(.light).foregroundColor(.white)
                
                
                Text(randomQuestion[currentIndex].question).font(.system(size: 18)).fontWeight(.semibold).foregroundColor(.white).padding(.top,5)
                
                
                
                VStack{
                    VStack (spacing: 15){
                        AnswerRow(questionIndex: randomQuestion[currentIndex].number, correctAnswerIndex: randomQuestion[currentIndex].correctAnswerIndex) { isCorrect in
                                        if isCorrect {
                                            score += 100/randomQuestion.count
                                        }
                                        if currentIndex < randomQuestion.count - 1 {
                                            currentIndex += 1
                                            print("Final score: \(score)")
                                        } else {
                                            print("Final score: \(score)")
                                            showScoreView = true
                                        }
                                    }
                    }
                    
                    
                }.padding(.vertical,60)
            }.padding().frame(width: 315, height: 520).background(Color("Green")).cornerRadius(30)
            
            NavigationLink(destination: ScoreView(score: $score), isActive: $showScoreView) {
                           
                       }.navigationTitle("").navigationBarHidden(true)
            
        }
        
    }
}



@available(iOS 16.0, *)
struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}

