//
//  TaskManager.swift
//  Todo
//
//  Created by Andrey Rusinovich on 04.08.2021.
//

import Foundation

final class TaskManager: ObservableObject {
    @Published var tasks: [Task] = []
    
    static var example = Task(title: "Go shopping", description: "Buy milk", color: .green)
    static var examples = [
        Task(title: "Go shopping", description: "Buy milk, vegetables and fruits", color: .green),
        Task(title: "Make homework", description: "English, Math, Programming and Literature:(", color: .green),
        Task(title: "Meet with Jane", description: "Don't forget to buy flowers and sweets", color: .green),
        Task(title: "Prepare to sleep", description: "Clean your teeth, wash your hands and go to sleep", color: .green),
        Task(title: "Play football", description: "Remind to friends for today's game", color: .green),
        Task(title: "Clean my room", description: "Get rid of rubbish, wash floor and wipe the dust", color: .green),
        Task(title: "Relax", description: "Fall on the couch and relax:)", color: .green)
    ]
    
    func addTask(_ task: Task) {
        tasks.append(task)
    }
    
    func removeTask(_ task: Task) {
        let taskIndex = tasks.firstIndex { $0.id == task.id }!
        tasks.remove(at: taskIndex)
    }
}
