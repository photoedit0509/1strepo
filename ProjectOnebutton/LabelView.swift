//
//  LabelView.swift
//  ProjectOnebutton
//
//  Created by Arjun_Aarna on 6/17/26.
//

//
//  ContentView.swift
//  Label_SwiftUI
//
//  Created by Arjun_Aarna on 6/17/26.
//

import SwiftUI

struct LabelView: View {
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
                    .background(.yellow)
                    .font(.system(size: 28, weight: .bold))
                    .foregroundColor(.red)
            }
            .padding()
        }
        .onAppear {
 //           dataTypes()
        }
    }
    
    
//    func dataTypes() {
//        print("test")
//        
//        let fruits: [String] = ["Apple", "Banana", "Orange"]
//        let numbers = [1, 2, 3, 4]
//        
//        var names: [String] = ["Vineela", "Arjun"]
//        
//        print(names)
//        
//        names.append("Thiru")
//        names.append("Aarna")
//        
//        print(names)
//
//
//        
//        print(fruits.count)
//        print(fruits.isEmpty)
//        print(fruits[0])
//        print(fruits[2])


        

        
    }

#Preview {
    LabelView()
}
