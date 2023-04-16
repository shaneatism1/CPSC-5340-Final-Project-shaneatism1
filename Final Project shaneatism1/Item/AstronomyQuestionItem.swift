//
//  AstronomyQuestionItem.swift
//  Assignment3
//
//  Created by user231162 on 4/16/23.
//

import SwiftUI

struct AstronomyQuestionItem: View {
    
    var question : QuestionModel<AstronomyQuestionModel>
    
    var body: some View {
        Text(question.questionContent.prompt)
    }
}

struct AstronomyQuestionItem_Previews: PreviewProvider {
    static var previews: some View {
        AstronomyQuestionItem(question: QuestionModel(questionContent: AstronomyQuestionModel(prompt: "")))
    }
}
