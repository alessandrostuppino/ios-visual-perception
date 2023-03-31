//
//  Visual Perception
//

import Foundation

struct DraggableDot: Identifiable, Equatable {
  var id: Int
  var draggable: Bool
}

class DotsModel: ObservableObject {
  @Published var dots: [DraggableDot]
  let indices = [0, 2, 9, 11, 16, 18, 21, 23, 24]
  
  init() {
    dots = []
    for i in 0..<25 {
      let draggable = indices.contains(where: { $0 == i })
      dots.append(DraggableDot(id: i, draggable: draggable))
    }
  }
  
  func winningCombination() -> [DraggableDot] {
    var winning = [DraggableDot]()
    
    for i in 0..<25 {
      switch i {
      case 6, 7, 8:
        winning.append(DraggableDot(id: i, draggable: true))
      case 11, 12, 13:
        winning.append(DraggableDot(id: i, draggable: true))
      case 16, 17, 18:
        winning.append(DraggableDot(id: i, draggable: true))
      default:
        winning.append(DraggableDot(id: i, draggable: false))
      }
    }
    return winning
  }
}
