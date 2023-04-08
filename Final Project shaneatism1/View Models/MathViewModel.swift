//
//  DeckViewModel.swift
//  Assignment3
//
//  Created by user231162 on 3/22/23.
//

import Foundation

class MathViewModel : ObservableObject {
    
    @Published private(set) var listofMathQuestions = [QuestionModel<MathQuestionModel>]()
    
    func fetchQuestions() {
        self.listofMathQuestions = [
            QuestionModel(questionContent: MathQuestionModel(prompt: "1+1 = ")),
            QuestionModel(questionContent: MathQuestionModel(prompt: "2*5 = ")),
            QuestionModel(questionContent: MathQuestionModel(prompt: "10/5 = ")),
            QuestionModel(questionContent: MathQuestionModel(prompt: "40/2 = ")),
            QuestionModel(questionContent: MathQuestionModel(prompt: "50*5 = ")),
            QuestionModel(questionContent: MathQuestionModel(prompt: "100-37 = ")),
            QuestionModel(questionContent: MathQuestionModel(prompt: "1000/500 = ")),
            QuestionModel(questionContent: MathQuestionModel(prompt: "10+2-4 = ")),
            QuestionModel(questionContent: MathQuestionModel(prompt: "0/1234 = ")),
            QuestionModel(questionContent: MathQuestionModel(prompt: "52-17 = "))
        ]
    }
}

