//
// Copyright © 2022 Stream.io Inc. All rights reserved.
//

import Combine
import StreamVideo
import StreamVideoSwiftUI
import SwiftUI
import UIKit

open class CallViewController: UIViewController {
    
    let viewModel: CallViewModel = CallViewModel()
    
    private var cancellables = Set<AnyCancellable>()
    
    public static func make() -> CallViewController {
        CallViewController()
    }
        
    override open func viewDidLoad() {
        super.viewDidLoad()
        let videoView = VideoView(viewFactory: DefaultViewFactory.shared, viewModel: viewModel)
        let callVC = UIHostingController(rootView: videoView)
        if let callVCview = callVC.view {
            view.embed(callVCview.withoutAutoresizingMaskConstraints)
        }
    }
    
    public func startCall(callId: String, participants: [UserInfo]) {
        viewModel.startCall(callId: callId, participants: participants)
        listenToCallStateChanges()
    }
    
    private func listenToCallStateChanges() {
        viewModel.$callingState.sink { newState in
            if newState == .idle {
                self.dismiss(animated: true)
            }
        }
        .store(in: &cancellables)
    }
}
