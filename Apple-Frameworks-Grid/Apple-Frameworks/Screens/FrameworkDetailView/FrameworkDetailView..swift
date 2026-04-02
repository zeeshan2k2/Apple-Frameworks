//
//  FrameworkDetailView..swift
//  Apple-Frameworks
//
//  Created by Zeeshan Waheed on 31/03/2026.
//

import SwiftUI
import SafariServices
import WebKit

struct FrameworkDetailView_: View {
    
    var framework: Framework
    @State private var isShowingSafariView: Bool = false
    
    var body: some View {
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                
                // MARK: - Hero Section
                VStack(spacing: 16) {
                    Image(framework.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 90, height: 90)
                        .padding(20)
                        .background(Color(.secondarySystemBackground))
                        .cornerRadius(24)
                        .shadow(color: .black.opacity(0.1), radius: 8, x: 0, y: 4)
                    
                    Text(framework.name)
                        .font(.title2)
                        .fontWeight(.bold)
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 32)
                
                // MARK: - Description Card
                VStack(alignment: .leading, spacing: 12) {
                    Label("Overview", systemImage: "doc.text")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(.secondary)
                    
                    Text(framework.description)
                        .font(.body)
                        .foregroundColor(.primary)
                        .lineSpacing(4)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .background(Color(.secondarySystemBackground))
                .cornerRadius(16)
                .padding(.horizontal)
                
                Spacer()
                
                // MARK: - Learn More Button
                Button {
                    // action
                    isShowingSafariView = true
                } label: {
                    // UI
                    AFButton(title: "Learn More")
                }
                .padding(.horizontal)
                .padding(.bottom, 24)
            }
        }
        .sheet(isPresented: $isShowingSafariView, content: {
            // Natvie Swift UI method
            WebView(url: URL(string: framework.urlString)!)
            
            // By Using UIKit
            // SafariView(url: URL(string: framework.urlString) ?? URL(string: "https://apple.com")!)
        })
    }
}

#Preview {
    FrameworkDetailView_(framework: MockData.sampleFramework)
        .preferredColorScheme(.dark)
}
