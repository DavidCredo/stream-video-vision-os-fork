//
// Copyright © 2023 Stream.io Inc. All rights reserved.
//

import Foundation

protocol JSONEncodable {
    func encodeToJSON() -> Any
}

/// An enum where the last case value can be used as a default catch-all.
protocol CaseIterableDefaultsLast: Decodable & CaseIterable & RawRepresentable
    where RawValue: Decodable, AllCases: BidirectionalCollection {}

extension CaseIterableDefaultsLast {
    /// Initializes an enum such that if a known raw value is found, then it is decoded.
    /// Otherwise the last case is used.
    /// - Parameter decoder: A decoder.
    internal init(from decoder: Decoder) throws {
        if let value = try Self(rawValue: decoder.singleValueContainer().decode(RawValue.self)) {
            self = value
        } else if let lastValue = Self.allCases.last {
            self = lastValue
        } else {
            throw DecodingError.valueNotFound(
                Self.Type.self,
                .init(codingPath: decoder.codingPath, debugDescription: "CaseIterableDefaultsLast")
            )
        }
    }
}

/// A flexible type that can be encoded (`.encodeNull` or `.encodeValue`)
/// or not encoded (`.encodeNothing`). Intended for request payloads.
internal enum NullEncodable<Wrapped: Hashable>: Hashable {
    case encodeNothing
    case encodeNull
    case encodeValue(Wrapped)
}

extension NullEncodable: Codable where Wrapped: Codable {
    internal init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(Wrapped.self) {
            self = .encodeValue(value)
        } else if container.decodeNil() {
            self = .encodeNull
        } else {
            self = .encodeNothing
        }
    }

    internal func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .encodeNothing: return
        case .encodeNull: try container.encodeNil()
        case let .encodeValue(wrapped): try container.encode(wrapped)
        }
    }
}

internal enum ErrorResponse: Error {
    case error(Int, Data?, URLResponse?, Error)
}

internal enum DownloadException: Error {
    case responseDataMissing
    case responseFailed
    case requestMissing
    case requestMissingPath
    case requestMissingURL
}

internal enum DecodableRequestBuilderError: Error {
    case emptyDataResponse
    case nilHTTPResponse
    case unsuccessfulHTTPStatusCode
    case jsonDecoding(DecodingError)
    case generalError(Error)
}

internal class Response<T> {
    internal let statusCode: Int
    internal let header: [String: String]
    internal let body: T

    internal init(statusCode: Int, header: [String: String], body: T) {
        self.statusCode = statusCode
        self.header = header
        self.body = body
    }

    internal convenience init(response: HTTPURLResponse, body: T) {
        let rawHeader = response.allHeaderFields
        var header = [String: String]()
        for (key, value) in rawHeader {
            if let key = key.base as? String, let value = value as? String {
                header[key] = value
            }
        }
        self.init(statusCode: response.statusCode, header: header, body: body)
    }
}

internal final class RequestTask {
    private var lock = NSRecursiveLock()
    private var task: URLSessionTask?

    internal func set(task: URLSessionTask) {
        lock.lock()
        defer { lock.unlock() }
        self.task = task
    }

    internal func cancel() {
        lock.lock()
        defer { lock.unlock() }
        task?.cancel()
        task = nil
    }
}
