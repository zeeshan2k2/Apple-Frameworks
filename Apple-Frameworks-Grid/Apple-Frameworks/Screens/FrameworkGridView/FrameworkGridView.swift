//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Zeeshan Waheed on 28/03/2026.
//

import SwiftUI

struct FrameworkGridView: View {
    
    // Source of truth lives here
    // This object owns the state that controls sheet presentation
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(.systemGroupedBackground)
                    .ignoresSafeArea()
                
                ScrollView {
                    LazyVGrid(columns: viewModel.columns, spacing: 16) {
                        ForEach(MockData.frameworks) { framework in
                            FrameworkTitleView(
                                name: framework.name,
                                imageName: framework.imageName
                            )
                            .background(Color(.secondarySystemBackground))
                            .cornerRadius(16)
                            .onTapGesture {
                                // Setting selectedFramework triggers didSet in ViewModel
                                // which sets isShowingDetailView = true
                                // This indirectly controls sheet presentation
                                viewModel.selectedFramework = framework
                            }
                        }
                    }
                    .padding()
                }
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack(spacing: 6) {
                        Image(systemName: "apple.logo")
                        Text("Frameworks")
                            .fontWeight(.semibold)
                    }
                }
            }
            
            // SwiftUI observes this binding
            // When isShowingDetailView becomes true → sheet appears
            // When it becomes false → sheet dismisses
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FrameworkDetailView_(
                    // Data passed down (read-only)
                    framework: viewModel.selectedFramework ?? MockData.sampleFramework,
                    
                    // Binding passed down (read + write access)
                    // Child can mutate this to dismiss the sheet
                    isShowingDetailView: $viewModel.isShowingDetailView
                )
            }
        }
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}
