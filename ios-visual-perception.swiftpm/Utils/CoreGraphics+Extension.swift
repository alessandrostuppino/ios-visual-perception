//
//  Visual Perception
//

import Foundation

extension CGPoint {
  static func + (lhs: CGPoint, rhs: CGPoint) -> CGPoint {
    return CGPoint(x: lhs.x + rhs.x, y: lhs.y + rhs.y)
  }
  
  static func += (lhs: inout CGPoint, rhs: CGPoint)  {
    lhs = lhs + rhs
  }
}

extension CGSize {
  static func + (lhs: CGSize, rhs: CGSize) -> CGSize {
    return CGSize(width: lhs.width + rhs.width, height: lhs.height + rhs.height)
  }
  
  static func += (lhs: inout CGSize, rhs: CGSize)  {
    lhs = lhs + rhs
  }
}
