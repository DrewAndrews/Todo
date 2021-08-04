//
//  CheckmarkButton.swift
//  Todo
//
//  Created by Andrey Rusinovich on 04.08.2021.
//

import SwiftUI

struct CheckmarkButton: View {
    var task: Task
    
    @State private var isDone = false
    @EnvironmentObject var taskManager: TaskManager
    
    var body: some View {
        Button(action: {
            withAnimation {
                isDone ? nil : taskManager.checkTask(task)
                self.isDone.toggle()
            }
        }) {
            Image(systemName: isDone ? "checkmark.circle.fill" : "checkmark.circle")
                .resizable()
                .foregroundColor(.white)
                .clipShape(Circle())
                .frame(width: 30, height: 30)
        }
        .padding()
    }
}

struct CheckmarkButton_Previews: PreviewProvider {
    static var previews: some View {
        CheckmarkButton(task: TaskManager.example)
    }
}
