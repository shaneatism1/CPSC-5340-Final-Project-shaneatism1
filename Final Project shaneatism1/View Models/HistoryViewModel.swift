//
//  HistoryViewModel.swift
//  Assignment3
//
//  Created by user231162 on 4/9/23.
//

import Foundation


class HistoryViewModel : ObservableObject {
    
    @Published private(set) var listofHistoryQuestions = [QuestionModel<HistoryQuestionModel>]()
    
    func fetchQuestions() {
        self.listofHistoryQuestions = [
            QuestionModel(questionContent: HistoryQuestionModel(prompt: "What year did the US declare independence?")),
            QuestionModel(questionContent: HistoryQuestionModel(prompt: "What year did WW2 begin?")),
            QuestionModel(questionContent: HistoryQuestionModel(prompt: "Lincolns famous speech title?")),
            QuestionModel(questionContent: HistoryQuestionModel(prompt: "Year of the first Crusade?")),
            QuestionModel(questionContent: HistoryQuestionModel(prompt: "Amelia Earhart disappeared in what year?")),
            QuestionModel(questionContent: HistoryQuestionModel(prompt: "turning point battle of Russian-German WW2 front?")),
            QuestionModel(questionContent: HistoryQuestionModel(prompt: "Coca cola once contained this illegal drug")),
            QuestionModel(questionContent: HistoryQuestionModel(prompt: "Napoleon was how tall?")),
            QuestionModel(questionContent: HistoryQuestionModel(prompt: "'this had descended upon Europe' - Churchill")),
            QuestionModel(questionContent: HistoryQuestionModel(prompt: "economic system of the Soviet Union"))
        ]
    }
}
