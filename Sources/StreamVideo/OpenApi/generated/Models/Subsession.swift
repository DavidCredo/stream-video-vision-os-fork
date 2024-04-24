//
// Subsession.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct Subsession: Codable, JSONEncodable, Hashable {
    public var endedAt: Int
    public var joinedAt: Int
    public var sfuId: String

    public init(endedAt: Int, joinedAt: Int, sfuId: String) {
        self.endedAt = endedAt
        self.joinedAt = joinedAt
        self.sfuId = sfuId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case endedAt = "ended_at"
        case joinedAt = "joined_at"
        case sfuId = "sfu_id"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(endedAt, forKey: .endedAt)
        try container.encode(joinedAt, forKey: .joinedAt)
        try container.encode(sfuId, forKey: .sfuId)
    }
}
