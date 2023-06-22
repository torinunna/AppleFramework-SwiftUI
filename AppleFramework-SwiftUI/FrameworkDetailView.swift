//
//  FrameworkDetailView.swift
//  AppleFramework-SwiftUI
//
//  Created by YUJIN KWON on 2023/06/21.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    @Environment(\.dismiss) var dismiss
    @StateObject var viewModel: FrameworkDetailViewModel
    
    var body: some View {
        VStack {
            
            Image(viewModel.framework.imageName)
            Text(viewModel.framework.name)
            Text(viewModel.framework.description)
            
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
        let vm = FrameworkDetailViewModel(framework: AppleFramework.list[0])
        FrameworkDetailView(viewModel: vm)
    }
}
