//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Noah McGuire on 3/13/25.
//

import SwiftUI
import SwiftData

@main
struct ToDoListApp: App {
    var body: some Scene {
        WindowGroup {
            ToDoListView()
                .modelContainer(for: ToDo.self)
        }
    }
    init() {
        print(URL.applicationSupportDirectory.path(percentEncoded: false))
    }
}
