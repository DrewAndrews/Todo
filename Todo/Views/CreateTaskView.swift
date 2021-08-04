//
//  CreateTaskView.swift
//  Todo
//
//  Created by Andrey Rusinovich on 04.08.2021.
//

import SwiftUI

struct CreateTaskView: View {
    @State private var title: String = "Title"
    @State private var description: String = "Description"
    @State private var color: Color = Color.blue
    
    @Binding var showAddTask: Bool
    
    @EnvironmentObject var taskManager: TaskManager
    
    var colors: [Color] = [.blue, .green, .red, .purple]
    
    var body: some View {
        NavigationView {
            VStack(spacing: 15) {
                TextField("Title", text: $title)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Description", text: $description)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.bottom)
                HStack {
                    ForEach(colors, id: \.self) { circleColor in
                        CircleButton(color: $color, circleColor: circleColor)
                    }
                }
            }
            .padding()
            .navigationTitle("Create task")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                        self.showAddTask.toggle()
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Add") {
                        taskManager.addTask(title: title, description: description, color: color)
                        self.showAddTask.toggle()
                    }
                }
            }
        }
    }
}

struct CreateTaskView_Previews: PreviewProvider {
    static var previews: some View {
        CreateTaskView(showAddTask: .constant(false))
    }
}
