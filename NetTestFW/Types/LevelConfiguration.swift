//
//  LevelConfiguration.swift
//  SuakeNetTest
//
//  Created by Kim David Hauser on 01.04.21.
//

import Foundation
import SceneKit

public struct LevelSetup: Codable{
    public var playerPos:[SCNVector3] = [SCNVector3(0, 0, 0), SCNVector3(-2, 0, 2)]
    public var playerDir:[SuakeDir] = [.UP, .DOWN]
    
    public var goodyPos:SCNVector3 = SCNVector3(-3, 0, 3)
//    public var droidsPos:[SCNVector3] = [SCNVector3]()
    
    public var medKitPos:[SCNVector3] = [SCNVector3]()
}

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
    
    public var levelSetup:LevelSetup = LevelSetup()
    
    public init(levelEnv:LevelEnvironment, levelPLayers:LevelPlayers, levelSetup:LevelSetup) {
        super.init()
        self.levelEnv = levelEnv
        self.levelPlayers = levelPLayers
        self.levelSetup = levelSetup
    }
}
