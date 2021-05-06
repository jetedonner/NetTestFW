//
//  LevelConfiguration.swift
//  SuakeNetTest
//
//  Created by Kim David Hauser on 01.04.21.
//

import Foundation
import SceneKit

public struct SuakePosDir: Codable{
    public var pos:SCNVector3 = SCNVector3(0, 0, 0)
    public var dir:SuakeDir = .UP
    
    public init(pos:SCNVector3, dir:SuakeDir){
        self.pos = pos
        self.dir = dir
    }
}

public struct LevelSetup: Codable{
    
    public var humanPlayerPosDir:[SuakePosDir] = [SuakePosDir(pos: SCNVector3(0, 0, 0), dir: .UP), SuakePosDir(pos: SCNVector3(-2, 0, 2), dir: .DOWN)]
    
    public var loadAISuake:Bool = false
    public var aiPlayerPosDir:[SuakePosDir] = [SuakePosDir]()
    
    public var loadDroids:Bool = false
    public var droidsAttackOwn:Bool = false
    public var droidsAttackOpp:Bool = false
//    var droidCount:Int = 0
    public var droidPosDir:[SuakePosDir] = [SuakePosDir(pos: SCNVector3(3, 0, 3), dir: .DOWN)]
    
    public var goodyPos:SCNVector3 = SCNVector3(-3, 0, 3)
    
    public var medKitPos:[SCNVector3] = [SCNVector3(-2, 0, 5), SCNVector3(-7, 0, 7), SCNVector3(3, 0, -2)] //= [SCNVector3]()
    
    public var loadWeaponPickups:Bool = true
    public var loadObstacles:Bool = true
    public var obstacleCount:Int = 5
    public var loadPortals:Bool = true
    
    public var mgPickupPos:SCNVector3 = SCNVector3(2, 0, 3)
    
    public var showCountdown:Bool = true
    
    
    //TMP remove before release build
//    var testOppSuakeAI:Bool = false
    
//    var loadPortals:Bool = false
//    var portalCount:Int = 0
    
}

public struct LevelPlayers: Codable{
    public var humanPlayerCount:Int =  2
    public var humanPlayers:[String:String] = [:]
    
    public var aiPlayerCount:Int =     0
    public var droidPlayerCount:Int =  0
    public var loadDroids:Bool{
        get{ return self.droidPlayerCount > 0 }
    }
}

public struct LevelEnvironment: Codable{
    public var levelSize:LevelSize =   .ExtraSmall
    public var floorType:FloorType =   .Metallic
    public var skyBoxType:SkyboxType = .GreenSky
    
    public var matchDuration:MatchDuration = .Minutes_2
    public var levelDifficulty:LevelDifficulty = .Easy
    public var lightIntensity:LightIntensity = .normal
    public var showTVMonitors:Bool = true
    
    
    
    public init(levelSize:LevelSize, floorType:FloorType, skyBoxType:SkyboxType, matchDuration:MatchDuration, levelDifficulty:LevelDifficulty, lightIntensity:LightIntensity, showTVMonitors:Bool = true){
        self.levelSize = levelSize
        self.floorType = floorType
        self.skyBoxType = skyBoxType
        self.matchDuration = matchDuration
        self.levelDifficulty = levelDifficulty
        self.lightIntensity = lightIntensity
        self.showTVMonitors = showTVMonitors
    }
}

public class LevelConfiguration: NSObject, Codable {
    
    public var levelEnv:LevelEnvironment = LevelEnvironment(levelSize: .Medium, floorType: .Grass, skyBoxType: .PinkSunrise, matchDuration: .Minutes_2, levelDifficulty: .Unreal, lightIntensity: .noLight)
    
    public var levelPlayers:LevelPlayers = LevelPlayers(humanPlayerCount: 3, aiPlayerCount: 1, droidPlayerCount: 2)
    
    public var levelSetup:LevelSetup = LevelSetup()
    
    public var levelClientServer:[SuakePlayerObjNet] = [SuakePlayerObjNet]()
    
    public override init() {
        super.init()
    }
    
    public init(levelEnv:LevelEnvironment, levelPLayers:LevelPlayers, levelSetup:LevelSetup, levelClientServer:[SuakePlayerObjNet]) {
        super.init()
        self.levelEnv = levelEnv
        self.levelPlayers = levelPLayers
        self.levelSetup = levelSetup
        self.levelClientServer = levelClientServer
    }
}
