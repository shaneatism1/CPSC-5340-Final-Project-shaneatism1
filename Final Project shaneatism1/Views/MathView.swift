//
//  Deck.swift
//  Assignment3
//
//  Created by user231162 on 3/22/23.
//

import SwiftUI

struct MathView: View {
    
    @State var input: String = ""
    @State var numRight: Int = 0
    @State var i: Int = 0
    let rightAnswers : [String] = ["2", "10", "2", "20", "250", "63", "2", "8", "0", "35"]
    @ObservedObject var viewModel = MathViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("Enter Answer Here: ")
                    TextField("", text: $input)
                        .keyboardType(.numberPad)
                    Button("submit", action: submit)
                }
                
                Spacer()
                
                List {
                    ForEach(viewModel.listofMathQuestions) { question  in
                        HStack {
                            Text("Question:")
                            Spacer()
                            MathQuestionItem(question: question)
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

struct Deck_Previews: PreviewProvider {
    static var previews: some View {
        MathView()
    }
}
