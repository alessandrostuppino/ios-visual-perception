//
//  Visual Perception
//  

import SwiftUI

struct OrientationPremiseView: View {
  @Binding var isVisible: Bool
  
  var body: some View {
    ZStack {
      Color(red: 248/255, green: 215/255, blue: 192/255)
      
      Image.homeBackground
        .resizable()
        .scaledToFit()
      VStack(spacing: 50) {
        Text(Strings.Common.OrientationPremise.title)
          .customFont(CustomFont.fraunces.semibold, size: 60)
          .foregroundColor(.lightBlack)
        
        Text(Strings.Common.OrientationPremise.message)
          .customFont(CustomFont.fraunces.regular, size: 30)
          .foregroundColor(.lightBlack)
          .multilineTextAlignment(.center)
        
        Button {
          isVisible = false
        } label: {
          HStack(spacing: 30) {
            Text(Strings.Common.OrientationPremise.buttonText)
              .customFont(CustomFont.fraunces.regular, size: 40)
              .foregroundColor(.lightBlack)
            Image.startButton
          }
        }
        
      }
      .padding(.horizontal, GameManager.width/6)
    }
    .ignoresSafeArea()
  }
}

struct OrientationPremiseView_Previews: PreviewProvider {
  static var previews: some View {
    OrientationPremiseView(isVisible: .constant(true))
  }
}
