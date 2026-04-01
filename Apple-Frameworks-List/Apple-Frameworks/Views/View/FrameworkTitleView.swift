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
        HStack {
            Image(imageName)
                .resizable()
                .frame(width: 70, height: 70)
            Text(name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
            // the smallest this text is gonna go is 60% of the font size
            // used to handle font scaling cause some names are big and we have to readjust in that area
                .minimumScaleFactor(0.6)
                .padding()
        }
    }
}
