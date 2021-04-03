//
//  NetworkDataTypes.swift
//  SuakeNetTest
//
//  Created by Kim David Hauser on 31.03.21.
//

import Foundation

public enum MsgType : Int, Codable{
    case initMsg = 1
    case initLevelMsg = 2
    case turnMsg = 3
    case initMatchMsg = 4
    case endMatchMsg = 5
}

public enum TurnDir : Int, Codable{
    case Stop = -1
    case None = 0
    case Straight = 1
    case Left = 2
    case Right = 3
    case One80 = 4
    case Portation = 5
}
