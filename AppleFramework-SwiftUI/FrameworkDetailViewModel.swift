//
//  FrameworkDetailViewModel.swift
//  AppleFramework-SwiftUI
//
//  Created by YUJIN KWON on 2023/06/22.
//

import Foundation
import SwiftUI

final class FrameworkDetailViewModel: ObservableObject {
    @Published var framework: AppleFramework
    
    init(framework: AppleFramework) {
        self.framework = framework
    }
}
