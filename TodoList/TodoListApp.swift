//
//  TodoListApp.swift
//  TodoList
//
//  Created by Youness Hassoune on 12/11/2021.
//

import SwiftUI

@main
struct TodoListApp: App {
    @StateObject var listViewModel:ListViewModel = ListViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()

            }
            .environmentObject(listViewModel)
        }
    }
}
