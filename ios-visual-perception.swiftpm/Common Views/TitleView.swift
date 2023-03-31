//
//  Visual Perception
//

import SwiftUI

struct TitleView: View {
  @Environment(\.rootPresentationMode) private var rootPresentationMode
  
  @State var number: Int
  @State var principleName: String
  
  var body: some View {
    VStack {
      HStack {
        Spacer()
        
        HomeButtonView {
          rootPresentationMode.wrappedValue.dismiss()
        }
        
        Spacer()
        
        ZStack {
          Rectangle()
            .fill(Color.lightBlack)
            .frame(width: GameManager.width * 0.7, height: GameManager.height * 0.06)
          
          HStack(spacing: 20){
            Circle()
              .foregroundColor(Color.vintage)
              .frame(width: GameManager.width * 0.03, height: GameManager.height * 0.03)
              .overlay(
                Text("\(number)")
                  .foregroundColor(Color.lightBlack)
                  .customFont(CustomFont.fraunces.regular, size: 22)
              )
            
            Text(principleName.uppercased())
              .foregroundColor(Color.vintage)
              .customFont(CustomFont.fraunces.regular, size: 26)
          }
        }
        
        Spacer()
        
        Rectangle()
          .fill(.clear)
          .frame(width: GameManager.height * 0.06, height: GameManager.height * 0.06)
        
        Spacer()
      }
      
      Spacer()
    }
  }
}

struct TitleView_Previews: PreviewProvider {
  static var previews: some View {
    TitleView(number: 1, principleName: "PRINCIPIO DELLA VICINANZA")
  }
}
