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

/// Keep in sync with stream.config.push.PushProvider
struct Stream_Video_Coordinator_PushV1_PushProvider {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var id: String = String()

    var disabled: Bool = false

    var disabledReason: String = String()

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

    var credentials: Stream_Video_Coordinator_PushV1_PushProvider.OneOf_Credentials?

    var apn: Stream_Video_Coordinator_PushV1_ApnCredentials {
        get {
            if case let .apn(v)? = credentials { return v }
            return Stream_Video_Coordinator_PushV1_ApnCredentials()
        }
        set { credentials = .apn(newValue) }
    }

    var firebase: Stream_Video_Coordinator_PushV1_FirebaseCredentials {
        get {
            if case let .firebase(v)? = credentials { return v }
            return Stream_Video_Coordinator_PushV1_FirebaseCredentials()
        }
        set { credentials = .firebase(newValue) }
    }

    var huawei: Stream_Video_Coordinator_PushV1_HuaweiCredentials {
        get {
            if case let .huawei(v)? = credentials { return v }
            return Stream_Video_Coordinator_PushV1_HuaweiCredentials()
        }
        set { credentials = .huawei(newValue) }
    }

    var xiaomi: Stream_Video_Coordinator_PushV1_XiaomiCredentials {
        get {
            if case let .xiaomi(v)? = credentials { return v }
            return Stream_Video_Coordinator_PushV1_XiaomiCredentials()
        }
        set { credentials = .xiaomi(newValue) }
    }

    var unknownFields = SwiftProtobuf.UnknownStorage()

    enum OneOf_Credentials: Equatable {
        case apn(Stream_Video_Coordinator_PushV1_ApnCredentials)
        case firebase(Stream_Video_Coordinator_PushV1_FirebaseCredentials)
        case huawei(Stream_Video_Coordinator_PushV1_HuaweiCredentials)
        case xiaomi(Stream_Video_Coordinator_PushV1_XiaomiCredentials)

        #if !swift(>=4.1)
        static func == (
            lhs: Stream_Video_Coordinator_PushV1_PushProvider.OneOf_Credentials,
            rhs: Stream_Video_Coordinator_PushV1_PushProvider.OneOf_Credentials
        ) -> Bool {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch (lhs, rhs) {
            case (.apn, .apn): return {
                    guard case let .apn(l) = lhs, case let .apn(r) = rhs else { preconditionFailure() }
                    return l == r
                }()
            case (.firebase, .firebase): return {
                    guard case let .firebase(l) = lhs, case let .firebase(r) = rhs else { preconditionFailure() }
                    return l == r
                }()
            case (.huawei, .huawei): return {
                    guard case let .huawei(l) = lhs, case let .huawei(r) = rhs else { preconditionFailure() }
                    return l == r
                }()
            case (.xiaomi, .xiaomi): return {
                    guard case let .xiaomi(l) = lhs, case let .xiaomi(r) = rhs else { preconditionFailure() }
                    return l == r
                }()
            default: return false
            }
        }
        #endif
    }

    init() {}

    fileprivate var _createdAt: SwiftProtobuf.Google_Protobuf_Timestamp?
    fileprivate var _updatedAt: SwiftProtobuf.Google_Protobuf_Timestamp?
}

struct Stream_Video_Coordinator_PushV1_ApnCredentials {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var certificateP12: Data = Data()

    var topic: String = String()

    var teamID: String = String()

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}
}

struct Stream_Video_Coordinator_PushV1_FirebaseCredentials {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var credentials: String = String()

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}
}

struct Stream_Video_Coordinator_PushV1_HuaweiCredentials {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var id: String = String()

    var secret: String = String()

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}
}

struct Stream_Video_Coordinator_PushV1_XiaomiCredentials {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var packageName: String = String()

    var secret: String = String()

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}
}

struct Stream_Video_Coordinator_PushV1_Device {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var userID: String = String()

    var id: String = String()

    var disabled: Bool = false

    var disabledReason: String = String()

    var pushProviderName: String = String()

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

    fileprivate var _createdAt: SwiftProtobuf.Google_Protobuf_Timestamp?
    fileprivate var _updatedAt: SwiftProtobuf.Google_Protobuf_Timestamp?
}

