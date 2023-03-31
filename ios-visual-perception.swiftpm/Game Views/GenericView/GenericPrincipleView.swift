//
//  Visual Perception
//

import SwiftUI

struct GenericPrincipleView: View {
  var image: Image
  
  var body: some View {
    image
      .resizable()
      .scaledToFit()
      .frame(width: GameManager.width)
  }
}

struct GenericPrincipleView_Previews: PreviewProvider {
  static var previews: some View {
    GenericPrincipleView(image: Image.Game.similarityPrinciple)
  }
}
