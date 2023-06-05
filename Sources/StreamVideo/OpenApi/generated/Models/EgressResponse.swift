//
// EgressResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif





internal struct EgressResponse: Codable, JSONEncodable, Hashable {

    internal var broadcasting: Bool
    internal var hls: EgressHLSResponse?
    internal var rtmps: [EgressRTMPResponse]

    internal init(broadcasting: Bool, hls: EgressHLSResponse? = nil, rtmps: [EgressRTMPResponse]) {
        self.broadcasting = broadcasting
        self.hls = hls
        self.rtmps = rtmps
    }

    internal enum CodingKeys: String, CodingKey, CaseIterable {
        case broadcasting
        case hls
        case rtmps
    }

    // Encodable protocol methods

    internal func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(broadcasting, forKey: .broadcasting)
        try container.encodeIfPresent(hls, forKey: .hls)
        try container.encode(rtmps, forKey: .rtmps)
    }
}

