//
//  FrameworkListViewModel.swift
//  AppleFramework-SwiftUI
//
//  Created by YUJIN KWON on 2023/06/21.
//

import Foundation

final class FrameworkListViewModel: ObservableObject {
    @Published var models: [AppleFramework] = AppleFramework.list
    @Published var isPresented: Bool = false
}
