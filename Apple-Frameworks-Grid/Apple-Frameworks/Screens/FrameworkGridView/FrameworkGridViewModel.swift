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
    
    // Holds the currently selected item
    // NOT published because UI is not directly reacting to this value
    var selectedFramework: Framework? {
        didSet {
            // Whenever a framework is selected,
            // we trigger the presentation state
            // This indirectly causes the sheet to appear
            isShowingDetailView = true
        }
    }
    
    // Published state → SwiftUI observes this
    // This is the ACTUAL driver of the sheet
    @Published var isShowingDetailView = false
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
}
