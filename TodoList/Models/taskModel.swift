//
//  taskModel.swift
//  TodoList
//
//  Created by Youness Hassoune on 12/11/2021.
//

import Foundation

struct taskModel: Identifiable {
    let id:String = UUID().uuidString
    let title:String
    let isCompleted:Bool
    
}
