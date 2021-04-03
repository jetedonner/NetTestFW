//
//  SuakeMatchDurration.swift
//  Suake3D
//
//  Created by Kim David Hauser on 22.07.20.
//  Copyright © 2020 Kim David Hauser. All rights reserved.
//

import Foundation

enum MatchDuration:TimeInterval, Codable{
    case Infinite = 9999999999.99999
    case Seconds_10 = 10.0
    case Seconds_30 = 30.0
    case Seconds_45 = 45.0
    case Minute_1 = 60.0
    case Minutes_2 = 120.0
    case Minutes_3 = 180.0
    case Minutes_5 = 300.0
    case Minutes_7 = 420.0
    case Minutes_10 = 600.0
    case Minutes_12 = 720.0
    case Minutes_15 = 900.0
    
    func toString()->String{
        switch self {
        case .Infinite:
            return  "Infinite ∞"
        case .Seconds_10:
            return  "10 seconds"
        case .Seconds_30:
            return  "30 seconds"
        case .Seconds_45:
            return  "45 seconds"
        case .Minute_1:
            return  "1 minute"
        case .Minutes_2:
            return  "2 minutes"
        case .Minutes_3:
            return  "3 minutes"
        case .Minutes_5:
            return  "5 minitus"
        case .Minutes_7:
            return  "7 minitus"
        case .Minutes_10:
            return  "10 minutes"
        case .Minutes_12:
            return  "12 minitus"
        case .Minutes_15:
            return  "15 minutes"
        }
    }
    
    static func matchDuration(fromString:String)->MatchDuration{
        switch fromString {
        case "Infinite ∞":
            return .Infinite
        case "30 Seconds":
            return .Seconds_30
        case "1 Minute":
            return .Minute_1
        case "2 Minutes":
            return .Minutes_2
        case "5 Minutes":
            return .Minutes_5
        case "10 Minutes":
            return .Minutes_10
        case "15 Minutes":
            return .Minutes_15
        default:
            return .Minutes_2
        }
    }
}


