//
//  ViewModifiers.swift
//  XsAndOs
//
//  Created by samil on 28.08.2023.
//

import SwiftUI

struct NavStruckContainer: ViewModifier {
    func body(content: Content) -> some View {
        if #available( iOS 16, *) {
            NavigationStack {
                content
            }
        } else {
            NavigationView {
                content
            }
            .navigationViewStyle(.stack)
        }
    }
}


extension View {
    public func inNavigationStack() -> some View {
        return self.modifier(NavStruckContainer())
    }
}
