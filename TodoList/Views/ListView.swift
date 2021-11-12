//
//  ContentView.swift
//  TodoList
//
//  Created by Youness Hassoune on 12/11/2021.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var listViewModel :ListViewModel
    
    var body: some View {
        List{
            ForEach(listViewModel.tasks){task in
                ListRowView(task: task)
            }
            .onDelete(perform: listViewModel.deleteTask)
            .onMove(perform: listViewModel.moveTask )
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
        .environmentObject(ListViewModel())
    }
}

