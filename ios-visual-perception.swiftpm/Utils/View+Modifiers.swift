//
//  Visual Perception
//

import SwiftUI

struct Draggable: ViewModifier {
  let condition: Bool
  let data: () -> NSItemProvider
  
  @ViewBuilder
  func body(content: Content) -> some View {
    if condition {
      content.onDrag(data)
    } else {
      content
    }
  }
}

extension View {
  public func onDrag(if condition: Bool, _ data: @escaping () -> NSItemProvider) -> some View {
    self.modifier(Draggable(condition: condition, data: data))
  }
}

extension Shape {
  func fill<Fill: ShapeStyle, Stroke: ShapeStyle>(_ fillStyle: Fill, stroke strokeStyle: Stroke, lineWidth: CGFloat = 2) -> some View {
    self
      .stroke(strokeStyle, lineWidth: lineWidth)
      .background(self.fill(fillStyle))
  }
}
