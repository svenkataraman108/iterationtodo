//
//  ContentView.swift
//  iterationtodo
//
//  Created by Scholar on 5/22/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showNewTask = false

    var body: some View {
        VStack {
            HStack {
                Text("To Do List")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                Spacer() 
                Button(action: {
                    withAnimation {
                        self.showNewTask = true
                    }
                }) {
                    Text("+")
                        .font(.title)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .clipShape(Circle())
                }
            }
            .padding()
        }

        if showNewTask {
            NewToDoView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
