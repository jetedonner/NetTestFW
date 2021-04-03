//
//  FloorType.swift
//  Suake3D
//
//  Created by Kim David Hauser on 17.03.21.
//

import Foundation

enum FloorType:Int, Codable {
    case Sand =  1 //"art.scnassets/textures/floors/desert_sand_floor_512x512.png"
    case Grass = 2 //"art.scnassets/textures/floors/grass_floor_512x512.png"
    case Space = 3 //"art.scnassets/textures/floors/space_glowing_plate_floor_512x512.png"
    case Stone = 4 //"art.scnassets/textures/floors/stone_floor_512x512.png"
    case Debug = 5 //"art.scnassets/textures/floors/stone_floor_512x512_DBG.png"
    
    case Bricks = 6 //"art.scnassets/textures/floors/floorPanelBricksLowPoly_512x512.png"
    case GreenMotherboard = 7 //"art.scnassets/textures/floors/floorPanelGreenMotherboard_512x512.png"
    case Metallic = 8 //"art.scnassets/textures/floors/floorPanelMetalic_512x512.png"
    case Patina = 9 //"art.scnassets/textures/floors/floorPanelMetalPatina_512x512.png"
    
    case RandomFloor = 10 //"A random floor texture"
    
    func toString()->String{
        switch self {
        case .Sand:
            return "art.scnassets/textures/floors/desert_sand_floor_512x512.png"
        case .Grass:
            return "art.scnassets/textures/floors/grass_floor_512x512.png"
        case .Space:
            return "art.scnassets/textures/floors/space_glowing_plate_floor_512x512.png"
        case .Stone:
            return "art.scnassets/textures/floors/stone_floor_512x512.png"
        case .Debug:
            return "art.scnassets/textures/floors/stone_floor_512x512_DBG.png"
        case .Bricks:
            return "art.scnassets/textures/floors/floorPanelBricksLowPoly_512x512.png"
        case .GreenMotherboard:
            return "art.scnassets/textures/floors/floorPanelGreenMotherboard_512x512.png"
        case .Metallic:
            return "art.scnassets/textures/floors/floorPanelMetalic_512x512.png"
        case .Patina:
            return "art.scnassets/textures/floors/floorPanelMetalPatina_512x512.png"
        case .RandomFloor:
            return "A random floor texture"
        }
    }
    
    static var allFloors: [FloorType] {
        return [.Sand, .Grass, .Space, .Stone, .Debug, .Bricks, .GreenMotherboard, .Metallic, .Patina]
    }
    
    static func random() -> FloorType {
        let randomIndex = Int(arc4random()) % self.allFloors.count
        return self.allFloors[randomIndex]
    }
}
