//
//  Visual Perception
//

import SwiftUI

struct GameContainerView: View {
  @ObservedObject var model: GameModel
  
  init(_ gameModel: GameModel) {
    model = gameModel
  }
  
  var body: some View {
    ZStack {
      GameView(color: model.backgroundColor) {
        model.type.view($model.win)
      }
      TitleView(number: model.titleNumber, principleName: model.titlePrincipleName)
      InstructionsView(model: model)
    }
    .edgesIgnoringSafeArea(.bottom)
    .navigationBarHidden(true)
    .navigationBarBackButtonHidden(true)
    .navigationViewStyle(.stack)
  }
}

struct GameContainerView_Previews: PreviewProvider {
  static var previews: some View {
    let model = GameModel(type: .proximityPrinciple,
                          titleNumber: 1,
                          titlePrincipleName: "PRINCIPIO DELLA VICINANZA",
                          instructionTitle: "TRASCINA E CREA UN ELEMENTO",
                          instructionParagraph: "Con i cerchi che hai a disposizione prova creare un quadrato trascinando gli elementi da un punto ad un altro.")
    GameContainerView(model)
  }
}
