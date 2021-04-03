//
//  EndMatchNetworkData.swift
//  SuakeNetTest
//
//  Created by Kim David Hauser on 01.04.21.
//

import Foundation

class EndMatchNetworkData: BaseNetworkData {
    
    init(id:Int) {
        super.init(id: id, msgType: .endMatchMsg)
    }
    
    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }
}
