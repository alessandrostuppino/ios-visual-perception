//
//  Visual Perception
//

import SwiftUI

struct JastrowIllusionView: View {
  @State private var location: CGPoint
  @State var currentAngle: Angle = .degrees(0)
  
  private let staticPieceWidth: CGFloat = GameManager.width
  private let staticPieceHeight: CGFloat = GameManager.height*(703/1194)
  private let floatingPieceWidth: CGFloat = GameManager.width*(505.7/834)
  private let floatingPieceHeight: CGFloat = GameManager.height*(168.1/1194)
  
  init() {
    location = CGPoint(
      x: staticPieceWidth - floatingPieceWidth - GameManager.width * 0.085,
      y: staticPieceHeight - floatingPieceHeight - GameManager.height * 0.371
    )
  }
  
  var body: some View {
    ZStack {
      Image.Game.jastrowIllusionStatic
        .resizable()
        .scaledToFit()
        .frame(width: GameManager.width)
      
      
      Image.Game.jastrowIllusion
        .resizable()
        .scaledToFit()
        .position(location)
        .frame(width: floatingPieceWidth, height: floatingPieceHeight)
        .rotationEffect(currentAngle)
        .gesture(
          DragGesture()
            .onChanged { touch in
              location = touch.location
            })
        .gesture(
          RotationGesture()
            .onChanged { angle in
              currentAngle = angle
            }
            .onEnded { _ in }
        )
      
    }
    .frame(width: staticPieceWidth, height: staticPieceHeight)
  }
}

struct JastrowIllusionView_Previews: PreviewProvider {
  static var previews: some View {
    JastrowIllusionView()
  }
}
