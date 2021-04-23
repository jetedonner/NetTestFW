//
//  EndMatchNetworkData.swift
//  SuakeNetTest
//
//  Created by Kim David Hauser on 01.04.21.
//

import Foundation
import SceneKit

public class HitByBulletNetworkData: BaseNetworkData {
    
    public var itemType:SuakeFieldType = .empty
    public var weaponType:WeaponType = .mg
    public var value:CGFloat = 0.0
    public var pos:SCNVector3 = SCNVector3(0, 0, 0)
    
    public init(id:Int, itemType:SuakeFieldType, weaponType:WeaponType, value:CGFloat, pos:SCNVector3) {
        super.init(id: id, msgType: .hitByBulletMsg)
        self.itemType = itemType
        self.weaponType = weaponType
        self.value = value
        self.pos = pos
    }
    
    private enum CodingKeys: String, CodingKey {
        case itemType
        case weaponType
        case value
        case pos
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try super.init(from: decoder)
        self.itemType = try container.decode(SuakeFieldType.self, forKey: .itemType)
        self.weaponType = try container.decode(WeaponType.self, forKey: .weaponType)
        self.value = try container.decode(CGFloat.self, forKey: .value)
        self.pos = try container.decode(SCNVector3.self, forKey: .pos)
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.itemType, forKey: .itemType)
        try container.encode(self.weaponType, forKey: .weaponType)
        try container.encode(self.value, forKey: .value)
        try container.encode(self.pos, forKey: .pos)
        
        try super.encode(to: encoder)
    }
}
