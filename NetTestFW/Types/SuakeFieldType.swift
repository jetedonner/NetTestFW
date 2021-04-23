//
//  SuakeFieldType.swift
//  NetTestFW
//
//  Created by Kim David Hauser on 23.04.21.
//

import Foundation

public enum SuakeFieldType:String, Codable {
    case empty, wall, goody, volcano, lavapit, own_suake, opp_suake, droid,
    weapon, machinegun, grenade, shotgun, nuke, rocketlauncher,
    railgun, sniperrifle, portal, portalIn, portalOut, fire, medKit, captureFlag, rock
}
