//  Created by Patrick Dinger on 1/15/21.
//  Copyright © 2021 Patrick Dinger. All rights reserved.

import SwiftUI

public struct DarkLightModePreview<Content: View>: View {
    var content: Content

    public init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }

    public var body: some View {
        Group {
            content
                .padding(5.0)
                .previewDisplayName("Light")
                .background(Color(NSColor.windowBackgroundColor))
                .environment(\.colorScheme, .light)
            content
                .padding(5.0)
                .previewDisplayName("Light selected")
                .background(Color.accentColor)
                .environment(\.colorScheme, .light)
            content
                .padding(5.0)
                .previewDisplayName("Dark")
                .background(Color(NSColor.windowBackgroundColor))
                .environment(\.colorScheme, .dark)
            content
                .padding(5.0)
                .previewDisplayName("Dark selected")
                .background(Color.accentColor)
                .environment(\.colorScheme, .dark)
        }
    }
}
