//
//  Extensions.swift
//  SuakeNetTest
//
//  Created by Kim David Hauser on 01.04.21.
//

import Foundation
import SceneKit

extension SCNVector3: Codable {
    public init(from decoder: Decoder) throws {
        self.init()
        var container = try decoder.unkeyedContainer()
        self.x = try container.decode(CGFloat.self)
        self.y = try container.decode(CGFloat.self)
        self.z = try container.decode(CGFloat.self)
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.unkeyedContainer()
        try container.encode(self.x)
        try container.encode(self.y)
        try container.encode(self.z)
    }
}

extension SCNVector4: Codable {
    public init(from decoder: Decoder) throws {
        self.init()
        var container = try decoder.unkeyedContainer()
        self.x = try container.decode(CGFloat.self)
        self.y = try container.decode(CGFloat.self)
        self.z = try container.decode(CGFloat.self)
        self.w = try container.decode(CGFloat.self)
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.unkeyedContainer()
        try container.encode(self.x)
        try container.encode(self.y)
        try container.encode(self.z)
        try container.encode(self.w)
    }
}
