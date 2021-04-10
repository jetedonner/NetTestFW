//
//  NetworkDataTypes.swift
//  SuakeNetTest
//
//  Created by Kim David Hauser on 31.03.21.
//

import Foundation

public enum HostType : UInt8, Codable{
    case server = 0
    case client
}

public enum MsgType : UInt8, Codable{
    case initMsg = 0
    case setupClientServerMsg
    case initLevelMsg
    case turnMsg
    case initMatchMsg
    case endMatchMsg
    case ready4MatchMsg
}

public enum TurnDir : UInt8, Codable{
    case Stop = 0
    case None
    case Straight
    case Left
    case Right
    case One80
    case Portation
}
