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

struct Stream_Video_Coordinator_CallV1_CallType {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// The unique name for the call type.
    var name: String = String()

    var settings: Stream_Video_Coordinator_CallV1_CallSettings {
        get { _settings ?? Stream_Video_Coordinator_CallV1_CallSettings() }
        set { _settings = newValue }
    }

    /// Returns true if `settings` has been explicitly set.
    var hasSettings: Bool { self._settings != nil }
    /// Clears the value of `settings`. Subsequent reads from it will return its default value.
    mutating func clearSettings() { _settings = nil }

    var createdAt: SwiftProtobuf.Google_Protobuf_Timestamp {
        get { _createdAt ?? SwiftProtobuf.Google_Protobuf_Timestamp() }
        set { _createdAt = newValue }
    }

    /// Returns true if `createdAt` has been explicitly set.
    var hasCreatedAt: Bool { self._createdAt != nil }
    /// Clears the value of `createdAt`. Subsequent reads from it will return its default value.
    mutating func clearCreatedAt() { _createdAt = nil }

    var updatedAt: SwiftProtobuf.Google_Protobuf_Timestamp {
        get { _updatedAt ?? SwiftProtobuf.Google_Protobuf_Timestamp() }
        set { _updatedAt = newValue }
    }

    /// Returns true if `updatedAt` has been explicitly set.
    var hasUpdatedAt: Bool { self._updatedAt != nil }
    /// Clears the value of `updatedAt`. Subsequent reads from it will return its default value.
    mutating func clearUpdatedAt() { _updatedAt = nil }

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}

    fileprivate var _settings: Stream_Video_Coordinator_CallV1_CallSettings?
    fileprivate var _createdAt: SwiftProtobuf.Google_Protobuf_Timestamp?
    fileprivate var _updatedAt: SwiftProtobuf.Google_Protobuf_Timestamp?
}

struct Stream_Video_Coordinator_CallV1_Call {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// The call type.
    var type: String = String()

    /// The call id.
    var id: String = String()

    /// A concatenation of call type and call id with ":" inbetween
    var callCid: String = String()

    /// The id of the user that created this call.
    var createdByUserID: String = String()

    var customJson: Data = Data()

    /// Call settings overrides that are set explicitly in this call
    /// This set of settings does not include CallType settings
    var settingsOverrides: Stream_Video_Coordinator_CallV1_CallSettings {
        get { _settingsOverrides ?? Stream_Video_Coordinator_CallV1_CallSettings() }
        set { _settingsOverrides = newValue }
    }

    /// Returns true if `settingsOverrides` has been explicitly set.
    var hasSettingsOverrides: Bool { self._settingsOverrides != nil }
    /// Clears the value of `settingsOverrides`. Subsequent reads from it will return its default value.
    mutating func clearSettingsOverrides() { _settingsOverrides = nil }

    var createdAt: SwiftProtobuf.Google_Protobuf_Timestamp {
        get { _createdAt ?? SwiftProtobuf.Google_Protobuf_Timestamp() }
        set { _createdAt = newValue }
    }

    /// Returns true if `createdAt` has been explicitly set.
    var hasCreatedAt: Bool { self._createdAt != nil }
    /// Clears the value of `createdAt`. Subsequent reads from it will return its default value.
    mutating func clearCreatedAt() { _createdAt = nil }

    var updatedAt: SwiftProtobuf.Google_Protobuf_Timestamp {
        get { _updatedAt ?? SwiftProtobuf.Google_Protobuf_Timestamp() }
        set { _updatedAt = newValue }
    }

    /// Returns true if `updatedAt` has been explicitly set.
    var hasUpdatedAt: Bool { self._updatedAt != nil }
    /// Clears the value of `updatedAt`. Subsequent reads from it will return its default value.
    mutating func clearUpdatedAt() { _updatedAt = nil }

    /// If true, the call is currently recording
    var recordingActive: Bool = false

    /// If true, the call is currently broadcasting
    var broadcastingActive: Bool = false

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}

    private var _settingsOverrides: Stream_Video_Coordinator_CallV1_CallSettings?
    fileprivate var _createdAt: SwiftProtobuf.Google_Protobuf_Timestamp?
    fileprivate var _updatedAt: SwiftProtobuf.Google_Protobuf_Timestamp?
}

/// CallDetails contains call additional details
struct Stream_Video_Coordinator_CallV1_CallDetails {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Call settings_overrides merged with CallType settings
    var settings: Stream_Video_Coordinator_CallV1_CallSettings {
        get { _settings ?? Stream_Video_Coordinator_CallV1_CallSettings() }
        set { _settings = newValue }
    }

