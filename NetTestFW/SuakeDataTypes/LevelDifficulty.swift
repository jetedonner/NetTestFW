//
//  SuakeLevelDifficulties.swift
//  Suake3D
//
//  Created by Kim David Hauser on 22.07.20.
//  Copyright © 2020 Kim David Hauser. All rights reserved.
//

import Foundation

enum LevelDifficulty:Int, Codable {
    case Tutorial =     1 //"Tutorial"
    case Easy =         2 //"Easy"
    case Medium =       3 //"Medium"
    case Hard =         4 //"Hard"
    case Nightmare =    5 //"Nightmare"
    case Unreal =       6 //"Unreal"
    
    func toString()->String{
        switch self {
        case .Tutorial:
            return "Tutorial"
        case .Easy:
            return "Easy"
        case .Medium:
            return "Medium"
        case .Hard:
            return "Hard"
        case .Nightmare:
            return "Nightmare"
        case .Unreal:
            return "Unreal"
        }
    }
    
    static func levelDifficulty(fromString:String)->LevelDifficulty{
        switch fromString {
        case "Tutorial":
            return .Tutorial
        case "Easy":
            return .Easy
        case "Medium":
            return .Medium
        case "Hard":
            return .Hard
        case "Nightmare":
            return .Nightmare
        case "Unreal":
            return .Unreal
        default:
            return .Medium
        }
    }
}
