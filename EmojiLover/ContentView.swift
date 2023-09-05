//
//  ContentView.swift
//  EmojiLover
//
//  Created by Cluzel Killian on 05/09/2023.
//

import SwiftUI

enum Emoji: String, CaseIterable {
    case 😍, 😡, 🤒, 😂
}

struct ContentView: View {
    @State var selection: Emoji = .😍

    var body: some View {
        NavigationView {

        VStack {
            Text(selection.rawValue)
                .font(.system(size: 200))
            
            Picker("Choisi ton humeur", selection: $selection) {
                ForEach(Emoji.allCases, id: \.self) { emoji in
                    Text(emoji.rawValue)
                }
            }
            .pickerStyle(.segmented)
        }.navigationTitle("Choisi ton humeur")
        .padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

