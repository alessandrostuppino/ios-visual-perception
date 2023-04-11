//
//  Visual Perception
//

import SwiftUI

struct DescriptionDetailView: View {
  @Environment(\.presentationMode) private var presentationMode
  
  @State var model: GameModel
  
  var body: some View {
    Color.lightBlack
      .overlay {
        VStack(alignment: .leading) {
          BackButtonView(color: .vintage) {
            presentationMode.wrappedValue.dismiss()
          }
          
          Text(model.titlePrincipleName)
            .customFont(CustomFont.fraunces.regular, size: 40)
            .foregroundColor(.vintage)
          
          HStack {
            Spacer()
            
            Image.divider3
              .renderingMode(.template)
              .foregroundColor(.vintage)
              .padding(30)
            
            Spacer()
          }
          
          Text(model.principleDescription)
            .foregroundColor(.vintage)
            .customFont(CustomFont.commissioner.regular, size: 24)
          
          Text(Strings.Common.DescriptionDetail.gameExplanation)
            .foregroundColor(.vintage)
            .customFont(CustomFont.commissioner.semibold, size: 26)
            .padding(.top, 30)
            .padding(.bottom, 12)
          
          Text(model.gameDescription)
            .foregroundColor(.vintage)
            .customFont(CustomFont.commissioner.regular, size: 24)
          
          Spacer()
        }
        .frame(width: GameManager.width * 0.85, height: GameManager.height * 0.85)
      }
      .ignoresSafeArea()
      .navigationBarHidden(true)
      .navigationBarBackButtonHidden(true)
      .navigationViewStyle(.stack)
  }
}

struct DescriptionDetailView_Previews: PreviewProvider {
  static var previews: some View {
    DescriptionDetailView(model: GameManager.gamesModel[0])
  }
}
