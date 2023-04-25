//
// Copyright © 2023 Stream.io Inc. All rights reserved.
//

import Foundation

struct DeviceData {
    let id: String
    let provider: PushNotificationsProvider
    let name: String
}

/// A type that represents the supported push providers.
public struct PushNotificationsProvider: RawRepresentable, Hashable, ExpressibleByStringLiteral, Sendable {
    public static let firebase: Self = "firebase"
    public static let apn: Self = "apn"
    public static let apnVoip: Self = "apn-voip"
    
    public let rawValue: String

    public init(rawValue: String) {
        self.rawValue = rawValue
    }

    public init(stringLiteral value: String) {
        self.init(rawValue: value)
    }
}
