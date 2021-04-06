//
//  LevelSize.swift
//  Suake3D
//
//  Created by Kim David Hauser on 17.03.21.
//

import Foundation

public enum LevelSize:Int, Codable {
    case ExtraSmall = 1//  "10,10"
    case Small =      2//  "20,20"
    case Medium =     3//  "30,30"
    case Big =        4//  "40,40"
    case VeryBig =    5//  "50,50"
    case Huge =       6//  "70,70"

//    func getNSSize()->NSSize{
//        NSSize.convertFromStringLiteral(value: self.rawValue)
//    }
    
    public func toString()->String{
        switch self {
        case .ExtraSmall:
            return "10,10"
        case .Small:
            return "20,20"
        case .Medium:
            return "30,30"
        case .Big:
            return "40,40"
        case .VeryBig:
            return "50,50"
        case .Huge:
            return "70,70"
        }
    }
    
    public static func levelSize(fromString:String)->LevelSize{
        switch fromString {
        case "10x10":
            return .ExtraSmall
        case "20x20":
            return .Small
        case "30x30":
            return .Medium
        case "40x40":
            return .Big
        case "50x50":
            return .VeryBig
        case "70x70":
            return .Huge
        default:
            return .Small
        }
    }
}
