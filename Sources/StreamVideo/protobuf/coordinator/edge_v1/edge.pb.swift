//
// Copyright © 2022 Stream.io Inc. All rights reserved.
//

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
private struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
    struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
    typealias Version = _2
}

struct Stream_Video_Coordinator_EdgeV1_LatencyEndpoint {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var id: String = String()

    var url: String = String()

    var proximity: Double = 0

    var latency: Double = 0

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}
}

struct Stream_Video_Coordinator_EdgeV1_Server {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var id: String = String()

    var url: String = String()

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}
}

struct Stream_Video_Coordinator_EdgeV1_Credentials {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Edge server to connect to
    var server: Stream_Video_Coordinator_EdgeV1_Server {
        get { _server ?? Stream_Video_Coordinator_EdgeV1_Server() }
        set { _server = newValue }
    }

    /// Returns true if `server` has been explicitly set.
    var hasServer: Bool { self._server != nil }
    /// Clears the value of `server`. Subsequent reads from it will return its default value.
    mutating func clearServer() { _server = nil }

    /// The auth token needed to authenticate to the edge server
    var token: String = String()

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}

    private var _server: Stream_Video_Coordinator_EdgeV1_Server?
}

// TODO: better name for this
struct Stream_Video_Coordinator_EdgeV1_LatencyMeasurementClaim {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var endpoints: [Stream_Video_Coordinator_EdgeV1_LatencyEndpoint] = []

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}
}

struct Stream_Video_Coordinator_EdgeV1_LatencyMeasurements {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var measurements: [String: Stream_Video_Coordinator_EdgeV1_Latency] = [:]

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}
}

struct Stream_Video_Coordinator_EdgeV1_Latency {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var measurementsSeconds: [Double] = []

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}
}

/// Edges are where we deploy video servers
struct Stream_Video_Coordinator_EdgeV1_Edge {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var name: String = String()

    var latencyURL: String = String()

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}
}

/// Edges are where we deploy video servers
struct Stream_Video_Coordinator_EdgeV1_EdgeServer {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var url: String = String()

    var unknownFields = SwiftProtobuf.UnknownStorage()

    /// Returns information about the server location
    struct Coordinates {
        // SwiftProtobuf.Message conformance is added in an extension below. See the
        // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
        // methods supported on all messages.

        var lat: Float = 0

        var long: Float = 0

        var unknownFields = SwiftProtobuf.UnknownStorage()

        init() {}
    }

