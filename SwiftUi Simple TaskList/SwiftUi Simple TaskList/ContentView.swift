//
//  ContentView.swift
//  SwiftUi Simple TaskList
//
//  Created by Wojciech Konury on 12/06/2020.
//  Copyright © 2020 Wojciech Konury. All rights reserved.
//

import SwiftUI
import Foundation

struct ContentView: View {
    @State var tasks = [Task]()
    @State var taskInsput = ""
    
    @ObservedObject var viewModel: ViewModel
    
    init() {
        self.viewModel = ViewModel()
    }
    
    private func addTask(taskTitle: String) {
        tasks.append(Task(title: taskTitle, isDone: false))
        taskInsput = ""
    }
    
    func deleteItem(at offsets: IndexSet) {
        tasks.remove(atOffsets: offsets)
    }
    
    var body: some View {
        VStack {
            HStack(spacing: 20) {
                Button(action: {self.addTask(taskTitle: self.taskInsput)}) {
                    Text("Add task!")
                }
                
                TextField("What u have to do?", text: $taskInsput)
                
            }
                
            .padding(.horizontal, 15)
            
            List {
                ForEach(tasks) { task in
                    HStack {
                        if task.isDone {
                            Text(task.title)
                                .strikethrough()
                        } else {
                            Text(task.title)
                        }
                        Spacer()
                    }
                    .onTapGesture {
                        print(task.title)
                        if let fooOffset = self.tasks.firstIndex(where: {$0.id == task.id}) {
                            self.tasks[fooOffset].isDone.toggle()
                        }
                    }
                }
                .onDelete(perform: deleteItem)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
