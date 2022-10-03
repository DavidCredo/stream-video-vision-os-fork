//
// Copyright © 2022 Stream.io Inc. All rights reserved.
//

import NukeUI
import StreamVideo
import SwiftUI

struct CallParticipantImageView: View {
    
    @Injected(\.colors) var colors
    
    var id: String
    var name: String
    var imageURL: URL?
    
    var body: some View {
        ZStack {
            CallParticipantBackground(imageURL: imageURL) {
                Color(colors.callBackground)
            }
            CallParticipantImage(id: id, name: name, imageURL: imageURL)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct CallParticipantImage: View {
    
    @Injected(\.colors) var colors
    
    private let size: CGFloat = 138
    
    var id: String
    var name: String
    var imageURL: URL?
    
    var body: some View {
        ZStack {
            if let imageURL = imageURL {
                LazyImage(url: imageURL)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: size, height: size)
                    .clipShape(Circle())
            } else {
                CircledTitleView(
                    title: name.isEmpty ? id : String(name.uppercased().first!),
                    size: size
                )
            }
        }
    }
}
