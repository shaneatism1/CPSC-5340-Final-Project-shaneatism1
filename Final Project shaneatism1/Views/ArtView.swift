//
//  ArtView.swift
//  Assignment3
//
//  Created by user231162 on 4/12/23.
//

import SwiftUI

struct ArtView: View {
    
    @State var input: String = ""
    @State var numRight: Int = 0
    @State var i: Int = 0
    let rightAnswers : [String] = ["quail and millet", "figure of john wilkes", "soup plate", "candelabrum", "andiron"]
    @ObservedObject var viewModel = ArtViewModel()
    
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
                    ForEach(viewModel.listofArtQuestions, id: \.self) { piece  in
                        VStack {
                            let url = URL(string: piece.primaryImageSmall)
                            let data = try? Data(contentsOf: url!)
                            if let imageData = data {
                                let image = UIImage(data: imageData)
                                Image(uiImage: image!)
                            }
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

struct ArtView_Previews: PreviewProvider {
    static var previews: some View {
        ArtView()
    }
}
