//
//  Visual Perception
//

import SwiftUI

struct ResultPopupView: View {
  @Binding var isPresented: Bool
  @State var success: Bool
  var leftAction: () -> Void
  var rightAction: () -> Void
  
  private var image: Image
  private var title: String
  private var leftButton: String
  private var rightButton: String
  private var rightButtonIcon: Image
  private var color: Color
  
  init(
    _ succ: Bool,
    presented: Binding<Bool>,
    _ left: @escaping () -> Void,
    rightAction: @escaping () -> Void
  ) {
    self.success = succ
    _isPresented = presented
    self.leftAction = left
    self.rightAction = rightAction
    
    if succ {
      image = Image.correct
      title = Strings.Common.ResultPopup.correctTitle
      leftButton = Strings.Common.ResultPopup.correctLeftButton
      rightButton = Strings.Common.ResultPopup.correctRightButton
      rightButtonIcon = Image.arrowRight
      color = Color.successGreen
    } else {
      image = Image.wrong
      title = Strings.Common.ResultPopup.wrongTitle
      leftButton = Strings.Common.ResultPopup.wrongLeftButton
      rightButton = Strings.Common.ResultPopup.wrongRightButton
      rightButtonIcon = Image.retryButton
      color = Color.failureRed
    }
  }
  
  var body: some View {
    ZStack {
      Color.black
        .opacity(0.25)
        .edgesIgnoringSafeArea(.all)
        .onTapGesture {
          isPresented = false
        }
      
      Group {
        RoundedRectangle(cornerRadius: 40)
          .fill(color, stroke: Color.vintage, lineWidth: 7.5)
          .padding(5)
        
        VStack(spacing: GameManager.height/80) {
          image
          
          Text(title)
            .customFont(CustomFont.fraunces.semibold, size: 45)
            .foregroundColor(Color.vintage)
          
          Image.divider2
            .padding(.vertical, GameManager.height/50)
          
          HStack(spacing: 20) {
            Button {
              isPresented = false
              leftAction()
            } label: {
              RoundedRectangle(cornerRadius: 15)
                .fill(Color.clear, stroke: Color.vintage)
                .padding(2)
                .overlay {
                  Text(leftButton)
                    .customFont(CustomFont.fraunces.regular, size: 18)
                    .foregroundColor(Color.vintage)
                }
                .frame(width: GameManager.width * 0.23, height: GameManager.height * 0.045, alignment: .center)
            }
            
            Button {
              isPresented = false
              rightAction()
            } label: {
              RoundedRectangle(cornerRadius: 15)
                .fill(Color.vintage, stroke: Color.vintage)
                .padding(2)
                .overlay {
                  HStack(spacing: 20) {
                    Text(rightButton)
                      .customFont(CustomFont.fraunces.regular, size: 18)
                      .foregroundColor(color)
                    
                    rightButtonIcon
                      .renderingMode(.template)
                      .foregroundColor(success ? Color.successGreen : Color.failureRed)
                  }
                }
                .frame(width: GameManager.width * 0.23, height: GameManager.height * 0.045, alignment: .center)
            }
          }
        }
      }
      .frame(width: GameManager.width * 0.6, height: GameManager.height * 0.3)
    }
  }
}

struct SuccessPopupView_Previews: PreviewProvider {
  static var previews: some View {
    ResultPopupView(true, presented: Binding.constant(true)) {} rightAction: {}
  }
}

struct FailurePopupView_Previews: PreviewProvider {
  static var previews: some View {
    ResultPopupView(false, presented: Binding.constant(true)) {} rightAction: {}
  }
}
