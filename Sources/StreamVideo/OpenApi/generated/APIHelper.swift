//
// Copyright © 2023 Stream.io Inc. All rights reserved.
//

import Foundation

internal enum APIHelper {
    internal static func rejectNil(_ source: [String: Any?]) -> [String: Any]? {
        let destination = source.reduce(into: [String: Any]()) { result, item in
            if let value = item.value {
                result[item.key] = value
            }
        }

        if destination.isEmpty {
            return nil
        }
        return destination
    }

    internal static func rejectNilHeaders(_ source: [String: Any?]) -> [String: String] {
        source.reduce(into: [String: String]()) { result, item in
            if let collection = item.value as? [Any?] {
                result[item.key] = collection
                    .compactMap { value in
                        guard let value = value else { return nil }
                        return "\(value)"
                    }
                    .joined(separator: ",")
            } else if let value: Any = item.value {
                result[item.key] = "\(value)"
            }
        }
    }

    internal static func convertBoolToString(_ source: [String: Any]?) -> [String: Any]? {
        guard let source = source else {
            return nil
        }

        return source.reduce(into: [String: Any]()) { result, item in
            switch item.value {
            case let x as Bool:
                result[item.key] = x.description
            default:
                result[item.key] = item.value
            }
        }
    }

    internal static func mapValueToPathItem(_ source: Any) -> Any {
        if let collection = source as? [Any?] {
            return collection
                .compactMap { value in
                    guard let value = value else { return nil }
                    return "\(value)"
                }
                .joined(separator: ",")
        }
        return source
    }

    /// maps all values from source to query parameters
    ///
    /// explode attribute is respected: collection values might be either joined or split up into seperate key value pairs
    internal static func mapValuesToQueryItems(_ source: [String: (wrappedValue: Any?, isExplode: Bool)]) -> [URLQueryItem]? {
        let destination = source.filter { $0.value.wrappedValue != nil }.reduce(into: [URLQueryItem]()) { result, item in
            if let collection = item.value.wrappedValue as? [Any?] {

                let collectionValues: [String] = collection.compactMap { value in
                    guard let value = value else { return nil }
                    return "\(value)"
                }

                if !item.value.isExplode {
                    result.append(URLQueryItem(name: item.key, value: collectionValues.joined(separator: ",")))
                } else {
                    collectionValues
                        .forEach { value in
                            result.append(URLQueryItem(name: item.key, value: value))
                        }
                }

            } else if let value = item.value.wrappedValue {
                result.append(URLQueryItem(name: item.key, value: "\(value)"))
            }
        }

        if destination.isEmpty {
            return nil
        }
        return destination
    }

    /// maps all values from source to query parameters
    ///
    /// collection values are always exploded
    internal static func mapValuesToQueryItems(_ source: [String: Any?]) -> [URLQueryItem]? {
        let destination = source.filter { $0.value != nil }.reduce(into: [URLQueryItem]()) { result, item in
            if let collection = item.value as? [Any?] {
                collection
                    .compactMap { value in
                        guard let value = value else { return nil }
                        return "\(value)"
                    }
                    .forEach { value in
                        result.append(URLQueryItem(name: item.key, value: value))
                    }

            } else if let value = item.value {
                result.append(URLQueryItem(name: item.key, value: "\(value)"))
            }
        }

        if destination.isEmpty {
            return nil
        }
        return destination
    }
}
