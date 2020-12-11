//
//  ContentView.swift
//  swift_ios_foreach
//
//  Created by yuchengtseng on 2020/12/11.
//

import SwiftUI


struct ContentView: View {
    let students = ["Harry","Herminone","Ron"]
    @State private var selectedStudent = 0
   
    var body: some View {
        VStack {
            
            Picker("Select your Student",selection: $selectedStudent){
                ForEach(0..<students.count) {
                    Text(self.students[$0])
                }
            }
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
