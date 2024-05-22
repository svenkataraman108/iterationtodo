//
//  NewToDoView.swift
//  iterationtodo
//
//  Created by Scholar on 5/22/24.
//

import SwiftUI

struct NewToDoView: View {
    @State private var taskDescription: String = ""
    @State private var isImportant: Bool = false
    
    var body: some View {
        VStack {
            Text("Task title:")
                .font(.title)
                .fontWeight(.bold)
            
            TextField("Enter the task description...", text: $taskDescription)
                .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                .padding()
            
            Toggle(isOn: $isImportant) {
                Text("Is it important?")
            }
            .padding()
            
            Button(action: {
                // Add action for the Save button
                print("Task Saved: \(taskDescription), Important: \(isImportant)")
            }) {
                Text("Save")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
        }
        .padding()
    }
}

struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView()
    }
}