    /// Returns true if `settings` has been explicitly set.
    var hasSettings: Bool { self._settings != nil }
    /// Clears the value of `settings`. Subsequent reads from it will return its default value.
    mutating func clearSettings() { _settings = nil }

    /// Ordered list of member user IDs
    var memberUserIds: [String] = []

    /// Call members map indexed by Member.user_id
    /// Cannot have more than 100 members
    var members: [String: Stream_Video_Coordinator_MemberV1_Member] = [:]

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}

    fileprivate var _settings: Stream_Video_Coordinator_CallV1_CallSettings?
}

/// CallSettings contains all options available to change for a CallType
/// Settings can also be set on the call level where they will be merged with call options using `json.Merge`
/// To make sure options can be overridden on the call level, all underlying option fields should be optional
struct Stream_Video_Coordinator_CallV1_CallSettings {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var recording: Stream_Video_Coordinator_CallV1_RecordingSettings {
        get { _recording ?? Stream_Video_Coordinator_CallV1_RecordingSettings() }
        set { _recording = newValue }
    }

    /// Returns true if `recording` has been explicitly set.
    var hasRecording: Bool { self._recording != nil }
    /// Clears the value of `recording`. Subsequent reads from it will return its default value.
    mutating func clearRecording() { _recording = nil }

    var broadcasting: Stream_Video_Coordinator_CallV1_BroadcastingSettings {
        get { _broadcasting ?? Stream_Video_Coordinator_CallV1_BroadcastingSettings() }
        set { _broadcasting = newValue }
    }

    /// Returns true if `broadcasting` has been explicitly set.
    var hasBroadcasting: Bool { self._broadcasting != nil }
    /// Clears the value of `broadcasting`. Subsequent reads from it will return its default value.
    mutating func clearBroadcasting() { _broadcasting = nil }

    var geofencing: Stream_Video_Coordinator_CallV1_GeofencingSettings {
        get { _geofencing ?? Stream_Video_Coordinator_CallV1_GeofencingSettings() }
        set { _geofencing = newValue }
    }

    /// Returns true if `geofencing` has been explicitly set.
    var hasGeofencing: Bool { self._geofencing != nil }
    /// Clears the value of `geofencing`. Subsequent reads from it will return its default value.
    mutating func clearGeofencing() { _geofencing = nil }

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}

    fileprivate var _recording: Stream_Video_Coordinator_CallV1_RecordingSettings?
    fileprivate var _broadcasting: Stream_Video_Coordinator_CallV1_BroadcastingSettings?
    fileprivate var _geofencing: Stream_Video_Coordinator_CallV1_GeofencingSettings?
}

/// Contains all settings regarding to call recording
struct Stream_Video_Coordinator_CallV1_RecordingSettings {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Whether recording feature is enabled
    /// Default: false
    var enabled: Bool {
        get { _enabled ?? false }
        set { _enabled = newValue }
    }

    /// Returns true if `enabled` has been explicitly set.
    var hasEnabled: Bool { self._enabled != nil }
    /// Clears the value of `enabled`. Subsequent reads from it will return its default value.
    mutating func clearEnabled() { _enabled = nil }

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}

    fileprivate var _enabled: Bool?
}

/// Contains all settings regarding to call broadcasting
struct Stream_Video_Coordinator_CallV1_BroadcastingSettings {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Whether broadcasting feature is enabled
    /// Default: false
    var enabled: Bool {
        get { _enabled ?? false }
        set { _enabled = newValue }
    }

    /// Returns true if `enabled` has been explicitly set.
    var hasEnabled: Bool { self._enabled != nil }
    /// Clears the value of `enabled`. Subsequent reads from it will return its default value.
    mutating func clearEnabled() { _enabled = nil }

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}

    fileprivate var _enabled: Bool?
}