    init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Stream_Video_Coordinator_EdgeV1_LatencyEndpoint: @unchecked Sendable {}
extension Stream_Video_Coordinator_EdgeV1_Server: @unchecked Sendable {}
extension Stream_Video_Coordinator_EdgeV1_Credentials: @unchecked Sendable {}
extension Stream_Video_Coordinator_EdgeV1_LatencyMeasurementClaim: @unchecked Sendable {}
extension Stream_Video_Coordinator_EdgeV1_LatencyMeasurements: @unchecked Sendable {}
extension Stream_Video_Coordinator_EdgeV1_Latency: @unchecked Sendable {}
extension Stream_Video_Coordinator_EdgeV1_Edge: @unchecked Sendable {}
extension Stream_Video_Coordinator_EdgeV1_EdgeServer: @unchecked Sendable {}
extension Stream_Video_Coordinator_EdgeV1_EdgeServer.Coordinates: @unchecked Sendable {}
#endif // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

private let _protobuf_package = "stream.video.coordinator.edge_v1"

extension Stream_Video_Coordinator_EdgeV1_LatencyEndpoint: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".LatencyEndpoint"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .same(proto: "id"),
        2: .same(proto: "url"),
        3: .same(proto: "proximity"),
        4: .same(proto: "latency")
    ]

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try { try decoder.decodeSingularStringField(value: &self.id) }()
            case 2: try { try decoder.decodeSingularStringField(value: &self.url) }()
            case 3: try { try decoder.decodeSingularDoubleField(value: &self.proximity) }()
            case 4: try { try decoder.decodeSingularDoubleField(value: &self.latency) }()
            default: break
            }
        }
    }

    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if !id.isEmpty {
            try visitor.visitSingularStringField(value: id, fieldNumber: 1)
        }
        if !url.isEmpty {
            try visitor.visitSingularStringField(value: url, fieldNumber: 2)
        }
        if proximity != 0 {
            try visitor.visitSingularDoubleField(value: proximity, fieldNumber: 3)
        }
        if latency != 0 {
            try visitor.visitSingularDoubleField(value: latency, fieldNumber: 4)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (
        lhs: Stream_Video_Coordinator_EdgeV1_LatencyEndpoint,
        rhs: Stream_Video_Coordinator_EdgeV1_LatencyEndpoint
    ) -> Bool {
        if lhs.id != rhs.id { return false }
        if lhs.url != rhs.url { return false }
        if lhs.proximity != rhs.proximity { return false }
        if lhs.latency != rhs.latency { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension Stream_Video_Coordinator_EdgeV1_Server: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".Server"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .same(proto: "id"),
        2: .same(proto: "url")
    ]

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try { try decoder.decodeSingularStringField(value: &self.id) }()
            case 2: try { try decoder.decodeSingularStringField(value: &self.url) }()
            default: break
            }
        }
    }

    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if !id.isEmpty {
            try visitor.visitSingularStringField(value: id, fieldNumber: 1)
        }
        if !url.isEmpty {
            try visitor.visitSingularStringField(value: url, fieldNumber: 2)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (lhs: Stream_Video_Coordinator_EdgeV1_Server, rhs: Stream_Video_Coordinator_EdgeV1_Server) -> Bool {
        if lhs.id != rhs.id { return false }
        if lhs.url != rhs.url { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension Stream_Video_Coordinator_EdgeV1_Credentials: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".Credentials"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .same(proto: "server"),
        2: .same(proto: "token")
    ]

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try { try decoder.decodeSingularMessageField(value: &self._server) }()
            case 2: try { try decoder.decodeSingularStringField(value: &self.token) }()
            default: break
            }
        }
    }

    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every if/case branch local when no optimizations
        // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
        // https://github.com/apple/swift-protobuf/issues/1182
        try { if let v = self._server {
            try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
        } }()
        if !token.isEmpty {
            try visitor.visitSingularStringField(value: token, fieldNumber: 2)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (lhs: Stream_Video_Coordinator_EdgeV1_Credentials, rhs: Stream_Video_Coordinator_EdgeV1_Credentials) -> Bool {
        if lhs._server != rhs._server { return false }
        if lhs.token != rhs.token { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension Stream_Video_Coordinator_EdgeV1_LatencyMeasurementClaim: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".LatencyMeasurementClaim"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .same(proto: "endpoints")
    ]

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try { try decoder.decodeRepeatedMessageField(value: &self.endpoints) }()
            default: break
            }
        }
    }

    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if !endpoints.isEmpty {
            try visitor.visitRepeatedMessageField(value: endpoints, fieldNumber: 1)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (
        lhs: Stream_Video_Coordinator_EdgeV1_LatencyMeasurementClaim,
        rhs: Stream_Video_Coordinator_EdgeV1_LatencyMeasurementClaim
    ) -> Bool {
        if lhs.endpoints != rhs.endpoints { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension Stream_Video_Coordinator_EdgeV1_LatencyMeasurements: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".LatencyMeasurements"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .same(proto: "measurements")
    ]

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try { try decoder.decodeMapField(
                    fieldType: SwiftProtobuf._ProtobufMessageMap<
                        SwiftProtobuf.ProtobufString,
                        Stream_Video_Coordinator_EdgeV1_Latency
                    >.self,
                    value: &self.measurements
                ) }()
            default: break
            }
        }
    }

    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if !measurements.isEmpty {
            try visitor.visitMapField(
                fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString, Stream_Video_Coordinator_EdgeV1_Latency>
                    .self,
                value: measurements,
                fieldNumber: 1
            )
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (
        lhs: Stream_Video_Coordinator_EdgeV1_LatencyMeasurements,
        rhs: Stream_Video_Coordinator_EdgeV1_LatencyMeasurements
    ) -> Bool {
        if lhs.measurements != rhs.measurements { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension Stream_Video_Coordinator_EdgeV1_Latency: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".Latency"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .standard(proto: "measurements_seconds")
    ]

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try { try decoder.decodeRepeatedDoubleField(value: &self.measurementsSeconds) }()
            default: break
            }
        }
    }

    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if !measurementsSeconds.isEmpty {
            try visitor.visitPackedDoubleField(value: measurementsSeconds, fieldNumber: 1)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (lhs: Stream_Video_Coordinator_EdgeV1_Latency, rhs: Stream_Video_Coordinator_EdgeV1_Latency) -> Bool {
        if lhs.measurementsSeconds != rhs.measurementsSeconds { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension Stream_Video_Coordinator_EdgeV1_Edge: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".Edge"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .same(proto: "name"),
        2: .standard(proto: "latency_url")
    ]

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
            case 2: try { try decoder.decodeSingularStringField(value: &self.latencyURL) }()
            default: break
            }
        }
    }

    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if !name.isEmpty {
            try visitor.visitSingularStringField(value: name, fieldNumber: 1)
        }
        if !latencyURL.isEmpty {
            try visitor.visitSingularStringField(value: latencyURL, fieldNumber: 2)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (lhs: Stream_Video_Coordinator_EdgeV1_Edge, rhs: Stream_Video_Coordinator_EdgeV1_Edge) -> Bool {
        if lhs.name != rhs.name { return false }
        if lhs.latencyURL != rhs.latencyURL { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension Stream_Video_Coordinator_EdgeV1_EdgeServer: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".EdgeServer"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .same(proto: "url")
    ]

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try { try decoder.decodeSingularStringField(value: &self.url) }()
            default: break
            }
        }
    }

    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if !url.isEmpty {
            try visitor.visitSingularStringField(value: url, fieldNumber: 1)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (lhs: Stream_Video_Coordinator_EdgeV1_EdgeServer, rhs: Stream_Video_Coordinator_EdgeV1_EdgeServer) -> Bool {
        if lhs.url != rhs.url { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension Stream_Video_Coordinator_EdgeV1_EdgeServer.Coordinates: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = Stream_Video_Coordinator_EdgeV1_EdgeServer.protoMessageName + ".Coordinates"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .same(proto: "lat"),
        2: .same(proto: "long")
    ]

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try { try decoder.decodeSingularFloatField(value: &self.lat) }()
            case 2: try { try decoder.decodeSingularFloatField(value: &self.long) }()
            default: break
            }
        }
    }

    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if lat != 0 {
            try visitor.visitSingularFloatField(value: lat, fieldNumber: 1)
        }
        if long != 0 {
            try visitor.visitSingularFloatField(value: long, fieldNumber: 2)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (
        lhs: Stream_Video_Coordinator_EdgeV1_EdgeServer.Coordinates,
        rhs: Stream_Video_Coordinator_EdgeV1_EdgeServer.Coordinates
    ) -> Bool {
        if lhs.lat != rhs.lat { return false }
        if lhs.long != rhs.long { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}