//
//  AstronomyViewModel.swift
//  Assignment3
//
//  Created by user231162 on 4/16/23.
//

import Foundation

class AstronomyViewModel : ObservableObject {
    
    @Published private(set) var listofAstronomyQuestions = [QuestionModel<AstronomyQuestionModel>]()
    
    func fetchQuestions() {
        self.listofAstronomyQuestions = [
            QuestionModel(questionContent: AstronomyQuestionModel(prompt: "We are in this galaxy")),
            QuestionModel(questionContent: AstronomyQuestionModel(prompt: "this galaxy neighbors us")),
            QuestionModel(questionContent: AstronomyQuestionModel(prompt: "____ is when a star explodes")),
            QuestionModel(questionContent: AstronomyQuestionModel(prompt: "the center of a galaxy has this")),
            QuestionModel(questionContent: AstronomyQuestionModel(prompt: "the middle of a black hole is known as ____")),
            QuestionModel(questionContent: AstronomyQuestionModel(prompt: "This planet has rings around it")),
            QuestionModel(questionContent: AstronomyQuestionModel(prompt: "This planet has 4 Galilean moons")),
            QuestionModel(questionContent: AstronomyQuestionModel(prompt: "a 220lb person weighs ___lbs on the moon")),
            QuestionModel(questionContent: AstronomyQuestionModel(prompt: "Is space completely silent?")),
            QuestionModel(questionContent: AstronomyQuestionModel(prompt: "___radius == point something becomes black hole"))
        ]
    }
}
