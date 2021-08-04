//
//  TitleAndDescriptionView.swift
//  Todo
//
//  Created by Andrey Rusinovich on 04.08.2021.
//

import SwiftUI

struct TitleAndDescriptionView: View {
    var task: Task
    
    var body: some View {
        VStack {
            Text(task.title)
                .font(.title)
                .bold()
                .foregroundColor(.white)
            Spacer()
            Text(task.description)
                .font(.headline)
                .foregroundColor(Color.white.opacity(0.8))
            Spacer()
        }
    }
}

struct TitleAndDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        TitleAndDescriptionView(task: TaskManager.example)
    }
}
