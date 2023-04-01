//
//  Visual Perception
//

import SwiftUI

struct JastrowIllusionView: View {
  @State private var dragOffset: CGSize = .zero
  @State private var position: CGSize
  
  @State var currentRotation: Angle = .zero
  @GestureState private var twistAngle: Angle = .zero
  
  private let staticPieceWidth: CGFloat = GameManager.width
  private let staticPieceHeight: CGFloat = GameManager.height*(703/1194)
  private let floatingPieceWidth: CGFloat = GameManager.width*(505.7/834)
  private let floatingPieceHeight: CGFloat = GameManager.height*(168.1/1194)
  
  init() {
    position = CGSize(width: 6.5, height: 8)
  }
  
  var body: some View {
    let rotationGesture = RotationGesture()
      .updating($twistAngle) { value, state, _ in
        state = value
      }
      .onEnded { value in
        currentRotation += value
      }
    
    let dragGesture = DragGesture()
      .onChanged { value in
        dragOffset = value.translation
      }
      .onEnded { value in
        position += value.translation
        dragOffset = .zero
      }
    
    ZStack {
      Image.Game.jastrowIllusionStatic
        .resizable()
        .scaledToFit()
        .frame(width: GameManager.width)
      
      
      Image.Game.jastrowIllusion
        .resizable()
        .scaledToFit()
        .rotationEffect(currentRotation + twistAngle)
        .offset(
          x: (dragOffset + position).width,
          y: (dragOffset + position).height
        )
        .frame(width: floatingPieceWidth, height: floatingPieceHeight)
        .gesture(dragGesture)
        .gesture(rotationGesture)
      
    }
    .frame(width: staticPieceWidth, height: staticPieceHeight)
  }
}

struct JastrowIllusionView_Previews: PreviewProvider {
  static var previews: some View {
    JastrowIllusionView()
  }
}
