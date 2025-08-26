//
//  SoundSliderView.swift
//  DaengDaengWeek
//
//  Created by Jini on 1/22/25.
//

import SwiftUI

struct SoundSliderView: View {
    
    @Binding var value: Double
    
    let range: ClosedRange<Double>
    let step: Double
    let accentColor: Color
    let thickness: CGFloat
    
    var body: some View {
        Slider(
            value: $value,
            in: range,
            step: step
        )
        .accentColor(accentColor)
        .frame(width: 170)
        .padding(.leading, 22)
        .background(
            RoundedRectangle(cornerRadius: 4)
                .fill(.clear)
                .frame(height: thickness)
                .padding(.horizontal, 5)
        )
    }
}

#Preview {
    SoundSliderView(
        value: .constant(4),
        range: 0...5,
        step: 1,
        accentColor: .dwMint00,
        thickness: 8
    )
}
