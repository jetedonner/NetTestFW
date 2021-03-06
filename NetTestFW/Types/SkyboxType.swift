//
//  SkyboxType.swift
//  Suake3D
//
//  Created by Kim David Hauser on 17.03.21.
//

import Foundation

public enum SkyboxType:Int, Codable {
    
    case GreenSky =     1 //"Green sky"
    case PinkSunrise =  2 //"Pink sunrise"
    case RedGalaxy =    3 //"Red galaxy"
    case YellowGalaxy = 4 //"Yellow galaxy"
    case RandomSkyBox = 5 //"A random skybox"
    
    public func toString()->String{
        switch self {
        case .GreenSky:
            return "Green sky"
        case .PinkSunrise:
            return "Pink sunrise"
        case .RedGalaxy:
            return "Red galaxy"
        case .YellowGalaxy:
            return "Yellow galaxy"
        case .RandomSkyBox:
            return "A random skybox"
        }
    }
    
    public static var allSkyboxes: [SkyboxType] {
        return [.GreenSky, .PinkSunrise, .RedGalaxy, .YellowGalaxy]
    }
    
    public static func random() -> SkyboxType {
        let randomIndex = Int(arc4random()) % self.allSkyboxes.count
        return self.allSkyboxes[randomIndex]
    }
    
    public static func getSkybox(type:SkyboxType)->[String]{
        if(type == .RedGalaxy){
//            return ["SkyRed_left_1024x1024", "SkyRed_right_1024x1024", "SkyRed_top_1024x1024", "SkyRed_bottom_1024x1024", "SkyRed_back_1024x1024", "SkyRed_front_1024x1024"]
            return ["SkyRed_right_1024x1024", "SkyRed_left_1024x1024", "SkyRed_bottom_1024x1024", "SkyRed_top_1024x1024",  "SkyRed_front_1024x1024", "SkyRed_back_1024x1024"]
        }else if(type == .YellowGalaxy){
            return ["SkyYellow_left_1024x1024", "SkyYellow_right_1024x1024", "SkyYellow_top_1024x1024", "SkyYellow_bottom_1024x1024", "SkyYellow_back_1024x1024", "SkyYellow_front_1024x1024"]
        }else if(type == .PinkSunrise){
            return ["SkyLeft_1024x1024", "SkyRight_1024x1024", "SkyUp_1024x1024", "SkyDown_1024x1024", "SkyBack_1024x1024", "SkyFront_1024x1024"]
        }else{
            return ["Sky2Left_1024x1024", "Sky2Right_1024x1024", "Sky2Top_1024x1024", "Sky2Bottom_1024x1024", "Sky2Back_1024x1024", "Sky2Front_1024x1024"]
        }
    }
}
