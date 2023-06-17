//
//  FrameworkListView.swift
//  AppleFramework-SwiftUI
//
//  Created by YUJIN KWON on 2023/06/17.
//

import SwiftUI

struct FrameworkListView: View {
    
    @State var list: [AppleFramework] = AppleFramework.list
    
    let layout: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: layout) {
                ForEach(list) { item in
                    FrameworkCell(framework: item)
                }
            }
            .padding([.top, .leading, .trailing], 16.0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkListView()
    }
}
