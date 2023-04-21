//
//  AnswerRow2.swift
//  DiscoverRamadan
//
//  Created by Ario Syahputra on 18/04/23.
//

import SwiftUI

struct AnswerRow: View {
    public var questionIndex: Int
    public var correctAnswerIndex: Int
    public var onNextQuestion: (Bool) -> Void
    
    @State private var selectedAnswerIndex: Int? = nil
    
    var body: some View {
        VStack{
            ForEach(selectionQuestion[questionIndex].choices.shuffled(), id: \.0) { answer in
                Button(action: {
                    selectedAnswerIndex = answer.id
                    onNextQuestion(selectedAnswerIndex == correctAnswerIndex)
                }) {
                    ZStack (alignment: .leading){
                        RoundedRectangle(cornerRadius: 15).frame(width: 270, height: 50).foregroundColor(.white)
                        HStack{
                            Text(answer.value)
                                .font(.system(size: 20))
                                .fontWeight(.semibold)
                                .foregroundColor(.black)
                                .padding()
                        }
                    }
                }
            }
        }
    }
}



struct AnswerRow_Previews: PreviewProvider {
    static var previews: some View {
        AnswerRow(
            questionIndex: 1, correctAnswerIndex: 1,
            onNextQuestion: {_ in 
                print("Next")
            }
        )
    }
}
