//
//  ContentView.swift
//  ToDoList
//
//  Created by Noah McGuire on 3/13/25.
//

import SwiftUI

struct ToDoListView: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink {
                    DetailView()
                } label: {
                    Image(systemName: "eye")
                    Text("Show the new view")
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()
        }
    }
}

#Preview {
    ToDoListView()
}
