//
//  SuakeDir.swift
//  NetTestFW
//
//  Created by Kim David Hauser on 07.04.21.
//

import Foundation
import SceneKit

public enum SuakeDir : Int, Codable {
    case NONE = 0//"Node"
    case DOWN = 1//"Down"
    case RIGHT = 2//"Right"
    case UP = 3//"Up"
    case LEFT = 4//"Left"
    case PORTATIOM = 5//"Portatiom"
    
    public func toString()->String{
        switch self {
        case .NONE:
            return "NONE"
        case .DOWN:
            return "DOWN"
        case .RIGHT:
            return "RIGHT"
        case .UP:
            return "UP"
        case .LEFT:
            return "LEFT"
        case .PORTATIOM:
            return "PORTATIOM"
        }
    }
}

//extension SuakeDir {
//    func encode() -> Data? {
//        return try? JSONEncoder().encode(self)
//    }
//    
//    static func decode(data: Data) -> SuakeDir? {
//        return try? JSONDecoder().decode(SuakeDir.self, from: data)
//    }
//}
