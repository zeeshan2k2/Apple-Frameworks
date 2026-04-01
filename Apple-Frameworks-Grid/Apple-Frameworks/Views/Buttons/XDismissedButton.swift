//
//  XDismissedButton.swift
//  Apple-Frameworks
//
//  Created by Zeeshan Waheed on 01/04/2026.
//

import Foundation
import SwiftUI

struct XDismissedButton: View {
    
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        HStack {
            
            Spacer()
            
            Button() {
                isShowingDetailView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        }
        .padding()
    }
}

struct XDisplayedButton_Previews: PreviewProvider {
    static var previews: some View {
        XDismissedButton(isShowingDetailView: .constant(false))
    }
}
