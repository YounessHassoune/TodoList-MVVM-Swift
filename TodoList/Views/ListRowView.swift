//
//  ListRowView.swift
//  TodoList
//
//  Created by Youness Hassoune on 12/11/2021.
//

import SwiftUI


struct ListRowView: View {
    let task:taskModel
    
    var body: some View {
        HStack{
            Image(task.isCompleted ? "checkmark" :"disturb").resizable().frame(width: 30, height:30)
            
            Text(task.title).font(.headline)
        }
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var task1 = taskModel(title:"task 1",isCompleted:true)
    static var task2 = taskModel(title:"task 2",isCompleted:false)
    
    static var previews: some View {
        Group{
            ListRowView(task:task1)
            ListRowView(task:task2)
        }
        .previewLayout(.sizeThatFits)
      
    }
}
