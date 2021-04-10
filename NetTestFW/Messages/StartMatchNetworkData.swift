//
//  EndMatchNetworkData.swift
//  SuakeNetTest
//
//  Created by Kim David Hauser on 01.04.21.
//

import Foundation

public class StartMatchNetworkData: BaseNetworkData {
    
    public init(id:Int) {
        super.init(id: id, msgType: .startMatchMsg)
    }
    
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }
}
