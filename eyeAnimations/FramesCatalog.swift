//
//  FramesCatalog.swift
//  cryingApp
//
//  Created by Gabriel Puppi on 25/10/22.
//

import Foundation
import SpriteKit


enum Frames {
    
    enum TextureList {
        case closed, opening, blink, teary
        
        var textures: [SKTexture] {
            switch self {
                
            case .closed:
                return [SKTexture(imageNamed: "closedEye1"),
                        SKTexture(imageNamed: "closedEye2")]
            case .opening:
                return [SKTexture(imageNamed: "closedEye1"),
                        SKTexture(imageNamed: "closedEye2"),
                        SKTexture(imageNamed: "semiClosedEye1"),
                        SKTexture(imageNamed: "semiClosedEye2"),
                        SKTexture(imageNamed: "almostClosedEye1"),
                        SKTexture(imageNamed: "almostClosedEye2"),
                        SKTexture(imageNamed: "almostOpenedEye1"),
                        SKTexture(imageNamed: "almostOpenedEye2"),]
            case .blink:
                return [SKTexture(imageNamed: "almostOpenedEye2"),
                        SKTexture(imageNamed: "almostOpenedEye1"),
                        SKTexture(imageNamed: "almostClosedEye2"),
                        SKTexture(imageNamed: "almostClosedEye1"),
                        SKTexture(imageNamed: "semiClosedEye2"),
                        SKTexture(imageNamed: "semiClosedEye1"),
                        SKTexture(imageNamed: "closedEye2"),
                        SKTexture(imageNamed: "closedEye1"),
                        SKTexture(imageNamed: "semiClosedEye1"),
                        SKTexture(imageNamed: "semiClosedEye2"),
                        SKTexture(imageNamed: "almostClosedEye1"),
                        SKTexture(imageNamed: "almostClosedEye2"),
                        SKTexture(imageNamed: "almostOpenedEye1"),
                        SKTexture(imageNamed: "almostOpenedEye2")]
            case .teary:
                return [SKTexture(imageNamed: "cry01"),
                        SKTexture(imageNamed: "cry02"),
                        SKTexture(imageNamed: "cry03"),
                        SKTexture(imageNamed: "cry04"),
                        SKTexture(imageNamed: "cry05"),
                        SKTexture(imageNamed: "cry06"),
                        SKTexture(imageNamed: "cry07"),
                        SKTexture(imageNamed: "cry08"),
                        ]
            }
            
        }
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
}
