//
//  Visual Perception
//

import SwiftUI

struct ContinuityPrincipleView: View {
  
  @State var positionTL = CGSize.zero
  @State var positionTT = CGSize.zero
  @State var positionBL = CGSize.zero
  @State var positionBT = CGSize.zero
  
  @State var isDragging = false
  
  var body: some View {
    VStack(spacing: -5) {
      HStack(spacing: -5) {
        Image.Game.continuityPrincipleTL
          .offset(x: positionTL.width, y: positionTL.height)
          .gesture(
            DragGesture()
              .onChanged { value in
                positionTL = value.translation
                isDragging = true
              }
              .onEnded { value in
                isDragging = false
              }
          )
        Image.Game.continuityPrincipleTT
          .offset(x: positionTT.width, y: positionTT.height)
          .gesture(
            DragGesture()
              .onChanged { value in
                positionTT = value.translation
                isDragging = true
              }
              .onEnded { value in
                isDragging = false
              }
          )
      }
      HStack(spacing: -5) {
        Image.Game.continuityPrincipleBL
          .offset(x: positionBL.width, y: positionBL.height)
          .gesture(
            DragGesture()
              .onChanged { value in
                positionBL = value.translation
                isDragging = true
              }
              .onEnded { value in
                isDragging = false
              }
          )
        Image.Game.continuityPrincipleBT
          .offset(x: positionBT.width, y: positionBT.height)
          .gesture(
            DragGesture()
              .onChanged { value in
                positionBT = value.translation
                isDragging = true
              }
              .onEnded { value in
                isDragging = false
              }
          )
      }
    }
  }
}

struct ContinuityPrincipleView_Previews: PreviewProvider {
  static var previews: some View {
    ContinuityPrincipleView()
  }
}
