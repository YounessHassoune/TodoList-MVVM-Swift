//
//  ContentView.swift
//  TodoList
//
//  Created by Youness Hassoune on 12/11/2021.
//

import SwiftUI

struct ListView: View {
    @State var tasks:[String]=[
        "task 1",
        "task 2",
        "task 3"
    ]
    
    var body: some View {
        List{
            ForEach(tasks,id:\.self){task in
                ListRowView(title:task)
            }
        }.listStyle(PlainListStyle())
        .navigationTitle("Tasks 📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add",destination: Text("Destination"))
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

