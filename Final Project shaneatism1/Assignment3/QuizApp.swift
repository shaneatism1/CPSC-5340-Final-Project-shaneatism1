//
// Assignment3App.swift : Assignment3
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.


import SwiftUI

@main
struct QuizApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                List {
                    NavigationLink(destination: MathView()) {Text("Math Quiz")}
                    NavigationLink(destination: HistoryView()) {Text("History Quiz")}
                    NavigationLink(destination: ArtView()) {Text("Art Quiz")}
                    NavigationLink(destination: AstronomyView()) {Text("Astronomy Quiz")}
                    NavigationLink(destination: CapitalView()) {Text("Country Capital Quiz")}
                }
                .listStyle(.grouped)
                .navigationTitle("Quiz App")
            }
        }
    }
}
