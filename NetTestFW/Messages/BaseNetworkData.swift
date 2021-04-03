//
//  BaseNetworkData.swift
//  Suake3D
//
//  Created by Kim David Hauser on 30.03.21.
//

import Foundation

class BaseNetworkData: Codable {
    
//    var id:UUID = UUID()
    var id:Int = -1
    var msgType:MsgType = .initMsg
    
    private enum CodingKeys: String, CodingKey {
        case id
        case msgType
    }
    
//    init(id:UUID, msgType:MsgType) {
//        self.id = id
//        self.msgType = msgType
//    }

    init(id:Int, msgType:MsgType) {
        self.id = id
        self.msgType = msgType
    }
    
    required init(from decoder: Decoder) throws {

        let container = try decoder.container(keyedBy: CodingKeys.self)
//        id = try container.decode(UUID.self, forKey: .id)
        id = try container.decode(Int.self, forKey: .id)
        msgType = try container.decode(MsgType.self, forKey: .msgType)

    }

    func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(msgType, forKey: .msgType)
    }
}
