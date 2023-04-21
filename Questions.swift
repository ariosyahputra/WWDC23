//
//  Data.swift
//  DiscoverRamadan
//
//  Created by Ario Syahputra on 13/04/23.
//

import SwiftUI

struct Question {
    let number: Int
    let question: String
    let choices: [(id: Int, value: String)]
    let correctAnswerIndex: Int
}

var selectionQuestion = [
    Question(number: 0, question: "What is the most exciting month in the islamic calendar??", choices: [(0, "Ramadan"), (1, "Muharram"), (2, "Sha'ban")], correctAnswerIndex: 0),
    Question(number: 1, question: "The Fast is broken at Sunset is called?", choices: [(0, "Suhoor"), (1, "Iftar"), (2, "Breakfast")], correctAnswerIndex: 1),
    Question(number: 2, question: "What is it called when Muslims eat a meal at dawn to prepare for fasting?", choices: [(0, "Iftar"), (1, "Suhoor"),(2, "Dinner")], correctAnswerIndex: 1),
    Question(number: 3, question: "During Ramadan, Muslims abstain from food and drink from dawn until _____", choices: [(0, "Noon"), (1, "Midnight"), (2, "Sunset")], correctAnswerIndex: 2),
    Question(number: 4, question: "Tarawih is performed after _____ prayer", choices: [(0, "Isha"), (1, "Maghrib"), (2, "Dhuhr")], correctAnswerIndex: 0)


]


