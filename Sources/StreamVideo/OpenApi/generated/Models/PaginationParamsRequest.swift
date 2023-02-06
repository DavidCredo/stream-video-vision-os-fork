//
// Copyright © 2023 Stream.io Inc. All rights reserved.
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

internal struct PaginationParamsRequest: Codable, JSONEncodable, Hashable {

    internal var idGt: Double?
    internal var idGte: Double?
    internal var idLt: Double?
    internal var idLte: Double?
    internal var limit: Double?
    internal var offset: Double?

    internal init(
        idGt: Double? = nil,
        idGte: Double? = nil,
        idLt: Double? = nil,
        idLte: Double? = nil,
        limit: Double? = nil,
        offset: Double? = nil
    ) {
        self.idGt = idGt
        self.idGte = idGte
        self.idLt = idLt
        self.idLte = idLte
        self.limit = limit
        self.offset = offset
    }

    internal enum CodingKeys: String, CodingKey, CaseIterable {
        case idGt = "id_gt"
        case idGte = "id_gte"
        case idLt = "id_lt"
        case idLte = "id_lte"
        case limit
        case offset
    }

    // Encodable protocol methods

    internal func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(idGt, forKey: .idGt)
        try container.encodeIfPresent(idGte, forKey: .idGte)
        try container.encodeIfPresent(idLt, forKey: .idLt)
        try container.encodeIfPresent(idLte, forKey: .idLte)
        try container.encodeIfPresent(limit, forKey: .limit)
        try container.encodeIfPresent(offset, forKey: .offset)
    }
}
