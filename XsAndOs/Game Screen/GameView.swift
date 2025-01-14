//
//  GameView.swift
//  XsAndOs
//
//  Created by samil on 28.08.2023.
//

import SwiftUI

struct GameView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button("конец игры") {
                    dismiss()
                }
                .buttonStyle(.bordered)
            }
        }
        .navigationTitle("крестики и нолиики")
        .inNavigationStack()
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
