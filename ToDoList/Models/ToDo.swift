//
//  ToDo.swift
//  ToDoList
//
//  Created by Noah McGuire on 3/13/25.
//

import Foundation
import SwiftData

@MainActor
@Model
class ToDo {
    var item: String = ""
    var reminderIsOn = false
    var dueDate = Date.now + 60*60*24
    var notes = ""
    var isCompleted = false
    init(item: String = "", reminderIsOn: Bool = false, dueDate: Date = Date.now + 60*60*24, notes: String = "", isCompleted: Bool = false) {
        self.item = item
        self.reminderIsOn = reminderIsOn
        self.dueDate = dueDate
        self.notes = notes
        self.isCompleted = isCompleted
    }
}

extension ToDo {
    static var preview: ModelContainer {
        let container = try! ModelContainer(for: ToDo.self, configurations: ModelConfiguration(isStoredInMemoryOnly: true))
        container.mainContext.insert(ToDo(item: "Create Swift Data Lessons", reminderIsOn: true, dueDate: Date.now + 60*60*24, notes: "Now with iOS 16 & XCode 18", isCompleted: false))
        container.mainContext.insert(ToDo(item: "Watch XCode Videos", reminderIsOn: true, dueDate: Date.now + 60*60*44, notes: "Now with Before 4:30", isCompleted: false))
        container.mainContext.insert(ToDo(item: "Dinner with Fr Leahy", reminderIsOn: true, dueDate: Date.now + 60*60*72, notes: "Prepare to Sing Fly Me", isCompleted: false))
        return container
    }
}

