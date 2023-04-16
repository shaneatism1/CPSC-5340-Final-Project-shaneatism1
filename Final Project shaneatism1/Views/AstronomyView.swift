//
//  AstronomyView.swift
//  Assignment3
//
//  Created by user231162 on 4/16/23.
//

import SwiftUI

struct AstronomyView: View {
    
    @State var input: String = ""
    @State var numRight: Int = 0
    @State var i: Int = 0
    let rightAnswers : [String] = ["Milkyway", "Andromeda", "Supernova", "Blackhole", "Singularity", "Saturn", "Jupiter", "84", "Yes", "Schwarzchild"]
    @ObservedObject var viewModel = AstronomyViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("Enter Answer Here: ")
                    TextField("", text: $input)
                        .keyboardType(.default)
                    Button("submit", action: submit)
                }
                
                Spacer()
                
                List {
                    ForEach(viewModel.listofAstronomyQuestions) { question  in
                        HStack {
                            AstronomyQuestionItem(question: question)
                        }
                    }
                }.listStyle(.grouped)
                
                Spacer()
                
                HStack {
                    Text("You got: " + String(numRight) + "/10")
                }
            }
        }
        .onAppear() {
            viewModel.fetchQuestions()
        }
        .onTapGesture {
            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
        }
    }
    
    func submit() {
        if(input == rightAnswers[self.i]) {
            self.numRight += 1
        }
        self.i += 1
    }
}

struct AstronomyView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
