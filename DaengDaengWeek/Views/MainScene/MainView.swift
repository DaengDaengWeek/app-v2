//
//  MainView.swift
//  DaengDaengWeek
//
//  Created by Jini on 11/25/24.
//

import SwiftUI
import SpriteKit

struct MainView: View {
    var scene: SKScene {
        let scene = MainScene()
        scene.size = UIScreen.main.bounds.size
        scene.scaleMode = .resizeFill
        return scene
    }
    
    var body: some View {
        ZStack {
            SpriteView(scene: scene)
                .ignoresSafeArea()
            
            VStack {
                HUDView(affectionLevel: .constant(0.3), moneyAmount: .constant(75000), backgroundColor: .clear, isHospital: false, showEncyclo: {}, popupProfile: {}, showChart: {})
                Spacer()
                Button("하단 버튼") {
                }
                .buttonStyle(.borderedProminent)
                .padding()
            }
        }
        .statusBar(hidden: true)
    }
}

#Preview {
    MainView()
}
