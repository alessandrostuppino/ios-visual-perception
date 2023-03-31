//
//  Visual Perception
//

import SwiftUI

struct BackButtonView: View {
  var color: Color
  var back: () -> Void
  
  var body: some View {
    Button(action: back) {
      HStack(spacing: 20) {
        Image.startButton
          .renderingMode(.template)
          .rotationEffect(.radians(.pi))
          .foregroundColor(color)
        
        Text(Strings.Common.BackButton.back)
          .customFont(CustomFont.fraunces.regular, size: 50)
          .foregroundColor(color)
      }
    }
  }
}

struct BackButtonView_Previews: PreviewProvider {
  static var previews: some View {
    BackButtonView(color: .vintage) {}
  }
}
