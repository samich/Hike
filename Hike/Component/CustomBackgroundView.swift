//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by Sami on 9/3/25.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            // 3. Depth
            Color.customGreenDark
                .cornerRadius(40)
                .offset(y: 12)
            
            // 2. Light
            Color.customGreenLight
                .cornerRadius(40)
                .offset(y: 3)
                .opacity(0.85)
            
            // 1. Surface
            LinearGradient(
                colors: [
                    Color.customGreenLight,
                    Color.customGreenMedium
                ],
                startPoint: .top,
                endPoint: .bottom
            )
            .cornerRadius(40)
        }
    }
}

#Preview {
    CustomBackgroundView()
        .padding()
}
