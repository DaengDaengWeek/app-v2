//
//  StartView.swift
//  DaengDaengWeek
//
//  Created by Jini on 11/25/24.
//

import SwiftUI
import SpriteKit

struct StartView: View {
    var scene: SKScene {
        let scene = StartScene()
        scene.size = UIScreen.main.bounds.size
        scene.scaleMode = .resizeFill
        return scene
    }
    
    var body: some View {
        ZStack {
            
        }
        .statusBar(hidden: true)
    }
}

#Preview {
    StartView()
}
