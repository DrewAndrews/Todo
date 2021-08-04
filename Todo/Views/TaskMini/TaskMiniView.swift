//
//  TaskDetail.swift
//  Todo
//
//  Created by Andrey Rusinovich on 04.08.2021.
//

import SwiftUI

struct TaskDetail: View {
    var task: Task
    
    var body: some View {
        HStack {
            TitleAndDescriptionView(task: task)
            Spacer()
            CheckmarkButton()
        }
        .frame(width: 280, height: 100, alignment: .leading)
        .padding()
        .background(RoundedRectangle(cornerRadius: 22).fill(task.color))
    }
}

struct TaskDetail_Previews: PreviewProvider {
    static var previews: some View {
        TaskDetail(task: TaskManager.example)
    }
}
