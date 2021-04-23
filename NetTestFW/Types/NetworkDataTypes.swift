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
    case startMatchMsg
    case endMatchMsg
    case shootWeaponMsg
    case ready4MatchMsg
    case pickedUpMsg
    case hitByBulletMsg
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
