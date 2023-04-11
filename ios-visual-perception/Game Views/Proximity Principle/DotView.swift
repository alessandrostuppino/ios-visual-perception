//
//  Visual Perception
//

import SwiftUI

struct Dot: View {
  let dim: CGFloat
  let id: Int
  let draggable: Bool
  
  var body: some View {
    Circle()
      .fill(draggable ? Color(red: 233/255, green: 200/255, blue: 145/255) : Color.clear)
      .frame(width: dim, height: dim)
      .contentShape(Circle())
  }
}

struct Dot_Previews: PreviewProvider {
  static var previews: some View {
    Dot(dim: 50, id: 0, draggable: true)
  }
}

