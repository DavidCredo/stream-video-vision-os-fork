//
// TargetResolutionRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif





internal struct TargetResolutionRequest: Codable, JSONEncodable, Hashable {

    static let bitrateRule = NumericRule<Int>(minimum: nil, exclusiveMinimum: false, maximum: 6000000, exclusiveMaximum: false, multipleOf: nil)
    static let heightRule = NumericRule<Int>(minimum: 240, exclusiveMinimum: false, maximum: 2560, exclusiveMaximum: false, multipleOf: nil)
    static let widthRule = NumericRule<Int>(minimum: 240, exclusiveMinimum: false, maximum: 2560, exclusiveMaximum: false, multipleOf: nil)
    internal var bitrate: Int?
    internal var height: Int?
    internal var width: Int?

    internal init(bitrate: Int? = nil, height: Int? = nil, width: Int? = nil) {
        self.bitrate = bitrate
        self.height = height
        self.width = width
    }

    internal enum CodingKeys: String, CodingKey, CaseIterable {
        case bitrate
        case height
        case width
    }

    // Encodable protocol methods

    internal func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(bitrate, forKey: .bitrate)
        try container.encodeIfPresent(height, forKey: .height)
        try container.encodeIfPresent(width, forKey: .width)
    }
}
