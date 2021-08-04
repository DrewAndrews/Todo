//
//  CircleButton.swift
//  Todo
//
//  Created by Andrey Rusinovich on 05.08.2021.
//

import SwiftUI

struct CircleButton: View {
    @Binding var color: Color
    
    var circleColor: Color
    
    var body: some View {
        Button(action: {
            withAnimation {
                self.color = circleColor
            }
        }) {
            Circle()
                .fill(circleColor)
                .overlay(color == circleColor ? Circle().stroke(lineWidth: 2).fill(Color.black) : nil)
                .frame(width: 50, height: 50)
        }
    }
}

struct CircleButton_Previews: PreviewProvider {
    static var previews: some View {
        CircleButton(color: .constant(.blue), circleColor: .green)
    }
}
