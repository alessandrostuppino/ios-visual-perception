//
//  Visual Perception
//

import Foundation
import SwiftUI

struct DragRelocateDelegate: DropDelegate {
  let item: DraggableDot
  @Binding var listData: [DraggableDot]
  @Binding var current: DraggableDot?
  var dropEnded: () -> Void
  
  func dropEntered(info: DropInfo) {
    if let current,
       let from = listData.firstIndex(of: current),
       let to = listData.firstIndex(of: item),
       item != current,
       listData[to].id != current.id,
       item.draggable != current.draggable {
      listData.swapAt(from, to)
    }
  }
  
  func dropUpdated(info: DropInfo) -> DropProposal? {
    return DropProposal(operation: .move)
  }
  
  func performDrop(info: DropInfo) -> Bool {
    self.current = nil
    dropEnded()
    return true
  }
}

// MARK: Draggable View Modifier

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
