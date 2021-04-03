//
//  LoadLevelNetworkData.swift
//  SuakeNetTest
//
//  Created by Kim David Hauser on 01.04.21.
//

import Foundation

class LoadLevelNetworkData: BaseNetworkData {
    
    var levelConfig:LevelConfiguration!
    
    init(id: Int) {
        super.init(id: id, msgType: .initLevelMsg)
        
        self.levelConfig = LevelConfiguration(levelEnv: LevelEnvironment(levelSize: .Small, floorType: .Debug, skyBoxType: .RedGalaxy, matchDuration: .Minute_1), levelPLayers: LevelPlayers(humanPlayerCount: 2, aiPlayerCount: 0, droidPlayerCount: 0))
    }
    
    private enum CodingKeys: String, CodingKey {
        case levelConfig
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try super.init(from: decoder)

        self.levelConfig = try container.decode(LevelConfiguration.self, forKey: .levelConfig)
    }

    override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.levelConfig, forKey: .levelConfig)

        try super.encode(to: encoder)
    }
}
