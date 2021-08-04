//
//  TodoList.swift
//  Todo
//
//  Created by Andrey Rusinovich on 04.08.2021.
//

import SwiftUI

struct TodoList: View {
    @EnvironmentObject var taskManager: TaskManager
    
    @State private var showAddTask = false
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                ForEach(taskManager.tasks) { task in
                    TaskMiniView(task: task)
                        .onLongPressGesture {
                            taskManager.removeTask(task)
                        }
                }
            }
            .navigationTitle("Todo")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: { self.showAddTask.toggle() }) {
                        Image(systemName: "plus.circle")
                            .resizable()
                            .frame(width: 10, height: 10)
                    }
                }
            }
            .sheet(isPresented: $showAddTask) {
                CreateTaskView(showAddTask: $showAddTask)
            }
        }
    }
}

struct TodoList_Previews: PreviewProvider {
    static var previews: some View {
        TodoList()
    }
}
