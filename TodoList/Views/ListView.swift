//
//  ContentView.swift
//  TodoList
//
//  Created by Youness Hassoune on 12/11/2021.
//

import SwiftUI

struct ListView: View {
    @State var tasks:[taskModel]=[
        taskModel(title:"task 1",isCompleted: true),
        taskModel(title:"task 2",isCompleted: true),
        taskModel(title:"task 3",isCompleted: false)
        
    ]
    
    var body: some View {
        List{
            ForEach(tasks){task in
                ListRowView(task: task)
            
            }
        }.listStyle(PlainListStyle())
        .navigationTitle("Tasks 📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add",destination: addTaskView())
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            
            ListView()

        }
    }
}

