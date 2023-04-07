//
//  Deck.swift
//  Assignment3
//
//  Created by user231162 on 3/22/23.
//

import SwiftUI

struct Deck: View {
    
    @ObservedObject var deckvm = DeckViewModel()
    
    var body: some View {
        NavigationStack {
           
        }
    }
}

struct Deck_Previews: PreviewProvider {
    static var previews: some View {
        Deck()
    }
}
