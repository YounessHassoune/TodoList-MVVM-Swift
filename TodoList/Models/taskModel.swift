//
//  taskModel.swift
//  TodoList
//
//  Created by Youness Hassoune on 12/11/2021.
//

import Foundation

struct taskModel: Identifiable ,Codable{
    let id:String = UUID().uuidString
    let title:String
    let isCompleted:Bool
    
    // update the task {setter java be like  }
    func updateTaskCompletion()-> taskModel{
        return taskModel(title:title,isCompleted: !isCompleted)
    }
}

