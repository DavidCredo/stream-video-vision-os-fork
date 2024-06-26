//
// Copyright © 2024 Stream.io Inc. All rights reserved.
//

import Intents
import StreamVideo
import StreamVideoSwiftUI
import SwiftUI

internal struct DemoCallContainerView: View {

    private var callId: String
    @Injected(\.streamVideo) var streamVideo
    @Injected(\.appearance) var appearance
    @StateObject var viewModel: CallViewModel
    @StateObject var chatViewModel: DemoChatViewModel
    @ObservedObject var appState = AppState.shared

    internal init(callId: String) {
        let callViewModel = CallViewModel()
        callViewModel.participantAutoLeavePolicy = AppEnvironment.autoLeavePolicy.policy
        callViewModel.isPictureInPictureEnabled = AppEnvironment.pictureInPictureIntegration == .enabled
        _viewModel = StateObject(wrappedValue: callViewModel)
        _chatViewModel = StateObject(wrappedValue: .init(callViewModel))
        self.callId = callId
    }

    internal var body: some View {
        DemoCallContentView(viewModel: viewModel, callId: callId, loggedInView: AppEnvironment.loggedInView)
            .modifier(
                DemoCallModifier(
                    viewFactory: DemoAppViewFactory.shared,
                    viewModel: viewModel,
                    chatViewModel: chatViewModel
                )
            )
            .onCallEnded { call, dismiss in
                if let call {
                    DemoFeedbackView(call, dismiss: dismiss)
                }
            }
            .onContinueUserActivity(
                NSStringFromClass(INStartCallIntent.self),
                perform: didContinueUserActivity(_:)
            )
    }

    private func didContinueUserActivity(_ userActivity: NSUserActivity) {
        let interaction = userActivity.interaction
        if let callIntent = interaction?.intent as? INStartCallIntent {

            let contact = callIntent.contacts?.first

            guard let name = contact?.personHandle?.value else { return }
            viewModel.startCall(callType: .default, callId: .unique, members: [.init(user: .init(id: name))], ring: true)
        }
    }
}
