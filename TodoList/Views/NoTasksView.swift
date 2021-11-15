//
//  NoTasksView.swift
//  TodoList
//
//  Created by Youness Hassoune on 15/11/2021.
//

import SwiftUI

struct NoTasksView: View {
    @State var animate:Bool = false
    var body: some View {
        ScrollView{
            VStack(spacing: 10){
                Text("There are no tasks!")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Click the add button to create new task to do and make your self a productive person!")
                    .padding(.bottom,20)
                NavigationLink (
                destination:addTaskView(),
                label: {
                    Text("add new Task 😍")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height:60)
                        .frame(maxWidth:.infinity)
                        .background(animate ? .green: Color.accentColor)
                        .cornerRadius(10)
                })
                    .padding(.horizontal,animate ? 30:50)
                    .shadow(
                        color: animate ? .green.opacity(0.7): Color.accentColor.opacity(0.7),
                        radius: animate ? 30 :10,
                            x: 0,
                        y: animate ? 50:30)
                    .scaleEffect(animate ? 1.1 : 1.0)
                    .offset(y:animate ? -7 :0)
            }
            .multilineTextAlignment(.center)
            .padding(30)
            .onAppear(perform:addAnimation)
            

            
        }
        .frame(maxWidth:.infinity,maxHeight: .infinity)
    }
    func addAnimation(){
        guard !animate else {return}
        DispatchQueue.main.asyncAfter(deadline: .now()+1.5) {
            withAnimation (
                Animation
                    .easeInOut(duration: 2.0)
                    .repeatForever()
                
            ){
                animate.toggle()
            }
        }
    }
    
}

struct NoTasksView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            NoTasksView()
                .navigationTitle("Title")
        }
     
    }
}
