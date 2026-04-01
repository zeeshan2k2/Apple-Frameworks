//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Zeeshan Waheed on 28/03/2026.
//

import SwiftUI

struct FrameworkListView: View {
    
    // Source of truth lives here
    // This object owns the state that controls sheet presentation
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(.systemGroupedBackground)
                    .ignoresSafeArea()
                
                ScrollView {
                    LazyVStack(spacing: 12) {
                        ForEach(MockData.frameworks) { framework in
                            NavigationLink(
                                destination:
                                    FrameworkDetailView_(
                                        framework: framework,
                                        isShowingDetailView: $viewModel.isShowingDetailView
                                    )
                            ) {
                                FrameworkRowCard(framework: framework)
                            }
                            .buttonStyle(.plain)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top, 8)
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
        }
    }
}

// MARK: - Row Card
struct FrameworkRowCard: View {
    let framework: Framework
    
    var body: some View {
        HStack(spacing: 16) {
            Image(framework.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48)
                .padding(10)
                .background(Color(.secondarySystemBackground))
                .cornerRadius(12)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(framework.name)
                    .font(.headline)
                    .foregroundColor(.primary)
                
                Text(framework.description)
                    .font(.caption)
                    .foregroundColor(.secondary)
                    .lineLimit(2)
            }
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .font(.caption)
                .foregroundColor(.secondary)
        }
        .padding()
        .background(Color(.secondarySystemBackground))
        .cornerRadius(16)
    }
}

#Preview {
    FrameworkListView()
        .preferredColorScheme(.dark)
}
