//
//  WalkView.swift
//  DaengDaengWeek
//
//  Created by Jini on 11/25/24.
//

import SwiftUI
import SpriteKit

// 산책 화면

struct WalkView: View {
    var onHome: () -> Void
    
    var scene: SKScene {
        let scene = WalkScene()
        scene.size = UIScreen.main.bounds.size
        scene.scaleMode = .resizeFill
        return scene
    }
    
    var body: some View {
        ZStack {
            SpriteView(scene: scene)
                .ignoresSafeArea()
            
            VStack {
                HUDView(affectionLevel: .constant(0.5), moneyAmount: .constant(75000), backgroundColor: .clear, isHospital: false, showEncyclo: {}, popupProfile: {}, showChart: {})
                Spacer()
                VStack(spacing: 11) {
                    Spacer()
                    HStack {
                        Spacer()
                        HomeButton(action: onHome)
                            .padding(.trailing, 16)
                    }
                    WalkProgressView(action: {})
                    
                }
            }
        }
        .statusBar(hidden: true)
    }
}

#Preview {
    WalkView(onHome: {})
}
