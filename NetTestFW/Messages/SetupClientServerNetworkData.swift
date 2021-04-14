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
    public var playerName:String
    public var playerType:HostType
    public var playerNum:Int
}

public class SetupClientServerNetworkData: BaseNetworkData {
    
    public var playerCount:Int = 0
    public var clientServerData:[SuakePlayerObjNet] = [SuakePlayerObjNet]()
    
    public init(id:Int){
        super.init(id: id, msgType: .setupClientServerMsg)
    }
    
    @discardableResult
    public func addHost(playerId:String, playerName:String, hostType:HostType)->SuakePlayerObjNet{
        let objRet:SuakePlayerObjNet = SuakePlayerObjNet(playerId: playerId, playerName: playerName, playerType: hostType, playerNum: self.playerCount)
        self.clientServerData.append(objRet)
        self.playerCount += 1
        return objRet
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
