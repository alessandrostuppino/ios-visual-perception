//
//  Visual Perception
//

import SwiftUI

struct GameListItem: View {
  @State var model: GameModel
  private let coverWidth = GameManager.width/2.58
  @State private var showDetail = false
  
  var body: some View {
    ZStack {
      NavigationLink(isActive: $showDetail) {
        DescriptionDetailView(model: model)
      } label: {
        EmptyView()
      }
      
      VStack(spacing: 20) {
        if model.unlocked {
          NavigationLink {
            GameContainerView(model)
              .navigationViewStyle(.stack)
              .navigationBarHidden(true)
              .navigationBarBackButtonHidden(true)
          } label: {
            cover
          }
        } else {
          cover
        }
        
        HStack {
          Text(model.titlePrincipleName)
            .customFont(CustomFont.commissioner.regular, size: 21)
            .foregroundColor(.white)
          
          Spacer(minLength: 70)
          
          Button {
            showDetail = true
          } label: {
            Circle()
              .fill(
                model.unlocked
                ? Color(red: 120/255, green: 69/255, blue: 191/255)
                : Color(red: 242/255, green: 242/255, blue: 242/255)
              )
              .frame(width: 60, height: 60)
              .overlay {
                Image.descriptionDetail
                  .renderingMode(.template)
                  .resizable()
                  .scaledToFit()
                  .frame(height: 25)
                  .foregroundColor(
                    model.unlocked
                    ? Color.white
                    : Color(red: 176/255, green: 176/255, blue: 176/255)
                  )
              }
          }
          .disabled(!model.unlocked)
        }
      }
    }
  }
  
  var cover: some View {
    Image(model.cover)
      .resizable()
      .scaledToFit()
      .frame(width: coverWidth, height: coverWidth)
      .blur(radius: model.unlocked ? 0 : 5, opaque: true)
      .overlay {
        if !model.unlocked {
          ZStack {
            Color.black
              .opacity(0.25)
            
            Image.locked
              .resizable()
              .frame(width: coverWidth, height: coverWidth)
              .scaledToFit()
          }
          .frame(width: coverWidth, height: coverWidth)
        }
      }
  }
}

struct GameListItem_Previews: PreviewProvider {
  static var previews: some View {
    GameListItem(
      model: GameModel(
        type: .proximityPrinciple,
        titleNumber: 1,
        titlePrincipleName: "Principle name",
        instructionTitle: "Instruction title",
        instructionParagraph: "paragraph"
      )
    )
  }
}
