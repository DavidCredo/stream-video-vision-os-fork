//
// Copyright © 2024 Stream.io Inc. All rights reserved.
//

@testable import StreamVideoSwiftUI
@testable import StreamVideo
import StreamSwiftTestHelpers
import SnapshotTesting
import XCTest

@MainActor
final class OutgoingCallView_Tests: StreamVideoUITestCase {

    private lazy var viewModel: CallViewModel! = .init()
    private lazy var factory: DefaultViewFactory! = DefaultViewFactory.shared

    override func tearDown() {
        viewModel = nil
        factory = nil
        super.tearDown()
    }

    func test_outgoingCallView_snapshot() throws {
        let viewModel = CallViewModel()
        let view = OutgoingCallView(
            outgoingCallMembers: viewModel.outgoingCallMembers,
            callTopView: factory.makeCallTopView(viewModel: viewModel),
            callControls: factory.makeCallControlsView(viewModel: viewModel)
        )
        AssertSnapshot(view, variants: snapshotVariants)
    }
}
