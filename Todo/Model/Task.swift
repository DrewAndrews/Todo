//
//  Task.swift
//  Todo
//
//  Created by Andrey Rusinovich on 04.08.2021.
//

import Foundation
import SwiftUI

struct Task: Identifiable {
    var id = UUID()
    var title: String
    var description: String
    var color: Color
}
