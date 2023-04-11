//
//  Visual Perception
//

import SwiftUI

struct TextModifier: ViewModifier {
  
  var fontFamily: String
  var fontSize: CGFloat
  
  init(_ family: String, size: CGFloat) {
    self.fontFamily = family
    self.fontSize = size
  }
  
  func body(content: Content) -> some View {
    content
      .font(.custom(fontFamily, size: fontSize))
  }
}

extension Text {
  func customFont(_ family: String, size: CGFloat) -> some View {
    self.modifier(TextModifier(family, size: size))
  }
}

enum CustomFont: String, CaseIterable {
  case commissioner = "Commissioner"
  case fraunces = "Fraunces"
  
  var black: String { rawValue + "-Black" }
  var bold: String { rawValue + "-Bold" }
  var extraBold: String { rawValue + "-ExtraBold" }
  var light: String { rawValue + "-Light" }
  var medium: String { rawValue + "-Medium" }
  var regular: String { rawValue }
  var semibold: String { rawValue + "-SemiBold" }
}
