//
//  addTaskView.swift
//  TodoList
//
//  Created by Youness Hassoune on 12/11/2021.
//

import SwiftUI

struct addTaskView: View {
    @State var TaskField:String = ""
    var body: some View {
        ScrollView{
            VStack{
                TextField("Type your Task ...",text:$TaskField)
                    .padding(.horizontal)
                    .frame(height:60)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.958, saturation: 0.0, brightness: 0.912)/*@END_MENU_TOKEN@*/)
                    .cornerRadius(10)
                Button(
                    action:{
                    
                    },label:{
                    Text("SAVE")
                            .frame(height:60)
                            .frame(maxWidth:.infinity)
                            .font(.headline)
                            .foregroundColor(.white)
                            .background(.green)
                            .cornerRadius(10)
                    })
                            
            }
            .padding(12)
           
        }
        .navigationTitle("Add Tasks ✏️")
       
    }
}

struct addTaskView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            addTaskView()
        }
        

    }
}
