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
  
  var black: String { self.rawValue + "-Black" }
  var bold: String { self.rawValue + "-Bold" }
  var extraBold: String { self.rawValue + "-ExtraBold" }
  var light: String { self.rawValue + "-Light" }
  var medium: String { self.rawValue + "-Medium" }
  var regular: String { self.rawValue }
  var semibold: String { self.rawValue + "-SemiBold" }
}
