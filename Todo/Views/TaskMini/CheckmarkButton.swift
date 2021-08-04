//
//  CheckmarkButton.swift
//  Todo
//
//  Created by Andrey Rusinovich on 04.08.2021.
//

import SwiftUI

struct CheckmarkButton: View {
    var body: some View {
        Button(action: {}) {
            Image(systemName: "checkmark.circle.fill")
                .resizable()
                .foregroundColor(.white)
                .clipShape(Circle())
                .overlay(Circle().stroke())
                .frame(width: 30, height: 30)
        }
        .padding()
    }
}

struct CheckmarkButton_Previews: PreviewProvider {
    static var previews: some View {
        CheckmarkButton()
    }
}
