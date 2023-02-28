//
// GetOrCreateCallRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

internal struct GetOrCreateCallRequest: Codable, JSONEncodable, Hashable {

    internal var data: CallRequest?
    internal var members: PaginationParamsRequest?
    internal var ring: Bool?

    internal init(data: CallRequest? = nil, members: PaginationParamsRequest? = nil, ring: Bool? = nil) {
        self.data = data
        self.members = members
        self.ring = ring
    }

    internal enum CodingKeys: String, CodingKey, CaseIterable {
        case data
        case members
        case ring
    }

    // Encodable protocol methods

    internal func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(data, forKey: .data)
        try container.encodeIfPresent(members, forKey: .members)
        try container.encodeIfPresent(ring, forKey: .ring)
    }
}

