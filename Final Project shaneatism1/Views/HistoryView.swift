//
//  HistoryView.swift
//  Assignment3
//
//  Created by user231162 on 4/9/23.
//

import SwiftUI

struct HistoryView: View {
    
    @State var input: String = ""
    @State var numRight: Int = 0
    @State var i: Int = 0
    let rightAnswers : [String] = ["1776", "1939", "Gettysburg Address", "1096", "1937", "Battle of Stalingrad", "Cocaine", "5 Foot 6 Inches", "Iron Curtain", "Communism"]
    @ObservedObject var viewModel = HistoryViewModel()
    
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
                    ForEach(viewModel.listofHistoryQuestions) { question  in
                        HStack {
                            HistoryQuestionItem(question: question)
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

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
