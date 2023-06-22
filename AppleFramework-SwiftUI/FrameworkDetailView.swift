//
//  FrameworkDetailView.swift
//  AppleFramework-SwiftUI
//
//  Created by YUJIN KWON on 2023/06/21.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    @StateObject var viewModel: FrameworkDetailViewModel
    
    var body: some View {
        VStack(spacing: 30) {
            
            Spacer()
            
            Image(viewModel.framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(viewModel.framework.name)
                .font(.system(size: 24, weight: .bold))
            Text(viewModel.framework.description)
                .font(.system(size: 16))
            
            Spacer()
            
            Button {
                print("safari 띄우기")
            } label: {
                Text("Learn More")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.white)
            }
            .frame(maxWidth: .infinity, minHeight: 80)
            .background(.pink)
            .cornerRadius(40)
        }
        .padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 30))
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let vm = FrameworkDetailViewModel(framework: AppleFramework.list[0])
        FrameworkDetailView(viewModel: vm)
    }
}
