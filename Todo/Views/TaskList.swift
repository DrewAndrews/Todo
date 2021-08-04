//
//  TaskList.swift
//  Todo
//
//  Created by Andrey Rusinovich on 04.08.2021.
//

import SwiftUI

struct TaskList: View {
    @StateObject var taskManager = TaskManager()
    
    var body: some View {
        List(taskManager.tasks) { task in
            
        }
    }
}

struct TaskList_Previews: PreviewProvider {
    static var previews: some View {
        TaskList()
    }
}
