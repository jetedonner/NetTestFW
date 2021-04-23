//
//  BaseNetworkData.swift
//  Suake3D
//
//  Created by Kim David Hauser on 30.03.21.
//

import Foundation

public class BasePlayerNetworkData:BaseNetworkData {
    
    public var playerId:String = ""
    
    private enum CodingKeys: String, CodingKey {
        case playerId
    }
    
    public init(id:Int, msgType:MsgType, playerId:String) {
        super.init(id: id, msgType: msgType)
        self.playerId = playerId
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try super.init(from: decoder)

        self.playerId = try container.decode(String.self, forKey: .playerId)
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.playerId, forKey: .playerId)

        try super.encode(to: encoder)
    }
}
