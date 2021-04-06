//
//  LevelConfiguration.swift
//  SuakeNetTest
//
//  Created by Kim David Hauser on 01.04.21.
//

import Foundation

public struct LevelPlayers: Codable{
    public var humanPlayerCount:Int =  2
    public var aiPlayerCount:Int =     0
    public var droidPlayerCount:Int =  0
}

public struct LevelEnvironment: Codable{
    public var levelSize:LevelSize =   .ExtraSmall
    public var floorType:FloorType =   .Metallic
    public var skyBoxType:SkyboxType = .GreenSky
    
    public var matchDuration:MatchDuration = .Minutes_2
    public var levelDifficulty:LevelDifficulty = .Easy
    public var lightIntensity:LightIntensity = .normal
}

public class LevelConfiguration: NSObject, Codable {
    
    public var levelEnv:LevelEnvironment = LevelEnvironment(levelSize: .Medium, floorType: .Grass, skyBoxType: .PinkSunrise, matchDuration: .Minutes_2, levelDifficulty: .Unreal, lightIntensity: .noLight)
    
    public var levelPlayers:LevelPlayers = LevelPlayers(humanPlayerCount: 3, aiPlayerCount: 1, droidPlayerCount: 2)
    
    public init(levelEnv:LevelEnvironment, levelPLayers:LevelPlayers) {
        super.init()
        self.levelEnv = levelEnv
        self.levelPlayers = levelPLayers
    }
}
