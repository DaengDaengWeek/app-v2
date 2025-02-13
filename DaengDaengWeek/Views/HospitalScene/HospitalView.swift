//
//  HospitalView.swift
//  DaengDaengWeek
//
//  Created by Jini on 11/25/24.
//

import SwiftUI
import SpriteKit

struct HospitalView: View {
    var onHome: () -> Void
    
    var scene: SKScene {
        let scene = HospitalScene()
        scene.size = UIScreen.main.bounds.size
        scene.scaleMode = .resizeFill
        return scene
    }
    
    var body: some View {
        ZStack {
            SpriteView(scene: scene)
                .ignoresSafeArea()
            
            VStack {
                HUDView(affectionLevel: .constant(0.5), moneyAmount: .constant(75000), backgroundColor: .clear, isHospital: true, showEncyclo: {}, popupProfile: {}, showChart: {})
                Spacer()
                HStack(spacing: 11) {
                    BigActionButton(label: "진료받기", icon: "treatmentIcon", action: {})
                    BigActionButton(label: "건강검진", icon: "checkupIcon", action: {})
                    BigActionButton(label: "예방접종", icon: "injectionIcon", action: {})
                    BigActionButton(label: "미용하기", icon: "beautyIcon", action: {})
                }
            }
        }
        .statusBar(hidden: true)
    }
}

#Preview {
    HospitalView(onHome: {})
}
