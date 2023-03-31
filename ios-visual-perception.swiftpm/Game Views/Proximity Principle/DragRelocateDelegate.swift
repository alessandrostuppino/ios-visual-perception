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
