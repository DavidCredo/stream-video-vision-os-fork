//
// GeofenceSettingsRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

internal struct GeofenceSettingsRequest: Codable, JSONEncodable, Hashable {

    internal var names: [String]?

    internal init(names: [String]? = nil) {
        self.names = names
    }

    internal enum CodingKeys: String, CodingKey, CaseIterable {
        case names
    }

    // Encodable protocol methods

    internal func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(names, forKey: .names)
    }
}

