//
//  WalkProgressBarView.swift
//  DaengDaengWeek
//
//  Created by Jini on 1/13/25.
//

import SwiftUI

struct WalkProgressBarView: View {
    
    var progress: CGFloat
    var barBackgroundColor: Color
    var barColor: Color
    var barBorderColor: Color
    var barBorderWidth: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                // Background Bar
                RoundedRectangle(cornerRadius: 30)
                    .fill(barBackgroundColor)
                    .frame(height: geometry.size.height)

                // Progress Bar
                RoundedRectangle(cornerRadius: 30)
                    .fill(barColor)
                    .frame(width: geometry.size.width * progress, height: geometry.size.height-2)
                    .overlay(
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(barBorderColor, lineWidth: barBorderWidth)
                    )
            }
        }
        
    }
}

#Preview {
    WalkProgressBarView(progress: 0.3,
                    barBackgroundColor: Color(hex: "#815C56").opacity(0.5),
                    barColor: .dwMint00,
                    barBorderColor: .dwBrown00,
                    barBorderWidth: 2
                    
    ).frame(height: 18)
}
