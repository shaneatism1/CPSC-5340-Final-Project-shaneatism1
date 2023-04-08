//
//  QuestionItem.swift
//  Assignment3
//
//  Created by user231162 on 4/8/23.
//

import SwiftUI

struct MathQuestionItem: View {
    
    var question : QuestionModel<MathQuestionModel>
    
    var body: some View {
        Text(question.questionContent.prompt)
    }
}

struct QuestionItem_Previews: PreviewProvider {
    static var previews: some View {
        MathQuestionItem(question: QuestionModel(questionContent: MathQuestionModel(prompt: "")))
    }
}
