//
//  Visual Perception
//

import SwiftUI

struct GamesListView: View {
  @Environment(\.presentationMode) private var presentationMode
  
  private let columns = Array(
    repeating: GridItem(.adaptive(minimum: GameManager.width/2.58, maximum: GameManager.width/2.58), spacing: 20),
    count: 2
  )
  
  var body: some View {
    Color(red: 180/255, green: 132/255, blue: 149/255)
      .overlay {
        VStack(alignment: .leading, spacing: 40) {
          Spacer()
          BackButtonView(color: .vintage) {
            presentationMode.wrappedValue.dismiss()
          }
          
          ScrollView(showsIndicators: false) {
            LazyVGrid(columns: columns, alignment: .center, spacing: 40) {
              ForEach(GameManager.gamesModel) { game in
                GameListItem(model: game)
              }
            }
            .padding(.bottom, 30)
          }
        }
        .frame(width: GameManager.width * 0.8)
      }
      .ignoresSafeArea()
  }
}

struct GamesListView_Previews: PreviewProvider {
  static var previews: some View {
    GamesListView()
  }
}
