//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Zeeshan Waheed on 31/03/2026.
//

import SwiftUI

struct AFButton: View {
    
    var title: String
    
    var body: some View {
        Text("Learn More")
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .padding(.vertical, 16)
            .background(Color.blue)
            .cornerRadius(14)
    }
}

#Preview {
    AFButton(title: "Test Title")
}
