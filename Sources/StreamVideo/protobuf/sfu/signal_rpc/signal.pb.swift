//
// Copyright © 2023 Stream.io Inc. All rights reserved.
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

struct Stream_Video_Sfu_Signal_UpdateMuteStatesRequest {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var sessionID: String = String()

    var muteStates: [Stream_Video_Sfu_Signal_TrackMuteState] = []

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}
}

struct Stream_Video_Sfu_Signal_UpdateMuteStatesResponse {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var error: Stream_Video_Sfu_Models_Error {
        get { _error ?? Stream_Video_Sfu_Models_Error() }
        set { _error = newValue }
    }

    /// Returns true if `error` has been explicitly set.
    var hasError: Bool { self._error != nil }
    /// Clears the value of `error`. Subsequent reads from it will return its default value.
    mutating func clearError() { _error = nil }

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}

    fileprivate var _error: Stream_Video_Sfu_Models_Error?
}

struct Stream_Video_Sfu_Signal_TrackMuteState {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var trackType: Stream_Video_Sfu_Models_TrackType = .unspecified

    var muted: Bool = false

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}
}

struct Stream_Video_Sfu_Signal_AudioMuteChanged {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var muted: Bool = false

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}
}

struct Stream_Video_Sfu_Signal_VideoMuteChanged {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var muted: Bool = false

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}
}

struct Stream_Video_Sfu_Signal_UpdateSubscriptionsRequest {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var sessionID: String = String()

    var tracks: [Stream_Video_Sfu_Signal_TrackSubscriptionDetails] = []

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}
}

struct Stream_Video_Sfu_Signal_UpdateSubscriptionsResponse {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var error: Stream_Video_Sfu_Models_Error {
        get { _error ?? Stream_Video_Sfu_Models_Error() }
        set { _error = newValue }
    }

    /// Returns true if `error` has been explicitly set.
    var hasError: Bool { self._error != nil }
    /// Clears the value of `error`. Subsequent reads from it will return its default value.
    mutating func clearError() { _error = nil }

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}

    fileprivate var _error: Stream_Video_Sfu_Models_Error?
}

struct Stream_Video_Sfu_Signal_TrackSubscriptionDetails {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var userID: String = String()

    var sessionID: String = String()

    var trackType: Stream_Video_Sfu_Models_TrackType = .unspecified

    var dimension: Stream_Video_Sfu_Models_VideoDimension {
        get { _dimension ?? Stream_Video_Sfu_Models_VideoDimension() }
        set { _dimension = newValue }
    }

    /// Returns true if `dimension` has been explicitly set.
    var hasDimension: Bool { self._dimension != nil }
    /// Clears the value of `dimension`. Subsequent reads from it will return its default value.
    mutating func clearDimension() { _dimension = nil }

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}

    private var _dimension: Stream_Video_Sfu_Models_VideoDimension?
}

struct Stream_Video_Sfu_Signal_SendAnswerRequest {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var peerType: Stream_Video_Sfu_Models_PeerType = .publisherUnspecified

    var sdp: String = String()

    var sessionID: String = String()

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}
}

struct Stream_Video_Sfu_Signal_SendAnswerResponse {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var error: Stream_Video_Sfu_Models_Error {
        get { _error ?? Stream_Video_Sfu_Models_Error() }
        set { _error = newValue }
    }

    /// Returns true if `error` has been explicitly set.
    var hasError: Bool { self._error != nil }
    /// Clears the value of `error`. Subsequent reads from it will return its default value.
    mutating func clearError() { _error = nil }

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}

    fileprivate var _error: Stream_Video_Sfu_Models_Error?
}

struct Stream_Video_Sfu_Signal_ICETrickleResponse {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var error: Stream_Video_Sfu_Models_Error {
        get { _error ?? Stream_Video_Sfu_Models_Error() }
        set { _error = newValue }
    }

    /// Returns true if `error` has been explicitly set.
    var hasError: Bool { self._error != nil }
    /// Clears the value of `error`. Subsequent reads from it will return its default value.
    mutating func clearError() { _error = nil }

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}

    fileprivate var _error: Stream_Video_Sfu_Models_Error?
}

struct Stream_Video_Sfu_Signal_SetPublisherRequest {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// sdp offer
    var sdp: String = String()

    var sessionID: String = String()

    var tracks: [Stream_Video_Sfu_Models_TrackInfo] = []

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}
}

struct Stream_Video_Sfu_Signal_SetPublisherResponse {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// sdp answer
    var sdp: String = String()

    var sessionID: String = String()

    var iceRestart: Bool = false

    var error: Stream_Video_Sfu_Models_Error {
        get { _error ?? Stream_Video_Sfu_Models_Error() }
        set { _error = newValue }
    }

