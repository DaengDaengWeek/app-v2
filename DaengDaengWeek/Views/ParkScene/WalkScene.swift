//
//  WalkScene.swift
//  DaengDaengWeek
//
//  Created by Jini on 1/12/25.
//

import SwiftUI
import SpriteKit

class WalkScene: SKScene {
    var background1: SKSpriteNode!
    var background2: SKSpriteNode!
    
    var dog: SKSpriteNode!
    
    let backgroundSpeed: CGFloat = 2.0
    
    override func didMove(to view: SKView) {
        setupScene()
        startDogAnimation()
    }
    
    private func setupScene() {
        background1 = SKSpriteNode(imageNamed: "walk_bg")
        background1.anchorPoint = CGPoint(x: 0, y: 0.5)
        background1.position = CGPoint(x: 0, y: size.height / 2)
        background1.size = size //배경 화면에 꽉 차게 조정

        background2 = SKSpriteNode(imageNamed: "walk_bg")
        background2.anchorPoint = CGPoint(x: 0, y: 0.5)
        background2.position = CGPoint(x: background1.size.width, y: size.height / 2)
        background2.size = size //배경 화면에 꽉 차게 조정
        
        dog = SKSpriteNode(imageNamed: "WalkDog1")
        dog.size = CGSize(width: 494, height: 247)
        dog.position = CGPoint(x: size.width * 0.2, y: size.height * 0.45)

        addChild(background1)
        addChild(background2)
        addChild(dog)
    }
    
    private func startDogAnimation() {
        var textures: [SKTexture] = []
        
        for i in 1...6 {
            textures.append(SKTexture(imageNamed: "WalkDog\(i)"))
        }
        
        let animationAction = SKAction.animate(with: textures, timePerFrame: 0.18)
        let repeatAction = SKAction.repeatForever(animationAction)
        
        dog.run(repeatAction)
    }
    
    override func update(_ currentTime: TimeInterval) {
        moveBackground()
    }
    
    private func moveBackground() {
        // 배경을 왼쪽으로 이동
        background1.position.x -= backgroundSpeed
        background2.position.x -= backgroundSpeed

        let backgroundWidth = background1.size.width

        if background1.position.x <= -backgroundWidth {
            background1.position.x = background2.position.x + backgroundWidth
        }

        if background2.position.x <= -backgroundWidth {
            background2.position.x = background1.position.x + backgroundWidth
        }
    }
}
