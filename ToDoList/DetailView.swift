//
//  DetailView.swift
//  ToDoList
//
//  Created by Noah McGuire on 3/13/25.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            
            Text("You are a swifty legend!")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            Button("Get back") {
                dismiss()
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    DetailView()
}