    /// Returns true if `error` has been explicitly set.
    var hasError: Bool { self._error != nil }
    /// Clears the value of `error`. Subsequent reads from it will return its default value.
    mutating func clearError() { _error = nil }

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}

    fileprivate var _error: Stream_Video_Sfu_Models_Error?
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Stream_Video_Sfu_Signal_UpdateMuteStatesRequest: @unchecked Sendable {}
extension Stream_Video_Sfu_Signal_UpdateMuteStatesResponse: @unchecked Sendable {}
extension Stream_Video_Sfu_Signal_TrackMuteState: @unchecked Sendable {}
extension Stream_Video_Sfu_Signal_AudioMuteChanged: @unchecked Sendable {}
extension Stream_Video_Sfu_Signal_VideoMuteChanged: @unchecked Sendable {}
extension Stream_Video_Sfu_Signal_UpdateSubscriptionsRequest: @unchecked Sendable {}
extension Stream_Video_Sfu_Signal_UpdateSubscriptionsResponse: @unchecked Sendable {}
extension Stream_Video_Sfu_Signal_TrackSubscriptionDetails: @unchecked Sendable {}
extension Stream_Video_Sfu_Signal_SendAnswerRequest: @unchecked Sendable {}
extension Stream_Video_Sfu_Signal_SendAnswerResponse: @unchecked Sendable {}
extension Stream_Video_Sfu_Signal_ICETrickleResponse: @unchecked Sendable {}
extension Stream_Video_Sfu_Signal_SetPublisherRequest: @unchecked Sendable {}
extension Stream_Video_Sfu_Signal_SetPublisherResponse: @unchecked Sendable {}
#endif // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

private let _protobuf_package = "stream.video.sfu.signal"

