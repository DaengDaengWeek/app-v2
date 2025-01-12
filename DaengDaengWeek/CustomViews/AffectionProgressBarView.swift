//
//  AffectionProgressBarView.swift
//  DaengDaengWeek
//
//  Created by Jini on 1/13/25.
//

import SwiftUI

struct AffectionProgressBarView: View {
    
    var progress: CGFloat
    var barBackgroundColor: Color
    var barColor: Color
    var barBorderColor: Color
    var barBorderWidth: CGFloat
    var borderColor: Color
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                // Background Bar
                RoundedRectangle(cornerRadius: 6)
                    .fill(barBackgroundColor)
                    .frame(height: geometry.size.height-2)
                    .overlay(
                        RoundedRectangle(cornerRadius: 6)
                            .stroke(borderColor, lineWidth: 2)
                    )


                // Progress Bar
                RoundedRectangle(cornerRadius: 6)
                    .fill(barColor)
                    .frame(width: geometry.size.width * progress, height: geometry.size.height-2)
                    .overlay(
                        RoundedRectangle(cornerRadius: 6)
                            .stroke(barBorderColor, lineWidth: barBorderWidth)
                    )
            }
        }
        
    }
}

#Preview {
    AffectionProgressBarView(progress: 0.3,
                    barBackgroundColor: Color(hex: "#9A9191"),
                    barColor: .dwPink,
                    barBorderColor: .dwBrown00,
                    barBorderWidth: 2,
                    borderColor: .dwBrown00
                    
    ).frame(height: 18)
}

