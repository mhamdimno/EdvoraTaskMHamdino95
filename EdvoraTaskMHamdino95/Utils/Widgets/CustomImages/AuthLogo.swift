

import SwiftUI

struct AuthLogo: View {
    var body: some View {
        Image("authLogo")
            .resizable()
            .frame(
                width: 156.estimatedHeight,
                alignment: .center).scaledToFit()
    }
}
