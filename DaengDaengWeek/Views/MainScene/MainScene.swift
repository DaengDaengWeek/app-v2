//
//  MainScene.swift
//  DaengDaengWeek
//
//  Created by Jini on 12/9/24.
//

import SwiftUI
import SpriteKit

class MainScene: SKScene {
    
    var dog: SKSpriteNode!
    
    override func didMove(to view: SKView) {
        setupScene()
        startDogAnimation()
    }
    
    private func setupScene() {
        let background = SKSpriteNode(imageNamed: "home_bg")
        background.position = CGPoint(x: size.width / 2, y: size.height / 2) // 중앙에 배치
        background.size = size
        background.zPosition = -1 // 다른 노드들 뒤에 배치
        addChild(background)
        
        dog = SKSpriteNode(imageNamed: "MainDog2-1")
        dog.size = CGSize(width: 253, height: 230)
        dog.position = CGPoint(x: size.width * 0.48, y: size.height * 0.52)
        addChild(dog)
    }
    
    private func startDogAnimation() {
        var textures: [SKTexture] = []
        
        for i in 1...4 {
            textures.append(SKTexture(imageNamed: "MainDog2-\(i)"))
        }
        
        let animationAction = SKAction.animate(with: textures, timePerFrame: 0.35)
        let repeatAction = SKAction.repeatForever(animationAction)
        
        dog.run(repeatAction)
    }
}

#Preview {
    MainView(onNavigate: {_ in })
}
