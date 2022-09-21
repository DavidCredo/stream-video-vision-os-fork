//
// Copyright © 2022 Stream.io Inc. All rights reserved.
//

import Foundation
import SwiftProtobuf

typealias Stream_Video_Healthcheck = Stream_Video_Coordinator_ClientV1Rpc_WebsocketHealthcheck
typealias Stream_Video_CreateUserRequest = Stream_Video_Coordinator_UserV1_UserInput
typealias Stream_Video_CallCoordinatorService = Stream_Video_Coordinator_ClientV1Rpc_ClientRPC
typealias Stream_Video_CreateCallRequest = Stream_Video_Coordinator_ClientV1Rpc_CreateCallRequest
typealias Stream_Video_CreateCallResponse = Stream_Video_Coordinator_ClientV1Rpc_CreateCallResponse
typealias Stream_Video_JoinCallRequest = Stream_Video_Coordinator_ClientV1Rpc_JoinCallRequest
typealias Stream_Video_JoinCallResponse = Stream_Video_Coordinator_ClientV1Rpc_JoinCallResponse
typealias Stream_Video_Call = Stream_Video_Coordinator_CallV1_Call
typealias Stream_Video_AuthPayload = Stream_Video_Coordinator_ClientV1Rpc_WebsocketAuthRequest
typealias Stream_Video_CallStarted = Stream_Video_Coordinator_EventV1_CallStarted
typealias Stream_Video_CallCreated = Stream_Video_Coordinator_EventV1_CallCreated
typealias Stream_Video_CallUpdated = Stream_Video_Coordinator_EventV1_CallUpdated
typealias Stream_Video_CallEnded = Stream_Video_Coordinator_EventV1_CallEnded
typealias Stream_Video_CallDeleted = Stream_Video_Coordinator_EventV1_CallDeleted
typealias Stream_Video_UserUpdated = Stream_Video_Coordinator_EventV1_UserUpdated
typealias Stream_Video_BroadcastStarted = Stream_Video_Coordinator_EventV1_BroadcastStarted
typealias Stream_Video_BroadcastEnded = Stream_Video_Coordinator_EventV1_BroadcastEnded
typealias Stream_Video_RecordingStarted = Stream_Video_Coordinator_EventV1_RecordingStarted
typealias Stream_Video_RecordingStopped = Stream_Video_Coordinator_EventV1_RecordingStopped
typealias Stream_Video_Edge = Stream_Video_Coordinator_EdgeV1_Edge
typealias Stream_Video_WebsocketEvent = Stream_Video_Coordinator_ClientV1Rpc_WebsocketEvent
typealias Stream_Video_GetCallRequest = Stream_Video_Coordinator_ClientV1Rpc_GetCallRequest
typealias Stream_Video_Latency = Stream_Video_Coordinator_EdgeV1_Latency
typealias Stream_Video_SelectEdgeServerRequest = Stream_Video_Coordinator_ClientV1Rpc_GetCallEdgeServerRequest
typealias Stream_Video_Participant = Stream_Video_Coordinator_ParticipantV1_Participant
typealias Stream_Video_User = Stream_Video_Coordinator_UserV1_User
typealias Stream_Video_CallMembersUpdated = Stream_Video_Coordinator_EventV1_CallMembersUpdated
typealias Stream_Video_CallMembersDeleted = Stream_Video_Coordinator_EventV1_CallMembersDeleted
typealias Stream_Video_CreateCallInput = Stream_Video_Coordinator_ClientV1Rpc_CreateCallInput
typealias Stream_Video_MemberInput = Stream_Video_Coordinator_ClientV1Rpc_MemberInput
typealias Stream_Video_LatencyEndpoint = Stream_Video_Coordinator_EdgeV1_LatencyEndpoint
typealias Stream_Video_LatencyMeasurements = Stream_Video_Coordinator_EdgeV1_LatencyMeasurements
typealias Stream_Video_WebsocketClientEvent = Stream_Video_Coordinator_ClientV1Rpc_WebsocketClientEvent
