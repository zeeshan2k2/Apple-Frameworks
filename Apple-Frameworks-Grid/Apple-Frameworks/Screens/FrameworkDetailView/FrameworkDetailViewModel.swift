//
//  FrameworkDetailViewModel.swift
//  Apple-Frameworks
//
//  Created by Zeeshan Waheed on 26/04/2026.
//

import SwiftUI
internal import Combine

final class FrameworkDetailViewModel: ObservableObject {
    
    var framework: Framework
    @Published var isShowingSafariView: Bool = false
    
    init(framework: Framework) {
        self.framework = framework
    }
}
