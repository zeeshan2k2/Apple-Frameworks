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
        NavigationStack {
            ZStack {
                Color(.systemGroupedBackground)
                    .ignoresSafeArea()
                
                ScrollView {
                    LazyVGrid(columns: viewModel.columns, spacing: 16) {
                        ForEach(MockData.frameworks) { framework in
                            NavigationLink(value: framework) {
                                FrameworkTitleView(
                                    name: framework.name,
                                    imageName: framework.imageName
                                )
                                .background(Color(.secondarySystemBackground))
                                .cornerRadius(16)
                            }
                        }
                    }
                    .padding()
                }
            }
            .navigationDestination(for: Framework.self) { framework in
                FrameworkDetailView_(viewModel: FrameworkDetailViewModel(framework: framework))
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
        }
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}
