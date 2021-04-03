//
//  LevelConfiguration.swift
//  SuakeNetTest
//
//  Created by Kim David Hauser on 01.04.21.
//

import Foundation

struct LevelPlayers: Codable{
    var humanPlayerCount:Int =  2
    var aiPlayerCount:Int =     0
    var droidPlayerCount:Int =  0
}

struct LevelEnvironment: Codable{
    var levelSize:LevelSize =   .ExtraSmall
    var floorType:FloorType =   .Metallic
    var skyBoxType:SkyboxType = .GreenSky
    
    var matchDuration:MatchDuration = .Minutes_2
}

class LevelConfiguration: NSObject, Codable {
    
//    var humanPlayerCount:Int =  2
//    var aiPlayerCount:Int =     0
//    var droidPlayerCount:Int =  0
//
//    var levelSize:LevelSize =   .ExtraSmall
//    var floorType:FloorType =   .Metallic
//    var skyBoxType:SkyboxType = .GreenSky
    
    var levelEnv:LevelEnvironment = LevelEnvironment(levelSize: .Medium, floorType: .Grass, skyBoxType: .PinkSunrise, matchDuration: .Minutes_2)
    var levelPlayers:LevelPlayers = LevelPlayers(humanPlayerCount: 3, aiPlayerCount: 1, droidPlayerCount: 2)
    
    init(levelEnv:LevelEnvironment, levelPLayers:LevelPlayers) {
        super.init()
        self.levelEnv = levelEnv
        self.levelPlayers = levelPLayers
    }
    
//    init(levelSize:LevelSize = .ExtraSmall, floorType:FloorType = .Metallic, skyBoxType:SkyboxType = .GreenSky) {
//        super.init()
//        self.levelSize = levelSize
//        self.floorType = floorType
//        self.skyBoxType = skyBoxType
//    }
}
