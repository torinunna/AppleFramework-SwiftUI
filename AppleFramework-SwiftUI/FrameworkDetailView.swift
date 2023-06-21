//
//  FrameworkDetailView.swift
//  AppleFramework-SwiftUI
//
//  Created by YUJIN KWON on 2023/06/21.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    @Binding var framework: AppleFramework?
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            if let framework = framework {
                Image(framework.imageName)
                Text(framework.name)
                Text(framework.description)
            } else {
                Text("Nothing Selected")
            }
            
            Button {
                dismiss()
            } label: {
                Text("돌아가기")
            }
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: .constant(AppleFramework.list[0]))
    }
}
