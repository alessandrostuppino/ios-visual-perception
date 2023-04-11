//
//  Visual Perception
//

import SwiftUI

struct HomeButtonView: View {
  var action: () -> Void
  
  var body: some View {
    Button(action: action) {
      Circle()
        .fill(Color.lightBlack)
        .opacity(0.6)
        .frame(width: GameManager.height * 0.06, height: GameManager.height * 0.06)
        .overlay {
          Image.homePage
        }
    }
  }
}

struct HomeButtonView_Previews: PreviewProvider {
  static var previews: some View {
    HomeButtonView { }
  }
}
