//
//  ListRowView.swift
//  TodoList
//
//  Created by Youness Hassoune on 12/11/2021.
//

import SwiftUI


struct ListRowView: View {
    let title:String
    
    var body: some View {
        HStack{
            Image("checkmark").resizable().frame(width: 30, height:30)
            
            Text(title).font(.headline)
        }
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(title:"this is a todo task")
    }
}
