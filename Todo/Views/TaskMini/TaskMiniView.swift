//
//  TaskDetail.swift
//  Todo
//
//  Created by Andrey Rusinovich on 04.08.2021.
//

import SwiftUI

struct TaskMiniView: View {
    var task: Task
    
    var body: some View {
        HStack {
            TitleAndDescriptionView(task: task)
            Spacer()
            CheckmarkButton(task: task)
        }
        .frame(width: 325, height: 70, alignment: .leading)
        .padding()
        .background(RoundedRectangle(cornerRadius: 22).fill(task.color))
    }
}

struct TaskDetail_Previews: PreviewProvider {
    static var previews: some View {
        TaskMiniView(task: TaskManager.example)
    }
}
