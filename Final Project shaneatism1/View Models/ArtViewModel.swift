//
//  ArtViewModel.swift
//  Assignment3
//
//  Created by user231162 on 4/12/23.
//

import Foundation

class ArtViewModel : ObservableObject {
            
    @Published var hasError = false
    @Published var error : ArtModelError?
    @Published private(set) var listofArtQuestions = [ArtModel]()
    
    func fetchData(urll: String) async -> String{
        if let url = URL(string: urll) {
            do {
                let (data, _) = try await URLSession.shared.data(from: url)
                let results = try JSONDecoder().decode(ArtModel.self, from: data)
                return results.primaryImageSmall
            } catch {
                self.hasError.toggle()
                self.error = ArtModelError.customError(error: error)
            }
        }
        return ""
    }
    
    func fetchQuestions() {
        Task {
            await fetchQuestionsAsync()
        }
    }
    
    func fetchQuestionsAsync() async {
        self.listofArtQuestions = await [
            ArtModel(objectID: 45734, primaryImageSmall: fetchData( urll: "https://collectionapi.metmuseum.org/public/collection/v1/objects/45734")),
            ArtModel(objectID: 4546, primaryImageSmall: fetchData( urll: "https://collectionapi.metmuseum.org/public/collection/v1/objects/4546")),
            ArtModel(objectID: 7684, primaryImageSmall: fetchData( urll: "https://collectionapi.metmuseum.org/public/collection/v1/objects/7684")),
            ArtModel(objectID: 1123, primaryImageSmall: fetchData( urll: "https://collectionapi.metmuseum.org/public/collection/v1/objects/1123")),
            ArtModel(objectID: 115, primaryImageSmall: fetchData( urll: "https://collectionapi.metmuseum.org/public/collection/v1/objects/115"))
        ]
    }
}

extension ArtViewModel {
    enum ArtModelError : LocalizedError {
        case decodeError
        case customError(error: Error)
        
        var errorDescription: String? {
            switch self {
            case .decodeError:
                return "Decoding Error"
            case .customError(let error):
                return error.localizedDescription
            }
        }
    }
}
