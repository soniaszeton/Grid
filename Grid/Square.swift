//
//  Square.swift
//  Grid
//
//  Created by Sonia Szeton on 7/15/16.
//  Copyright © 2016 Crater Dog Technologies. All rights reserved.
//

import SpriteKit

// #1
let NumberOfColors: UInt32 = 7

// #2
enum SquareColor: Int, CustomStringConvertible {
    
    // #3
    case Blue = 0, Orange, Purple, Red, Green, Yellow, White
    
    // #4
    var spriteName: String {
        switch self {
        case .Blue:
            return "blue"
        case .Orange:
            return "orange"
        case .Purple:
            return "purple"
        case .Red:
            return "red"
        case .Green:
            return "green"
        case .Yellow:
            return "yellow"
        case .White:
            return "white"
        }
    }
    
    var description: String {
            return self.spriteName
    }
        
        /*
         static func random() -> BlockColor {
            return BlockColor(rawValue:Int(arc4random_uniform(NumberOfColors)))!
         NEED TO DETERMINE SquareColor BY PLAYER OR INITIAL STATE
        } */
    }
    
    class Square: Hashable, CustomStringConvertible {
        // #8
        // Constants
        var color: SquareColor
        
        // #9
        // Properties
        var column: Int
        var row: Int
        var sprite: SKSpriteNode?
        
        // #10
        var spriteName: String {
            return color.spriteName
        }
        
        // #11
        var hashValue: Int {
            return self.column ^ self.row
        }
        
        // #12
        var description: String {
            return "\(color): [\(column), \(row)]"
        }
        
        init(column:Int, row:Int, color:SquareColor) {
            self.column = column
            self.row = row
            self.color = color
        }
    }
    
    // #13
    func ==(lhs: Square, rhs: Square) -> Bool {
        return lhs.column == rhs.column && lhs.row == rhs.row && lhs.color.rawValue == rhs.color.rawValue
    }
    

