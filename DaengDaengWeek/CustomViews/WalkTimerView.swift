//
//  WalkTimerView.swift
//  DaengDaengWeek
//
//  Created by Jini on 2/5/25.
//

import SwiftUI
import Combine

struct WalkTimerView: View {
    
    @ObservedObject var walkTimer = WalkTimer()
    
    var body: some View {
        HStack(spacing: 2) {
            Text("\(String(format: "%02d", walkTimer.minute))")
                .font(.dw(.bold, size: 32))
                .foregroundColor(.dwBrown00)
                .frame(width: 55, alignment: .center)
                .padding(.leading, 10)
            
            Text(":")
                .font(.dw(.bold, size: 32))
                .foregroundColor(.dwBrown00)
                .frame(width: 8, alignment: .center)
            
            Text("\(String(format: "%02d", walkTimer.second))")
                .font(.dw(.bold, size: 32))
                .foregroundColor(.dwBrown00)
                .frame(width: 55, alignment: .center)
                .padding(.trailing, 10)
            
//            Text("\(String(format: "%02d", walkTimer.minute))분")
//                .font(.dw(.bold, size: 32))
//                .foregroundColor(.dwBrown00)
//                .frame(width: 75, alignment: .center)
//                .padding(.leading, 0)
//            
//            Text("\(String(format: "%02d", walkTimer.second))초")
//                .font(.dw(.bold, size: 32))
//                .foregroundColor(.dwBrown00)
//                .frame(width: 75, alignment: .center)
//                .padding(.trailing, 12)
        }
    }
    
    
}

#Preview {
    WalkView(onHome: {})
}

class WalkTimer: ObservableObject {
    
    @Published var second: Int = 0
    @Published var minute: Int = 0
    
    init() {
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            self.second += 1
            
            if self.second == 60 {
                self.second = 0
                self.minute += 1
            }
        }
    }
    
    
}
