//
//  Visual Perception
//

import SwiftUI
import UniformTypeIdentifiers

struct ProximityPrincipleView: View {
  private let dim: CGFloat = GameManager.width/10
  private let bkgColumns = Array(
    repeating: GridItem(.flexible(minimum: GameManager.width/10, maximum: GameManager.width/10), spacing: 15),
    count: 5
  )
  
  @StateObject private var model: DotsModel = DotsModel()
  @State private var dragging: DraggableDot?
  
  @Binding var won: Bool
  
  var body: some View {
    ZStack {
      LazyVGrid(columns: bkgColumns, alignment: .center, spacing: 15) {
        ForEach(0..<25) { _ in
          Circle()
            .fill(Color(red: 174/255, green: 67/255, blue: 30/255))
            .frame(width: dim, height: dim)
        }
      }
      
      LazyVGrid(columns: bkgColumns, alignment: .center, spacing: 15) {
        ForEach(model.dots) { dot in
          Dot(dim: dim, id: dot.id, draggable: dot.draggable)
            .onDrag(if: dot.draggable) {
              self.dragging = dot
              return NSItemProvider(object: String(dot.id) as NSString)
            }
            .onDrop(of: [UTType.text],
                    delegate: DragRelocateDelegate(item: dot, listData: $model.dots, current: $dragging) {
              self.checkIfWin()
            })
        }
      }
      .animation(.none, value: model.dots)
      .onChange(of: won) { newValue in
        if newValue {
          model.dots = model.winningCombination()
        }
      }
    }
  }
  
  func checkIfWin() {
    let winning = model.winningCombination()
    won = false
    
    for index in winning.indices {
      if winning[index].draggable != model.dots[index].draggable {
        won = false
        break
      }
      won = true
    }
  }
}

struct ProximityPrincipleView_Previews: PreviewProvider {
  static var previews: some View {
    ProximityPrincipleView(won: Binding.constant(false))
  }
}
