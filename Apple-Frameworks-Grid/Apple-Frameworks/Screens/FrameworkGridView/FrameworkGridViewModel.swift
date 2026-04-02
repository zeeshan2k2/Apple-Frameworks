//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Zeeshan Waheed on 31/03/2026.
//

import Foundation
import Combine
import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
}
