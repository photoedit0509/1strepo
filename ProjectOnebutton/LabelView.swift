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
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .background(.yellow)
                .font(.system(size: 28, weight: .bold))
                .foregroundColor(.red)
        }
        ZStack {
            Color.blue.ignoresSafeArea()
        }
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, world!")
//                .background(.yellow)
//                .font(.system(size: 28, weight: .bold))
//                .foregroundColor(.red)
//        }
        .padding()
    }
}

#Preview {
    LabelView()
}