extension Stream_Video_Sfu_Signal_UpdateMuteStatesRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".UpdateMuteStatesRequest"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .standard(proto: "session_id"),
        3: .standard(proto: "mute_states")
    ]

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try { try decoder.decodeSingularStringField(value: &self.sessionID) }()
            case 3: try { try decoder.decodeRepeatedMessageField(value: &self.muteStates) }()
            default: break
            }
        }
    }

    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if !sessionID.isEmpty {
            try visitor.visitSingularStringField(value: sessionID, fieldNumber: 1)
        }
        if !muteStates.isEmpty {
            try visitor.visitRepeatedMessageField(value: muteStates, fieldNumber: 3)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (
        lhs: Stream_Video_Sfu_Signal_UpdateMuteStatesRequest,
        rhs: Stream_Video_Sfu_Signal_UpdateMuteStatesRequest
    ) -> Bool {
        if lhs.sessionID != rhs.sessionID { return false }
        if lhs.muteStates != rhs.muteStates { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension Stream_Video_Sfu_Signal_UpdateMuteStatesResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".UpdateMuteStatesResponse"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        4: .same(proto: "error")
    ]

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 4: try { try decoder.decodeSingularMessageField(value: &self._error) }()
            default: break
            }
        }
    }

    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every if/case branch local when no optimizations
        // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
        // https://github.com/apple/swift-protobuf/issues/1182
        try { if let v = self._error {
            try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
        } }()
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (
        lhs: Stream_Video_Sfu_Signal_UpdateMuteStatesResponse,
        rhs: Stream_Video_Sfu_Signal_UpdateMuteStatesResponse
    ) -> Bool {
        if lhs._error != rhs._error { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension Stream_Video_Sfu_Signal_TrackMuteState: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".TrackMuteState"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .standard(proto: "track_type"),
        2: .same(proto: "muted")
    ]

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try { try decoder.decodeSingularEnumField(value: &self.trackType) }()
            case 2: try { try decoder.decodeSingularBoolField(value: &self.muted) }()
            default: break
            }
        }
    }

    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if trackType != .unspecified {
            try visitor.visitSingularEnumField(value: trackType, fieldNumber: 1)
        }
        if muted != false {
            try visitor.visitSingularBoolField(value: muted, fieldNumber: 2)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (lhs: Stream_Video_Sfu_Signal_TrackMuteState, rhs: Stream_Video_Sfu_Signal_TrackMuteState) -> Bool {
        if lhs.trackType != rhs.trackType { return false }
        if lhs.muted != rhs.muted { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension Stream_Video_Sfu_Signal_AudioMuteChanged: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".AudioMuteChanged"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .same(proto: "muted")
    ]

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try { try decoder.decodeSingularBoolField(value: &self.muted) }()
            default: break
            }
        }
    }

    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if muted != false {
            try visitor.visitSingularBoolField(value: muted, fieldNumber: 1)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (lhs: Stream_Video_Sfu_Signal_AudioMuteChanged, rhs: Stream_Video_Sfu_Signal_AudioMuteChanged) -> Bool {
        if lhs.muted != rhs.muted { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension Stream_Video_Sfu_Signal_VideoMuteChanged: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".VideoMuteChanged"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        2: .same(proto: "muted")
    ]

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 2: try { try decoder.decodeSingularBoolField(value: &self.muted) }()
            default: break
            }
        }
    }

    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if muted != false {
            try visitor.visitSingularBoolField(value: muted, fieldNumber: 2)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (lhs: Stream_Video_Sfu_Signal_VideoMuteChanged, rhs: Stream_Video_Sfu_Signal_VideoMuteChanged) -> Bool {
        if lhs.muted != rhs.muted { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension Stream_Video_Sfu_Signal_UpdateSubscriptionsRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".UpdateSubscriptionsRequest"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        2: .standard(proto: "session_id"),
        3: .same(proto: "tracks")
    ]

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 2: try { try decoder.decodeSingularStringField(value: &self.sessionID) }()
            case 3: try { try decoder.decodeRepeatedMessageField(value: &self.tracks) }()
            default: break
            }
        }
    }

    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if !sessionID.isEmpty {
            try visitor.visitSingularStringField(value: sessionID, fieldNumber: 2)
        }
        if !tracks.isEmpty {
            try visitor.visitRepeatedMessageField(value: tracks, fieldNumber: 3)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (
        lhs: Stream_Video_Sfu_Signal_UpdateSubscriptionsRequest,
        rhs: Stream_Video_Sfu_Signal_UpdateSubscriptionsRequest
    ) -> Bool {
        if lhs.sessionID != rhs.sessionID { return false }
        if lhs.tracks != rhs.tracks { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension Stream_Video_Sfu_Signal_UpdateSubscriptionsResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".UpdateSubscriptionsResponse"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        4: .same(proto: "error")
    ]

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 4: try { try decoder.decodeSingularMessageField(value: &self._error) }()
            default: break
            }
        }
    }

    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every if/case branch local when no optimizations
        // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
        // https://github.com/apple/swift-protobuf/issues/1182
        try { if let v = self._error {
            try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
        } }()
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (
        lhs: Stream_Video_Sfu_Signal_UpdateSubscriptionsResponse,
        rhs: Stream_Video_Sfu_Signal_UpdateSubscriptionsResponse
    ) -> Bool {
        if lhs._error != rhs._error { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension Stream_Video_Sfu_Signal_TrackSubscriptionDetails: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".TrackSubscriptionDetails"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .standard(proto: "user_id"),
        2: .standard(proto: "session_id"),
        3: .standard(proto: "track_type"),
        4: .same(proto: "dimension")
    ]

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try { try decoder.decodeSingularStringField(value: &self.userID) }()
            case 2: try { try decoder.decodeSingularStringField(value: &self.sessionID) }()
            case 3: try { try decoder.decodeSingularEnumField(value: &self.trackType) }()
            case 4: try { try decoder.decodeSingularMessageField(value: &self._dimension) }()
            default: break
            }
        }
    }

    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every if/case branch local when no optimizations
        // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
        // https://github.com/apple/swift-protobuf/issues/1182
        if !userID.isEmpty {
            try visitor.visitSingularStringField(value: userID, fieldNumber: 1)
        }
        if !sessionID.isEmpty {
            try visitor.visitSingularStringField(value: sessionID, fieldNumber: 2)
        }
        if trackType != .unspecified {
            try visitor.visitSingularEnumField(value: trackType, fieldNumber: 3)
        }
        try { if let v = self._dimension {
            try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
        } }()
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (
        lhs: Stream_Video_Sfu_Signal_TrackSubscriptionDetails,
        rhs: Stream_Video_Sfu_Signal_TrackSubscriptionDetails
    ) -> Bool {
        if lhs.userID != rhs.userID { return false }
        if lhs.sessionID != rhs.sessionID { return false }
        if lhs.trackType != rhs.trackType { return false }
        if lhs._dimension != rhs._dimension { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension Stream_Video_Sfu_Signal_SendAnswerRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".SendAnswerRequest"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .standard(proto: "peer_type"),
        2: .same(proto: "sdp"),
        3: .standard(proto: "session_id")
    ]

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try { try decoder.decodeSingularEnumField(value: &self.peerType) }()
            case 2: try { try decoder.decodeSingularStringField(value: &self.sdp) }()
            case 3: try { try decoder.decodeSingularStringField(value: &self.sessionID) }()
            default: break
            }
        }
    }

    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if peerType != .publisherUnspecified {
            try visitor.visitSingularEnumField(value: peerType, fieldNumber: 1)
        }
        if !sdp.isEmpty {
            try visitor.visitSingularStringField(value: sdp, fieldNumber: 2)
        }
        if !sessionID.isEmpty {
            try visitor.visitSingularStringField(value: sessionID, fieldNumber: 3)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (lhs: Stream_Video_Sfu_Signal_SendAnswerRequest, rhs: Stream_Video_Sfu_Signal_SendAnswerRequest) -> Bool {
        if lhs.peerType != rhs.peerType { return false }
        if lhs.sdp != rhs.sdp { return false }
        if lhs.sessionID != rhs.sessionID { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension Stream_Video_Sfu_Signal_SendAnswerResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".SendAnswerResponse"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        4: .same(proto: "error")
    ]

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 4: try { try decoder.decodeSingularMessageField(value: &self._error) }()
            default: break
            }
        }
    }

    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every if/case branch local when no optimizations
        // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
        // https://github.com/apple/swift-protobuf/issues/1182
        try { if let v = self._error {
            try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
        } }()
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (lhs: Stream_Video_Sfu_Signal_SendAnswerResponse, rhs: Stream_Video_Sfu_Signal_SendAnswerResponse) -> Bool {
        if lhs._error != rhs._error { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension Stream_Video_Sfu_Signal_ICETrickleResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".ICETrickleResponse"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        4: .same(proto: "error")
    ]

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 4: try { try decoder.decodeSingularMessageField(value: &self._error) }()
            default: break
            }
        }
    }

    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every if/case branch local when no optimizations
        // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
        // https://github.com/apple/swift-protobuf/issues/1182
        try { if let v = self._error {
            try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
        } }()
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (lhs: Stream_Video_Sfu_Signal_ICETrickleResponse, rhs: Stream_Video_Sfu_Signal_ICETrickleResponse) -> Bool {
        if lhs._error != rhs._error { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension Stream_Video_Sfu_Signal_SetPublisherRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".SetPublisherRequest"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .same(proto: "sdp"),
        2: .standard(proto: "session_id"),
        3: .same(proto: "tracks")
    ]

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try { try decoder.decodeSingularStringField(value: &self.sdp) }()
            case 2: try { try decoder.decodeSingularStringField(value: &self.sessionID) }()
            case 3: try { try decoder.decodeRepeatedMessageField(value: &self.tracks) }()
            default: break
            }
        }
    }

    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if !sdp.isEmpty {
            try visitor.visitSingularStringField(value: sdp, fieldNumber: 1)
        }
        if !sessionID.isEmpty {
            try visitor.visitSingularStringField(value: sessionID, fieldNumber: 2)
        }
        if !tracks.isEmpty {
            try visitor.visitRepeatedMessageField(value: tracks, fieldNumber: 3)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (lhs: Stream_Video_Sfu_Signal_SetPublisherRequest, rhs: Stream_Video_Sfu_Signal_SetPublisherRequest) -> Bool {
        if lhs.sdp != rhs.sdp { return false }
        if lhs.sessionID != rhs.sessionID { return false }
        if lhs.tracks != rhs.tracks { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension Stream_Video_Sfu_Signal_SetPublisherResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".SetPublisherResponse"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .same(proto: "sdp"),
        2: .standard(proto: "session_id"),
        3: .standard(proto: "ice_restart"),
        4: .same(proto: "error")
    ]

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try { try decoder.decodeSingularStringField(value: &self.sdp) }()
            case 2: try { try decoder.decodeSingularStringField(value: &self.sessionID) }()
            case 3: try { try decoder.decodeSingularBoolField(value: &self.iceRestart) }()
            case 4: try { try decoder.decodeSingularMessageField(value: &self._error) }()
            default: break
            }
        }
    }

    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every if/case branch local when no optimizations
        // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
        // https://github.com/apple/swift-protobuf/issues/1182
        if !sdp.isEmpty {
            try visitor.visitSingularStringField(value: sdp, fieldNumber: 1)
        }
        if !sessionID.isEmpty {
            try visitor.visitSingularStringField(value: sessionID, fieldNumber: 2)
        }
        if iceRestart != false {
            try visitor.visitSingularBoolField(value: iceRestart, fieldNumber: 3)
        }
        try { if let v = self._error {
            try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
        } }()
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (lhs: Stream_Video_Sfu_Signal_SetPublisherResponse, rhs: Stream_Video_Sfu_Signal_SetPublisherResponse) -> Bool {
        if lhs.sdp != rhs.sdp { return false }
        if lhs.sessionID != rhs.sessionID { return false }
        if lhs.iceRestart != rhs.iceRestart { return false }
        if lhs._error != rhs._error { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}
