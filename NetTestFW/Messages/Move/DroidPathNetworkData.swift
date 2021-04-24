//
//  MoveNetworkData.swift
//  SuakeNetTest
//
//  Created by Kim David Hauser on 30.03.21.
//

import Foundation
import SceneKit

public class DroidPathNetworkData: BasePlayerNetworkData {
    
//    public var nextDir:SuakeDir = .UP
    public var position:SCNVector3 = SCNVector3(1, 0, -8)
    
    public var path:[SuakeBaseGridGraphNode] = [SuakeBaseGridGraphNode]()
    
    public init(id:Int, path:[SuakeBaseGridGraphNode], position:SCNVector3, playerId:String){
        super.init(id: id, msgType: .droidDirMsg, playerId: playerId)
        self.path = path
        self.position = position
    }
    
    private enum CodingKeys: String, CodingKey {
        case path
        case position
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try super.init(from: decoder)
        self.path = try container.decode([SuakeBaseGridGraphNode].self, forKey: .path)
        self.position = try container.decode(SCNVector3.self, forKey: .position)
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.path, forKey: .path)
        try container.encode(self.position, forKey: .position)
        
        try super.encode(to: encoder)
    }
}
