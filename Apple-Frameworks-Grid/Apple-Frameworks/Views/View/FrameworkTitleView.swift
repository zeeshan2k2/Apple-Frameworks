//
//  FrameworkTitleView.swift
//  Apple-Frameworks
//
//  Created by Zeeshan Waheed on 01/04/2026.
//

import Foundation
import SwiftUI

struct FrameworkTitleView: View {
    let name: String
    let imageName: String
    
    var body: some View {
        VStack(spacing: 8) {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60)
            Text(name)
                .font(.caption)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .foregroundColor(Color(.white))
                // the smallest this text is gonna go is 60% of the font size
                // used to handle font scaling cause some names are big and we have to readjust in that area
                .minimumScaleFactor(0.6)
                .lineLimit(2)
        }
        .frame(maxWidth: .infinity, minHeight: 110)
        .padding(.vertical, 12)
        .padding(.horizontal, 8)
    }
}
