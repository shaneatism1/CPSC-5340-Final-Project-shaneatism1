//
//  HistoryQuestionItem.swift
//  Assignment3
//
//  Created by user231162 on 4/9/23.
//

import SwiftUI

struct HistoryQuestionItem: View {
    var question : QuestionModel<HistoryQuestionModel>
    
    var body: some View {
        Text(question.questionContent.prompt)
    }
}

struct HistoryQuestionItem_Previews: PreviewProvider {
    static var previews: some View {
        HistoryQuestionItem(question: QuestionModel(questionContent: HistoryQuestionModel(prompt: "")))
    }
}
