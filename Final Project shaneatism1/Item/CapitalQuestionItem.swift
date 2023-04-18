//
//  CapitalQuestionItem.swift
//  Assignment3
//
//  Created by user231162 on 4/18/23.
//

import SwiftUI

struct CapitalQuestionItem: View {
    
    var question : QuestionModel<CapitalQuestionModel>
    
    var body: some View {
        Text(question.questionContent.prompt)
    }
}

struct CapitalQuestionItem_Previews: PreviewProvider {
    static var previews: some View {
        CapitalQuestionItem(question: QuestionModel(questionContent: CapitalQuestionModel(prompt: "")))
    }
}
