//
// Copyright © 2023 Stream.io Inc. All rights reserved.
//

import StreamVideo
import SwiftUI

public struct CallTopView: View {
            
    @Injected(\.colors) var colors
    @Injected(\.images) var images
    
    @ObservedObject var viewModel: CallViewModel
    
    public init(viewModel: CallViewModel) {
        self.viewModel = viewModel
    }
    
    public var body: some View {
        HStack {
            Button {
                withAnimation {
                    viewModel.isMinimized = true
                }
            } label: {
                Image(systemName: "chevron.left")
                    .foregroundColor(colors.textInverted)
                    .padding()
            }
            .accessibility(identifier: "minimizeCallView")
            
            if viewModel.recordingState == .recording {
                RecordingView()
            }

            Spacer()
            
            
            if #available(iOS 14, *) {
                LayoutMenuView(viewModel: viewModel)
                
                Button {
                    viewModel.participantsShown.toggle()
                } label: {
                    images.participants
                        .padding(.horizontal)
                        .padding(.horizontal, 2)
                        .foregroundColor(.white)
                }
                .accessibility(identifier: "participantMenu")
            }
        }
    }
}