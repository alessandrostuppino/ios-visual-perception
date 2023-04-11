//
//  Visual Perception
//

import SwiftUI

struct InstructionsView: View {
  @State var model: GameModel
  
  @State private var selected: Int = -1
  
  @State private var shouldPresent: Bool = false
  
  @State private var showDetail: Bool = false
  @State private var showNextGame: Bool = false
  @State private var showCongrats: Bool = false
  
  var body: some View {
    VStack {
      Spacer()
      ZStack {
        detailViewLink
        nextGameLink
        congratsLink
        
        Rectangle()
          .fill(Color.vintage)
          .frame(width: GameManager.width, height: GameManager.height * 0.3)
        
        VStack {
          Text(model.instructionTitle.uppercased())
            .customFont(CustomFont.fraunces.bold, size: 26)
            .foregroundColor(Color.lightBlack)
          
          Image.divider1
            .padding(.vertical, 2)
          
          Text(model.instructionParagraph)
            .customFont(CustomFont.commissioner.regular, size: 20)
            .frame(width: GameManager.width * 0.9)
            .foregroundColor(Color.lightBlack)
          
          if let checkboxes = model.instructionCheckboxes, !checkboxes.isEmpty {
            PickerRadioGroup(win: $model.win, options: checkboxes)
              .padding(.vertical, 8)
          }
          
          HStack(spacing: 30) {
            Text(Strings.Common.Instructions.confirmAndVerify)
              .customFont(CustomFont.fraunces.regular, size: 30)
              .foregroundColor(Color.lightBlack)
            
            Button {
              self.shouldPresent = true
            } label: {
              Image.buttonGame
                .resizable()
                .scaledToFit()
                .frame(height: GameManager.height/22)
            }
          }
          .padding(.top, 10)
        }
      }
      .overlay {
        VStack {
          Rectangle()
            .fill(Color.lightBlack)
            .frame(height: 1)
          Spacer()
          
        }
      }
    }
    .overlay {
      if shouldPresent {
        resultPopup
      }
    }
  }
  
  // MARK: - Private Helpers
  
  private var resultPopup: some View {
    ResultPopupView(model.win, presented: $shouldPresent) {
      if model.win {
        showDetail = true
      } else {
        model.win = true
        if let _ = model.instructionCheckboxes {
          model.solveCheckbox()
        }
      }
    } rightAction: {
      if model.win {
        if let index = GameManager.gamesModel.firstIndex(of: model),
           index < GameManager.gamesModel.count - 1 {
          GameManager.gamesModel[index + 1].unlocked = true
          model = GameManager.gamesModel[index + 1]
          showNextGame = true
        } else {
          showCongrats = true
        }
      }
    }
  }
  
  private var detailViewLink: some View {
    EmptyView()
      .navigationLink($showDetail) {
        DescriptionDetailView(model: model)
      }
  }
  
  private var nextGameLink: some View {
    EmptyView()
      .navigationLink($showNextGame) {
        GameContainerView(model)
      }
  }
  
  private var congratsLink: some View {
    EmptyView()
      .navigationLink($showCongrats) {
        CongratulationsView()
      }
  }
}

struct InstructionsView_Previews: PreviewProvider {
  static var previews: some View {
    InstructionsView(model: GameManager.gamesModel.first!)
  }
}
