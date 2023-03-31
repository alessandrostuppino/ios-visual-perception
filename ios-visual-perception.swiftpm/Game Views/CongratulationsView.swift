//
//  Visual Perception
//

import SwiftUI

struct CongratulationsView: View {
  @Environment(\.rootPresentationMode) private var rootPresentationMode
  
  var body: some View {
    ZStack {
      Color(red: 134/255, green: 156/255, blue: 171/255)
      Image.paperVintage
        .resizable()
        .scaledToFit()
        .frame(width: GameManager.width * 0.90, height: GameManager.height * 0.90)
      
      VStack(alignment: .leading) {
        
        
        Text(Strings.Common.Congratulations.congratulations)
          .customFont(CustomFont.fraunces.regular, size: 40)
          .foregroundColor(.lightBlack)
          .padding(.bottom, 6)
        
        Text(Strings.Common.Congratulations.yourJourneyEndsNow)
          .customFont(CustomFont.fraunces.regular, size: 28)
          .foregroundColor(.lightBlack)
          .padding(.bottom, 25)
        
        Text(Strings.Common.Congratulations.thankYouMessage)
          .foregroundColor(.lightBlack)
          .customFont(CustomFont.commissioner.regular, size: 20)
          .frame(width: GameManager.width * 0.58, height: GameManager.height * 0.55, alignment: .top)
        
        
        HStack{
          Spacer()
          HomeButtonView {
            rootPresentationMode.wrappedValue.dismiss()
          } .frame( height: GameManager.height * 0.07, alignment: .bottom)
          Spacer()
        }
      }
      .frame(width: GameManager.width * 0.58, height: GameManager.height * 0.75, alignment: .topLeading)
    }
    .ignoresSafeArea()
    .navigationBarHidden(true)
    .navigationBarBackButtonHidden(true)
    .navigationViewStyle(.stack)
  }
}

struct CongratulationView_Previews: PreviewProvider {
  static var previews: some View {
    CongratulationsView()
  }
}
