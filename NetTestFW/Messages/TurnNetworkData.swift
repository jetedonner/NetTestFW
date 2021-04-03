//
//  MoveNetworkData.swift
//  SuakeNetTest
//
//  Created by Kim David Hauser on 30.03.21.
//

import Foundation
import SceneKit

class TurnNetworkData: BaseNetworkData {
    
    var turnDir:TurnDir = .Straight
    var position:SCNVector3 = SCNVector3(1, 0, -8)
    
    init(id:Int){
        super.init(id: id, msgType: .turnMsg)
        self.turnDir = .Left
        self.position = SCNVector3(-6, 0, 3)
    }
    
    private enum CodingKeys: String, CodingKey {
        case turnDir
        case position
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try super.init(from: decoder)

        self.turnDir = try container.decode(TurnDir.self, forKey: .turnDir)
        self.position = try container.decode(SCNVector3.self, forKey: .position)
    }

    override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.turnDir, forKey: .turnDir)
        try container.encode(self.position, forKey: .position)
        
        try super.encode(to: encoder)
    }
}