/// Contains all settings regarding to call geofencing
/// Initialization of geofencing enables the feature
struct Stream_Video_Coordinator_CallV1_GeofencingSettings {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Names of the geofences that are selected
    var names: [String] = []

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Stream_Video_Coordinator_CallV1_CallType: @unchecked Sendable {}
extension Stream_Video_Coordinator_CallV1_Call: @unchecked Sendable {}
extension Stream_Video_Coordinator_CallV1_CallDetails: @unchecked Sendable {}
extension Stream_Video_Coordinator_CallV1_CallSettings: @unchecked Sendable {}
extension Stream_Video_Coordinator_CallV1_RecordingSettings: @unchecked Sendable {}
extension Stream_Video_Coordinator_CallV1_BroadcastingSettings: @unchecked Sendable {}
extension Stream_Video_Coordinator_CallV1_GeofencingSettings: @unchecked Sendable {}
#endif // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

private let _protobuf_package = "stream.video.coordinator.call_v1"

extension Stream_Video_Coordinator_CallV1_CallType: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".CallType"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .same(proto: "name"),
        2: .same(proto: "settings"),
        3: .standard(proto: "created_at"),
        4: .standard(proto: "updated_at")
    ]

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
            case 2: try { try decoder.decodeSingularMessageField(value: &self._settings) }()
            case 3: try { try decoder.decodeSingularMessageField(value: &self._createdAt) }()
            case 4: try { try decoder.decodeSingularMessageField(value: &self._updatedAt) }()
            default: break
            }
        }
    }

    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every if/case branch local when no optimizations
        // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
        // https://github.com/apple/swift-protobuf/issues/1182
        if !name.isEmpty {
            try visitor.visitSingularStringField(value: name, fieldNumber: 1)
        }
        try { if let v = self._settings {
            try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
        } }()
        try { if let v = self._createdAt {
            try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
        } }()
        try { if let v = self._updatedAt {
            try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
        } }()
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (lhs: Stream_Video_Coordinator_CallV1_CallType, rhs: Stream_Video_Coordinator_CallV1_CallType) -> Bool {
        if lhs.name != rhs.name { return false }
        if lhs._settings != rhs._settings { return false }
        if lhs._createdAt != rhs._createdAt { return false }
        if lhs._updatedAt != rhs._updatedAt { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension Stream_Video_Coordinator_CallV1_Call: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".Call"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .same(proto: "type"),
        2: .same(proto: "id"),
        3: .standard(proto: "call_cid"),
        4: .standard(proto: "created_by_user_id"),
        5: .standard(proto: "custom_json"),
        6: .standard(proto: "settings_overrides"),
        7: .standard(proto: "created_at"),
        8: .standard(proto: "updated_at"),
        9: .standard(proto: "recording_active"),
        10: .standard(proto: "broadcasting_active")
    ]

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try { try decoder.decodeSingularStringField(value: &self.type) }()
            case 2: try { try decoder.decodeSingularStringField(value: &self.id) }()
            case 3: try { try decoder.decodeSingularStringField(value: &self.callCid) }()
            case 4: try { try decoder.decodeSingularStringField(value: &self.createdByUserID) }()
            case 5: try { try decoder.decodeSingularBytesField(value: &self.customJson) }()
            case 6: try { try decoder.decodeSingularMessageField(value: &self._settingsOverrides) }()
            case 7: try { try decoder.decodeSingularMessageField(value: &self._createdAt) }()
            case 8: try { try decoder.decodeSingularMessageField(value: &self._updatedAt) }()
            case 9: try { try decoder.decodeSingularBoolField(value: &self.recordingActive) }()
            case 10: try { try decoder.decodeSingularBoolField(value: &self.broadcastingActive) }()
            default: break
            }
        }
    }

    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every if/case branch local when no optimizations
        // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
        // https://github.com/apple/swift-protobuf/issues/1182
        if !type.isEmpty {
            try visitor.visitSingularStringField(value: type, fieldNumber: 1)
        }
        if !id.isEmpty {
            try visitor.visitSingularStringField(value: id, fieldNumber: 2)
        }
        if !callCid.isEmpty {
            try visitor.visitSingularStringField(value: callCid, fieldNumber: 3)
        }
        if !createdByUserID.isEmpty {
            try visitor.visitSingularStringField(value: createdByUserID, fieldNumber: 4)
        }
        if !customJson.isEmpty {
            try visitor.visitSingularBytesField(value: customJson, fieldNumber: 5)
        }
        try { if let v = self._settingsOverrides {
            try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
        } }()
        try { if let v = self._createdAt {
            try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
        } }()
        try { if let v = self._updatedAt {
            try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
        } }()
        if recordingActive != false {
            try visitor.visitSingularBoolField(value: recordingActive, fieldNumber: 9)
        }
        if broadcastingActive != false {
            try visitor.visitSingularBoolField(value: broadcastingActive, fieldNumber: 10)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (lhs: Stream_Video_Coordinator_CallV1_Call, rhs: Stream_Video_Coordinator_CallV1_Call) -> Bool {
        if lhs.type != rhs.type { return false }
        if lhs.id != rhs.id { return false }
        if lhs.callCid != rhs.callCid { return false }
        if lhs.createdByUserID != rhs.createdByUserID { return false }
        if lhs.customJson != rhs.customJson { return false }
        if lhs._settingsOverrides != rhs._settingsOverrides { return false }
        if lhs._createdAt != rhs._createdAt { return false }
        if lhs._updatedAt != rhs._updatedAt { return false }
        if lhs.recordingActive != rhs.recordingActive { return false }
        if lhs.broadcastingActive != rhs.broadcastingActive { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension Stream_Video_Coordinator_CallV1_CallDetails: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".CallDetails"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .same(proto: "settings"),
        2: .standard(proto: "member_user_ids"),
        3: .same(proto: "members")
    ]

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try { try decoder.decodeSingularMessageField(value: &self._settings) }()
            case 2: try { try decoder.decodeRepeatedStringField(value: &self.memberUserIds) }()
            case 3: try { try decoder.decodeMapField(
                    fieldType: SwiftProtobuf._ProtobufMessageMap<
                        SwiftProtobuf.ProtobufString,
                        Stream_Video_Coordinator_MemberV1_Member
                    >.self,
                    value: &self.members
                ) }()
            default: break
            }
        }
    }

    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every if/case branch local when no optimizations
        // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
        // https://github.com/apple/swift-protobuf/issues/1182
        try { if let v = self._settings {
            try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
        } }()
        if !memberUserIds.isEmpty {
            try visitor.visitRepeatedStringField(value: memberUserIds, fieldNumber: 2)
        }
        if !members.isEmpty {
            try visitor.visitMapField(
                fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString, Stream_Video_Coordinator_MemberV1_Member>
                    .self,
                value: members,
                fieldNumber: 3
            )
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (lhs: Stream_Video_Coordinator_CallV1_CallDetails, rhs: Stream_Video_Coordinator_CallV1_CallDetails) -> Bool {
        if lhs._settings != rhs._settings { return false }
        if lhs.memberUserIds != rhs.memberUserIds { return false }
        if lhs.members != rhs.members { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension Stream_Video_Coordinator_CallV1_CallSettings: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".CallSettings"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .same(proto: "recording"),
        2: .same(proto: "broadcasting"),
        3: .same(proto: "geofencing")
    ]

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try { try decoder.decodeSingularMessageField(value: &self._recording) }()
            case 2: try { try decoder.decodeSingularMessageField(value: &self._broadcasting) }()
            case 3: try { try decoder.decodeSingularMessageField(value: &self._geofencing) }()
            default: break
            }
        }
    }

    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every if/case branch local when no optimizations
        // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
        // https://github.com/apple/swift-protobuf/issues/1182
        try { if let v = self._recording {
            try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
        } }()
        try { if let v = self._broadcasting {
            try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
        } }()
        try { if let v = self._geofencing {
            try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
        } }()
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (lhs: Stream_Video_Coordinator_CallV1_CallSettings, rhs: Stream_Video_Coordinator_CallV1_CallSettings) -> Bool {
        if lhs._recording != rhs._recording { return false }
        if lhs._broadcasting != rhs._broadcasting { return false }
        if lhs._geofencing != rhs._geofencing { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension Stream_Video_Coordinator_CallV1_RecordingSettings: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".RecordingSettings"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .same(proto: "enabled")
    ]

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try { try decoder.decodeSingularBoolField(value: &self._enabled) }()
            default: break
            }
        }
    }

    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every if/case branch local when no optimizations
        // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
        // https://github.com/apple/swift-protobuf/issues/1182
        try { if let v = self._enabled {
            try visitor.visitSingularBoolField(value: v, fieldNumber: 1)
        } }()
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (
        lhs: Stream_Video_Coordinator_CallV1_RecordingSettings,
        rhs: Stream_Video_Coordinator_CallV1_RecordingSettings
    ) -> Bool {
        if lhs._enabled != rhs._enabled { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension Stream_Video_Coordinator_CallV1_BroadcastingSettings: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".BroadcastingSettings"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .same(proto: "enabled")
    ]

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try { try decoder.decodeSingularBoolField(value: &self._enabled) }()
            default: break
            }
        }
    }

    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every if/case branch local when no optimizations
        // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
        // https://github.com/apple/swift-protobuf/issues/1182
        try { if let v = self._enabled {
            try visitor.visitSingularBoolField(value: v, fieldNumber: 1)
        } }()
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (
        lhs: Stream_Video_Coordinator_CallV1_BroadcastingSettings,
        rhs: Stream_Video_Coordinator_CallV1_BroadcastingSettings
    ) -> Bool {
        if lhs._enabled != rhs._enabled { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension Stream_Video_Coordinator_CallV1_GeofencingSettings: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".GeofencingSettings"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .same(proto: "names")
    ]

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try { try decoder.decodeRepeatedStringField(value: &self.names) }()
            default: break
            }
        }
    }

    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if !names.isEmpty {
            try visitor.visitRepeatedStringField(value: names, fieldNumber: 1)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (
        lhs: Stream_Video_Coordinator_CallV1_GeofencingSettings,
        rhs: Stream_Video_Coordinator_CallV1_GeofencingSettings
    ) -> Bool {
        if lhs.names != rhs.names { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}