/// An object that is used in requests to create or update a device
struct Stream_Video_Coordinator_PushV1_DeviceInput {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Unique device ID, specific to a provider
    var id: String = String()

    /// Push provider ID, as configured in application push notification settings
    /// Refers to a set of credentials and templates of one of the supported push providers
    var pushProviderID: String = String()

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Stream_Video_Coordinator_PushV1_PushProvider: @unchecked Sendable {}
extension Stream_Video_Coordinator_PushV1_PushProvider.OneOf_Credentials: @unchecked Sendable {}
extension Stream_Video_Coordinator_PushV1_ApnCredentials: @unchecked Sendable {}
extension Stream_Video_Coordinator_PushV1_FirebaseCredentials: @unchecked Sendable {}
extension Stream_Video_Coordinator_PushV1_HuaweiCredentials: @unchecked Sendable {}
extension Stream_Video_Coordinator_PushV1_XiaomiCredentials: @unchecked Sendable {}
extension Stream_Video_Coordinator_PushV1_Device: @unchecked Sendable {}
extension Stream_Video_Coordinator_PushV1_DeviceInput: @unchecked Sendable {}
#endif // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

private let _protobuf_package = "stream.video.coordinator.push_v1"

extension Stream_Video_Coordinator_PushV1_PushProvider: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".PushProvider"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .same(proto: "id"),
        2: .same(proto: "disabled"),
        3: .standard(proto: "disabled_reason"),
        4: .standard(proto: "created_at"),
        5: .standard(proto: "updated_at"),
        6: .same(proto: "apn"),
        7: .same(proto: "firebase"),
        8: .same(proto: "huawei"),
        9: .same(proto: "xiaomi")
    ]

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try { try decoder.decodeSingularStringField(value: &self.id) }()
            case 2: try { try decoder.decodeSingularBoolField(value: &self.disabled) }()
            case 3: try { try decoder.decodeSingularStringField(value: &self.disabledReason) }()
            case 4: try { try decoder.decodeSingularMessageField(value: &self._createdAt) }()
            case 5: try { try decoder.decodeSingularMessageField(value: &self._updatedAt) }()
            case 6: try {
                    var v: Stream_Video_Coordinator_PushV1_ApnCredentials?
                    var hadOneofValue = false
                    if let current = self.credentials {
                        hadOneofValue = true
                        if case let .apn(m) = current { v = m }
                    }
                    try decoder.decodeSingularMessageField(value: &v)
                    if let v = v {
                        if hadOneofValue { try decoder.handleConflictingOneOf() }
                        self.credentials = .apn(v)
                    }
                }()
            case 7: try {
                    var v: Stream_Video_Coordinator_PushV1_FirebaseCredentials?
                    var hadOneofValue = false
                    if let current = self.credentials {
                        hadOneofValue = true
                        if case let .firebase(m) = current { v = m }
                    }
                    try decoder.decodeSingularMessageField(value: &v)
                    if let v = v {
                        if hadOneofValue { try decoder.handleConflictingOneOf() }
                        self.credentials = .firebase(v)
                    }
                }()
            case 8: try {
                    var v: Stream_Video_Coordinator_PushV1_HuaweiCredentials?
                    var hadOneofValue = false
                    if let current = self.credentials {
                        hadOneofValue = true
                        if case let .huawei(m) = current { v = m }
                    }
                    try decoder.decodeSingularMessageField(value: &v)
                    if let v = v {
                        if hadOneofValue { try decoder.handleConflictingOneOf() }
                        self.credentials = .huawei(v)
                    }
                }()
            case 9: try {
                    var v: Stream_Video_Coordinator_PushV1_XiaomiCredentials?
                    var hadOneofValue = false
                    if let current = self.credentials {
                        hadOneofValue = true
                        if case let .xiaomi(m) = current { v = m }
                    }
                    try decoder.decodeSingularMessageField(value: &v)
                    if let v = v {
                        if hadOneofValue { try decoder.handleConflictingOneOf() }
                        self.credentials = .xiaomi(v)
                    }
                }()
            default: break
            }
        }
    }

    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every if/case branch local when no optimizations
        // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
        // https://github.com/apple/swift-protobuf/issues/1182
        if !id.isEmpty {
            try visitor.visitSingularStringField(value: id, fieldNumber: 1)
        }
        if disabled != false {
            try visitor.visitSingularBoolField(value: disabled, fieldNumber: 2)
        }
        if !disabledReason.isEmpty {
            try visitor.visitSingularStringField(value: disabledReason, fieldNumber: 3)
        }
        try { if let v = self._createdAt {
            try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
        } }()
        try { if let v = self._updatedAt {
            try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
        } }()
        switch credentials {
        case .apn?: try {
                guard case let .apn(v)? = self.credentials else { preconditionFailure() }
                try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
            }()
        case .firebase?: try {
                guard case let .firebase(v)? = self.credentials else { preconditionFailure() }
                try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
            }()
        case .huawei?: try {
                guard case let .huawei(v)? = self.credentials else { preconditionFailure() }
                try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
            }()
        case .xiaomi?: try {
                guard case let .xiaomi(v)? = self.credentials else { preconditionFailure() }
                try visitor.visitSingularMessageField(value: v, fieldNumber: 9)
            }()
        case nil: break
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (lhs: Stream_Video_Coordinator_PushV1_PushProvider, rhs: Stream_Video_Coordinator_PushV1_PushProvider) -> Bool {
        if lhs.id != rhs.id { return false }
        if lhs.disabled != rhs.disabled { return false }
        if lhs.disabledReason != rhs.disabledReason { return false }
        if lhs._createdAt != rhs._createdAt { return false }
        if lhs._updatedAt != rhs._updatedAt { return false }
        if lhs.credentials != rhs.credentials { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension Stream_Video_Coordinator_PushV1_ApnCredentials: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".ApnCredentials"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .standard(proto: "certificate_p12"),
        2: .same(proto: "topic"),
        3: .standard(proto: "team_id")
    ]

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try { try decoder.decodeSingularBytesField(value: &self.certificateP12) }()
            case 2: try { try decoder.decodeSingularStringField(value: &self.topic) }()
            case 3: try { try decoder.decodeSingularStringField(value: &self.teamID) }()
            default: break
            }
        }
    }

    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if !certificateP12.isEmpty {
            try visitor.visitSingularBytesField(value: certificateP12, fieldNumber: 1)
        }
        if !topic.isEmpty {
            try visitor.visitSingularStringField(value: topic, fieldNumber: 2)
        }
        if !teamID.isEmpty {
            try visitor.visitSingularStringField(value: teamID, fieldNumber: 3)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (
        lhs: Stream_Video_Coordinator_PushV1_ApnCredentials,
        rhs: Stream_Video_Coordinator_PushV1_ApnCredentials
    ) -> Bool {
        if lhs.certificateP12 != rhs.certificateP12 { return false }
        if lhs.topic != rhs.topic { return false }
        if lhs.teamID != rhs.teamID { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension Stream_Video_Coordinator_PushV1_FirebaseCredentials: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".FirebaseCredentials"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .same(proto: "credentials")
    ]

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try { try decoder.decodeSingularStringField(value: &self.credentials) }()
            default: break
            }
        }
    }

    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if !credentials.isEmpty {
            try visitor.visitSingularStringField(value: credentials, fieldNumber: 1)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (
        lhs: Stream_Video_Coordinator_PushV1_FirebaseCredentials,
        rhs: Stream_Video_Coordinator_PushV1_FirebaseCredentials
    ) -> Bool {
        if lhs.credentials != rhs.credentials { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension Stream_Video_Coordinator_PushV1_HuaweiCredentials: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".HuaweiCredentials"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .same(proto: "id"),
        2: .same(proto: "secret")
    ]

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try { try decoder.decodeSingularStringField(value: &self.id) }()
            case 2: try { try decoder.decodeSingularStringField(value: &self.secret) }()
            default: break
            }
        }
    }

    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if !id.isEmpty {
            try visitor.visitSingularStringField(value: id, fieldNumber: 1)
        }
        if !secret.isEmpty {
            try visitor.visitSingularStringField(value: secret, fieldNumber: 2)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (
        lhs: Stream_Video_Coordinator_PushV1_HuaweiCredentials,
        rhs: Stream_Video_Coordinator_PushV1_HuaweiCredentials
    ) -> Bool {
        if lhs.id != rhs.id { return false }
        if lhs.secret != rhs.secret { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension Stream_Video_Coordinator_PushV1_XiaomiCredentials: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".XiaomiCredentials"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .standard(proto: "package_name"),
        2: .same(proto: "secret")
    ]

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try { try decoder.decodeSingularStringField(value: &self.packageName) }()
            case 2: try { try decoder.decodeSingularStringField(value: &self.secret) }()
            default: break
            }
        }
    }

    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if !packageName.isEmpty {
            try visitor.visitSingularStringField(value: packageName, fieldNumber: 1)
        }
        if !secret.isEmpty {
            try visitor.visitSingularStringField(value: secret, fieldNumber: 2)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (
        lhs: Stream_Video_Coordinator_PushV1_XiaomiCredentials,
        rhs: Stream_Video_Coordinator_PushV1_XiaomiCredentials
    ) -> Bool {
        if lhs.packageName != rhs.packageName { return false }
        if lhs.secret != rhs.secret { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension Stream_Video_Coordinator_PushV1_Device: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".Device"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .standard(proto: "user_id"),
        2: .same(proto: "id"),
        3: .same(proto: "disabled"),
        4: .standard(proto: "disabled_reason"),
        5: .standard(proto: "push_provider_name"),
        6: .standard(proto: "created_at"),
        7: .standard(proto: "updated_at")
    ]

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try { try decoder.decodeSingularStringField(value: &self.userID) }()
            case 2: try { try decoder.decodeSingularStringField(value: &self.id) }()
            case 3: try { try decoder.decodeSingularBoolField(value: &self.disabled) }()
            case 4: try { try decoder.decodeSingularStringField(value: &self.disabledReason) }()
            case 5: try { try decoder.decodeSingularStringField(value: &self.pushProviderName) }()
            case 6: try { try decoder.decodeSingularMessageField(value: &self._createdAt) }()
            case 7: try { try decoder.decodeSingularMessageField(value: &self._updatedAt) }()
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
        if !id.isEmpty {
            try visitor.visitSingularStringField(value: id, fieldNumber: 2)
        }
        if disabled != false {
            try visitor.visitSingularBoolField(value: disabled, fieldNumber: 3)
        }
        if !disabledReason.isEmpty {
            try visitor.visitSingularStringField(value: disabledReason, fieldNumber: 4)
        }
        if !pushProviderName.isEmpty {
            try visitor.visitSingularStringField(value: pushProviderName, fieldNumber: 5)
        }
        try { if let v = self._createdAt {
            try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
        } }()
        try { if let v = self._updatedAt {
            try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
        } }()
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (lhs: Stream_Video_Coordinator_PushV1_Device, rhs: Stream_Video_Coordinator_PushV1_Device) -> Bool {
        if lhs.userID != rhs.userID { return false }
        if lhs.id != rhs.id { return false }
        if lhs.disabled != rhs.disabled { return false }
        if lhs.disabledReason != rhs.disabledReason { return false }
        if lhs.pushProviderName != rhs.pushProviderName { return false }
        if lhs._createdAt != rhs._createdAt { return false }
        if lhs._updatedAt != rhs._updatedAt { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension Stream_Video_Coordinator_PushV1_DeviceInput: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".DeviceInput"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .same(proto: "id"),
        2: .standard(proto: "push_provider_id")
    ]

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try { try decoder.decodeSingularStringField(value: &self.id) }()
            case 2: try { try decoder.decodeSingularStringField(value: &self.pushProviderID) }()
            default: break
            }
        }
    }

    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if !id.isEmpty {
            try visitor.visitSingularStringField(value: id, fieldNumber: 1)
        }
        if !pushProviderID.isEmpty {
            try visitor.visitSingularStringField(value: pushProviderID, fieldNumber: 2)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (lhs: Stream_Video_Coordinator_PushV1_DeviceInput, rhs: Stream_Video_Coordinator_PushV1_DeviceInput) -> Bool {
        if lhs.id != rhs.id { return false }
        if lhs.pushProviderID != rhs.pushProviderID { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}
