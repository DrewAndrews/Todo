//
//  ContentView.swift
//  Todo
//
//  Created by Andrey Rusinovich on 04.08.2021.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var taskManager: TaskManager
    
    var body: some View {
        TodoList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
