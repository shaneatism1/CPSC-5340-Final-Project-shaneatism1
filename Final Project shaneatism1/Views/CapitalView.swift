//
//  CapitalView.swift
//  Assignment3
//
//  Created by user231162 on 4/18/23.
//

import SwiftUI

struct CapitalView: View {
    
    @State var input: String = ""
    @State var numRight: Int = 0
    @State var i: Int = 0
    let rightAnswers : [String] = ["Beijing", "Ottawa", "Bueno Aires", "Cairo", "Berlin", "London", "Canberra", "Tokyo", "Kampala", "New Delhi"]
    @ObservedObject var viewModel = CapitalViewModel()
    
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
                    ForEach(viewModel.listofCapitalQuestions) { question  in
                        HStack {
                            CapitalQuestionItem(question: question)
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

struct CapitalView_Previews: PreviewProvider {
    static var previews: some View {
        CapitalView()
    }
}
