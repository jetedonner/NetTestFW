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
    public var value:CGFloat = 0.0
    public var newPos:SCNVector3 = SCNVector3(0, 0, 0)
    
    public init(id:Int, itemType:SuakeFieldType, value:CGFloat, newPos:SCNVector3) {
        super.init(id: id, msgType: .pickedUpMsg)
        self.itemType = itemType
        self.value = value
        self.newPos = newPos
    }
    
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }
}
