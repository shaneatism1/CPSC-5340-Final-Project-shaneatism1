//
//  CardModel.swift
//  Assignment3
//
//  Created by user231162 on 3/22/23.
//

import Foundation
        
struct QuestionModel<SomeType> : Identifiable {
    let id = UUID()
    let questionContent : SomeType
}

struct MathQuestionModel: Hashable {
    let prompt : String
}

struct HistoryQuestionModel: Hashable {
    let prompt : String
}

struct AstronomyQuestionModel: Hashable {
    let prompt : String
}
