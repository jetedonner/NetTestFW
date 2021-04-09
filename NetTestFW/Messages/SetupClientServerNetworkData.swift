//
//  EndMatchNetworkData.swift
//  SuakeNetTest
//
//  Created by Kim David Hauser on 01.04.21.
//

import Foundation
import GameKit


public struct SuakePlayerObjNet:Codable  {
    public var playerId:String
    public var playerType:HostType
    public var playerNum:Int
}

public class SetupClientServerNetworkData: BaseNetworkData {
    
    public var playerCount:Int = 0
//    public var clientServerData:[String:HostType] = [:]
    public var clientServerData:[SuakePlayerObjNet] = [SuakePlayerObjNet]()
    
    
    public init(id:Int){
        super.init(id: id, msgType: .setupClientServerMsg)
    }
    
    public func addHost(playerId:String, hostType:HostType){
//        self.clientServerData[playerId] = hostType
        self.clientServerData.append(SuakePlayerObjNet(playerId: playerId, playerType: hostType, playerNum: self.playerCount))
        self.playerCount += 1
    }
    
    private enum CodingKeys: String, CodingKey {
        case clientServerData
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try super.init(from: decoder)

        self.clientServerData = try container.decode([SuakePlayerObjNet].self, forKey: .clientServerData)
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.clientServerData, forKey: .clientServerData)

        try super.encode(to: encoder)
    }
}
