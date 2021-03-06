//
//  MoveNetworkData.swift
//  SuakeNetTest
//
//  Created by Kim David Hauser on 30.03.21.
//

import Foundation
import SceneKit

public class TurnNetworkData: BasePlayerNetworkData {
    
    public var turnDir:TurnDir = .Straight
    public var position:SCNVector3 = SCNVector3(1, 0, -8)
    
    public init(id:Int, turnDir:TurnDir, position:SCNVector3, playerId:String){
        super.init(id: id, msgType: .turnMsg, playerId: playerId)
        self.turnDir = turnDir
        self.position = position
    }
    
    private enum CodingKeys: String, CodingKey {
        case turnDir
        case position
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try super.init(from: decoder)
        self.turnDir = try container.decode(TurnDir.self, forKey: .turnDir)
        self.position = try container.decode(SCNVector3.self, forKey: .position)
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.turnDir, forKey: .turnDir)
        try container.encode(self.position, forKey: .position)
        
        try super.encode(to: encoder)
    }
}
