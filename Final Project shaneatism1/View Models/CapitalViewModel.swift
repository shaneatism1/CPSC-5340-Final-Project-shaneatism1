//
//  CapitalViewModel.swift
//  Assignment3
//
//  Created by user231162 on 4/18/23.
//

import Foundation

class CapitalViewModel : ObservableObject {
    
    @Published private(set) var listofCapitalQuestions = [QuestionModel<CapitalQuestionModel>]()
    
    func fetchQuestions() {
        self.listofCapitalQuestions = [
            QuestionModel(questionContent: CapitalQuestionModel(prompt: "Capital of China 🇨🇳")),
            QuestionModel(questionContent: CapitalQuestionModel(prompt: "Capital of Canada 🇨🇦")),
            QuestionModel(questionContent: CapitalQuestionModel(prompt: "Capital of Argentina 🇦🇷")),
            QuestionModel(questionContent: CapitalQuestionModel(prompt: "Capital of Egypt 🇪🇬")),
            QuestionModel(questionContent: CapitalQuestionModel(prompt: "Capital of Germany 🇩🇪")),
            QuestionModel(questionContent: CapitalQuestionModel(prompt: "Capital of Britain 🇬🇧")),
            QuestionModel(questionContent: CapitalQuestionModel(prompt: "Capital of Australia 🇦🇺")),
            QuestionModel(questionContent: CapitalQuestionModel(prompt: "Capital of Japan 🇯🇵")),
            QuestionModel(questionContent: CapitalQuestionModel(prompt: "Capital of Uganda 🇺🇬")),
            QuestionModel(questionContent: CapitalQuestionModel(prompt: "Capital of India 🇮🇳"))
        ]
    }
}
