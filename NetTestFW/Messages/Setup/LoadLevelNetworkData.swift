//
//  LoadLevelNetworkData.swift
//  SuakeNetTest
//
//  Created by Kim David Hauser on 01.04.21.
//

import Foundation

public class LoadLevelNetworkData: BaseNetworkData {
    
    public var levelConfig:LevelConfiguration!
    public var players:LevelPlayers = LevelPlayers(humanPlayerCount: 2, aiPlayerCount: 0, droidPlayerCount: 0)
    
    public var playerCount:Int = 0
    public var levelClientServer:[SuakePlayerObjNet] = [SuakePlayerObjNet]()
    
    @discardableResult
    public func addHost(playerId:String, playerName:String, hostType:HostType)->SuakePlayerObjNet{
        let objRet:SuakePlayerObjNet = SuakePlayerObjNet(playerId: playerId, playerName: playerName, playerType: hostType, playerNum: self.playerCount)
        self.levelClientServer.append(objRet)
        self.playerCount += 1
        return objRet
    }
    
    public init(id: Int) {
        super.init(id: id, msgType: .initLevelMsg)
        
        self.levelConfig = LevelConfiguration(levelEnv: LevelEnvironment(levelSize: .Small, floorType: .Debug, skyBoxType: .RedGalaxy, matchDuration: .Seconds_20, levelDifficulty: .Easy, lightIntensity: .normal), levelPLayers: players, levelSetup: LevelSetup(), levelClientServer: levelClientServer)
    }
    
    private enum CodingKeys: String, CodingKey {
        case levelConfig
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try super.init(from: decoder)

        self.levelConfig = try container.decode(LevelConfiguration.self, forKey: .levelConfig)
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.levelConfig, forKey: .levelConfig)

        try super.encode(to: encoder)
    }
}
