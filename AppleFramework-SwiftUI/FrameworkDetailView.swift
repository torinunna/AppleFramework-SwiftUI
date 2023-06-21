//
//  FrameworkDetailView.swift
//  AppleFramework-SwiftUI
//
//  Created by YUJIN KWON on 2023/06/21.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    @Binding var framework: AppleFramework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
            Text(framework.name)
            Text(framework.description)
            
            Button {
                print("")
            } label: {
                Text("Button")
            }
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: .constant(AppleFramework.list[0]))
    }
}