//
// Copyright © 2022 Stream.io Inc. All rights reserved.
//

import StreamVideo
import SwiftUI

public struct RoomView<Factory: ViewFactory>: View {
    
    @ObservedObject private var viewModel: CallViewModel
    private var viewFactory: Factory
    
    public init(
        viewFactory: Factory,
        viewModel: CallViewModel
    ) {
        self.viewFactory = viewFactory
        self.viewModel = viewModel
    }
    
    public var body: some View {
        ZStack {
            VStack(spacing: 0) {
                if let focusParticipant = viewModel.focusParticipant {
                    ParticipantView(viewModel: viewModel, participant: focusParticipant) { _ in
                        viewModel.focusParticipant = nil
                    }
                } else {
                    ParticipantLayout(viewModel.allParticipants.values, spacing: 5) { participant in
                        ParticipantView(viewModel: viewModel, participant: participant) { participant in
                            viewModel.focusParticipant = participant
                        }
                    }
                }
            }
            .edgesIgnoringSafeArea(.all)
                
            TopView {
                VStack {
                    TrailingView {
                        Button {
                            viewModel.participantsShown.toggle()
                        } label: {
                            Image(systemName: "person.3.fill")
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.black.opacity(0.6))
                                .clipShape(Circle())
                        }
                        .padding()
                    }
                    
                    if viewModel.participantsShown {
                        TrailingView {
                            CallParticipantsView(
                                viewModel: viewModel,
                                maxWidth: screenSize.width / 2
                            )
                        }
                        .padding(.horizontal)
                    }
                }
            }

            VStack {
                Spacer()
                if let event = viewModel.participantEvent {
                    Text("\(event.user) \(event.action.display) the call.")
                        .padding(8)
                        .foregroundColor(.white)
                        .modifier(ShadowViewModifier())
                        .padding()
                }
                
                viewFactory.makeCallControlsView(viewModel: viewModel)
            }
        }
        .frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity
        )
    }
    
    private var screenSize: CGSize {
        UIScreen.main.bounds.size
    }
}

extension RoomView where Factory == DefaultViewFactory {
    public init(
        viewModel: CallViewModel
    ) {
        self.init(viewFactory: DefaultViewFactory.shared, viewModel: viewModel)
    }
}