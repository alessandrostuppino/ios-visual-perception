//
//  Visual Perception
//

import SwiftUI

struct GenericIllusionView: View {
  @State var image: Image
  @State var solutionImage: Image
  
  @State private var onOff = false
  
  var body: some View {
    (onOff ? solutionImage : image)
      .resizable()
      .scaledToFit()
      .frame(width: GameManager.width)
      .overlay {
        VStack {
          Spacer()
          
          Button {
            onOff.toggle()
          } label: {
            onOff ? Image.showButton : Image.hideButton
          }
          
          Text(onOff ? Strings.Game.GenericIllusion.show : Strings.Game.GenericIllusion.hide)
            .customFont(CustomFont.fraunces.regular, size: 24)
            .foregroundColor(.lightBlack)
          
        }
      }
  }
}

struct GenericIllusionView_Previews: PreviewProvider {
  static var previews: some View {
    GenericIllusionView(image: Image.Game.angleIllusion, solutionImage: Image.Game.angleIllusionEmpty)
  }
}
