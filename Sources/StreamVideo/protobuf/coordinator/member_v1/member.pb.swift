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

struct Stream_Video_Coordinator_MemberV1_Member {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// The CID of the Call this member belongs to
    var callCid: String = String()

    /// The user ID of the member
    var userID: String = String()

    /// The role of the member in this room
    var role: String = String()

    /// Custom data for the member
    var customJson: Data = Data()

    /// Created at timestamp
    var createdAt: SwiftProtobuf.Google_Protobuf_Timestamp {
        get { _createdAt ?? SwiftProtobuf.Google_Protobuf_Timestamp() }
        set { _createdAt = newValue }
    }

    /// Returns true if `createdAt` has been explicitly set.
    var hasCreatedAt: Bool { self._createdAt != nil }
    /// Clears the value of `createdAt`. Subsequent reads from it will return its default value.
    mutating func clearCreatedAt() { _createdAt = nil }

    /// Updated at timestamp
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

    private var _createdAt: SwiftProtobuf.Google_Protobuf_Timestamp?
    private var _updatedAt: SwiftProtobuf.Google_Protobuf_Timestamp?
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Stream_Video_Coordinator_MemberV1_Member: @unchecked Sendable {}
#endif // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

private let _protobuf_package = "stream.video.coordinator.member_v1"

extension Stream_Video_Coordinator_MemberV1_Member: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".Member"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .standard(proto: "call_cid"),
        2: .standard(proto: "user_id"),
        3: .same(proto: "role"),
        4: .standard(proto: "custom_json"),
        5: .standard(proto: "created_at"),
        6: .standard(proto: "updated_at")
    ]

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try { try decoder.decodeSingularStringField(value: &self.callCid) }()
            case 2: try { try decoder.decodeSingularStringField(value: &self.userID) }()
            case 3: try { try decoder.decodeSingularStringField(value: &self.role) }()
            case 4: try { try decoder.decodeSingularBytesField(value: &self.customJson) }()
            case 5: try { try decoder.decodeSingularMessageField(value: &self._createdAt) }()
            case 6: try { try decoder.decodeSingularMessageField(value: &self._updatedAt) }()
            default: break
            }
        }
    }

    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every if/case branch local when no optimizations
        // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
        // https://github.com/apple/swift-protobuf/issues/1182
        if !callCid.isEmpty {
            try visitor.visitSingularStringField(value: callCid, fieldNumber: 1)
        }
        if !userID.isEmpty {
            try visitor.visitSingularStringField(value: userID, fieldNumber: 2)
        }
        if !role.isEmpty {
            try visitor.visitSingularStringField(value: role, fieldNumber: 3)
        }
        if !customJson.isEmpty {
            try visitor.visitSingularBytesField(value: customJson, fieldNumber: 4)
        }
        try { if let v = self._createdAt {
            try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
        } }()
        try { if let v = self._updatedAt {
            try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
        } }()
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (lhs: Stream_Video_Coordinator_MemberV1_Member, rhs: Stream_Video_Coordinator_MemberV1_Member) -> Bool {
        if lhs.callCid != rhs.callCid { return false }
        if lhs.userID != rhs.userID { return false }
        if lhs.role != rhs.role { return false }
        if lhs.customJson != rhs.customJson { return false }
        if lhs._createdAt != rhs._createdAt { return false }
        if lhs._updatedAt != rhs._updatedAt { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}
