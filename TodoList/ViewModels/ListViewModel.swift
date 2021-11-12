//
//  ListViewModel.swift
//  TodoList
//
//  Created by Youness Hassoune on 12/11/2021.
//

import Foundation

class ListViewModel: ObservableObject {
    @Published var tasks:[taskModel] = []
    
    init(){
        getTasks()
    }
    
    func getTasks(){
        let newTasks = [
            taskModel(title:"task 1",isCompleted: true),
            taskModel(title:"task 2",isCompleted: true),
            taskModel(title:"task 3",isCompleted: false)
        ]
        tasks.append(contentsOf: newTasks)
    }
    //delete the task from the list
    func deleteTask(indexSet: IndexSet){
        tasks.remove(atOffsets: indexSet)
    }
    //move the task in the list
    func moveTask(from: IndexSet,to: Int){
        tasks.move(fromOffsets: from, toOffset: to)
    }
    
}
