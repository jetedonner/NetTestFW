//
//  EndMatchNetworkData.swift
//  SuakeNetTest
//
//  Created by Kim David Hauser on 01.04.21.
//

import Foundation
import SceneKit

public class PickedUpNetworkData: BaseNetworkData {
    
    public var itemType:SuakeFieldType = .empty
    public var itemId:Int = 0
    public var value:CGFloat = 0.0
    public var newPos:SCNVector3 = SCNVector3(0, 0, 0)
    
    public init(id:Int, itemType:SuakeFieldType, value:CGFloat, newPos:SCNVector3, itemId:Int = 0) {
        super.init(id: id, msgType: .pickedUpMsg)
        self.itemType = itemType
        self.itemId = itemId
        self.value = value
        self.newPos = newPos
    }
    
    private enum CodingKeys: String, CodingKey {
        case itemType
        case itemId
        case value
        case newPos
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try super.init(from: decoder)
        self.itemType = try container.decode(SuakeFieldType.self, forKey: .itemType)
        self.itemId = try container.decode(Int.self, forKey: .itemId)
        self.value = try container.decode(CGFloat.self, forKey: .value)
        self.newPos = try container.decode(SCNVector3.self, forKey: .newPos)
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.itemType, forKey: .itemType)
        try container.encode(self.itemId, forKey: .itemId)
        try container.encode(self.value, forKey: .value)
        try container.encode(self.newPos, forKey: .newPos)
        
        try super.encode(to: encoder)
    }
}
