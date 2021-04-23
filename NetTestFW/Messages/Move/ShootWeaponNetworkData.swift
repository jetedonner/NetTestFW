//
//  EndMatchNetworkData.swift
//  SuakeNetTest
//
//  Created by Kim David Hauser on 01.04.21.
//

import Foundation
import SceneKit

public class ShootWeaponNetworkData: BaseNetworkData {
    
    public var playerId:String = "G:1400932886"
    public var weaponType:WeaponType = .mg
    public var origin:SCNVector3 = SCNVector3(0, 0, 0)
    public var velocity:SCNVector3 = SCNVector3(0, 0, 0)
    
    
    public init(id:Int) {
        super.init(id: id, msgType: .shootWeaponMsg)
    }
    
    private enum CodingKeys: String, CodingKey {
        case playerId
        case weaponType
        case origin
        case velocity
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try super.init(from: decoder)

        self.playerId = try container.decode(String.self, forKey: .playerId)
        self.weaponType = try container.decode(WeaponType.self, forKey: .weaponType)
        self.origin = try container.decode(SCNVector3.self, forKey: .origin)
        self.velocity = try container.decode(SCNVector3.self, forKey: .velocity)
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.playerId, forKey: .playerId)
        try container.encode(self.weaponType, forKey: .weaponType)
        try container.encode(self.origin, forKey: .origin)
        try container.encode(self.velocity, forKey: .velocity)
        
        try super.encode(to: encoder)
    }
}
