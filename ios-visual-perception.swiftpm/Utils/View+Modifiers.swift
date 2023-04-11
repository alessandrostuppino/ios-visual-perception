//
//  Visual Perception
//

import SwiftUI

struct NavigationLinkEmbedded<Destination: View>: ViewModifier {
  private enum Activity {
    case some
    case none
  }
  
  private let activity: Activity
  @Binding private var isActive: Bool
  @ViewBuilder let destination: () -> Destination
  
  init(destination: @escaping () -> Destination) {
    activity = .none
    self._isActive = .constant(false)
    self.destination = destination
  }
  
  init(isActive: Binding<Bool>, destination: @escaping () -> Destination) {
    activity = .some
    self._isActive = isActive
    self.destination = destination
  }
  
  @ViewBuilder
  func body(content: Content) -> some View {
    switch activity {
    case .none:
      NavigationLink(destination: destination) {
        content
      }
      
    case .some:
      NavigationLink(isActive: $isActive, destination: destination) {
        content
      }
    }
  }
}

extension View {
  public func navigationLink<Destination: View>(_ active: Binding<Bool>? = nil, destination: @escaping () -> Destination) -> some View {
    if let active {
      return self.modifier(NavigationLinkEmbedded(isActive: active, destination: destination))
    } else {
      return self.modifier(NavigationLinkEmbedded(destination: destination))
    }
  }
}

extension Shape {
  func fill<Fill: ShapeStyle, Stroke: ShapeStyle>(_ fillStyle: Fill, stroke strokeStyle: Stroke, lineWidth: CGFloat = 2) -> some View {
    self
      .stroke(strokeStyle, lineWidth: lineWidth)
      .background(self.fill(fillStyle))
  }
}
