//
//  Visual Perception
//

import SwiftUI

struct HomePageView: View {
  @State var isActive: Bool = false
  @State var isPremiseVisible: Bool = true
  
  var body: some View {
    NavigationView {
      ZStack {
        Color(red: 248/255, green: 215/255, blue: 192/255)
        
        Image.homeBackground
          .resizable()
          .scaledToFit()
        
        VStack {
          Image.homeTitle
            .resizable()
            .scaledToFit()
            .frame(width: GameManager.width * 0.7)
          
          Text(Strings.Common.HomePage.nothingIsAsItSeems)
            .customFont(CustomFont.fraunces.regular, size: 40)
            .foregroundColor(Color(red: 180/255, green: 132/255, blue: 149/255))
          
          Image.divider2
            .renderingMode(.template)
            .foregroundColor(.lightBlack)
            .padding(30)
          
          NavigationLink(destination: GamesListView()
            .navigationViewStyle(.stack)
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true),
                         isActive: $isActive, label: {
            HStack(spacing: 30) {
              Text(Strings.Common.HomePage.start)
                .customFont(CustomFont.fraunces.regular, size: 40)
                .foregroundColor(.lightBlack)
              Image.startButton
            }
          })
        }
        
        if isPremiseVisible {
          OrientationPremiseView(isVisible: $isPremiseVisible)
        }
      }
      .ignoresSafeArea()
    }
    .navigationViewStyle(.stack)
    .navigationBarHidden(true)
    .navigationBarBackButtonHidden(true)
    .environment(\.rootPresentationMode, $isActive)
  }
}

struct HomePageView_Previews: PreviewProvider {
  static var previews: some View {
    HomePageView()
  }
}
