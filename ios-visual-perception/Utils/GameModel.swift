//
//  Visual Perception
//

import SwiftUI

enum GameViewType: String {
  case proximityPrinciple = "principle_proximity"
  case similarityPrinciple = "principle_similarity"
  case commonFatePrinciple = "principle_common_fate"
  case continuityPrinciple = "principle_continuity"
  case pastExperiencePrinciple = "principle_past_experience"
  case closurePrinciple = "principle_closure"
  case figureGroundPrinciple = "principle_figure_ground"
  
  case angleIllusion = "illusion_angle"
  case mullerLyerIllusion = "illusion_muller_lyer"
  case ponzoIllusion = "illusion_ponzo"
  case jastrowIllusion = "illusion_jastrow"
  case impossibleTridentIllusion = "illusion_impossible_trident"
  
  case goalGradientIllusion = "effect_gold_gradient"
  
  @ViewBuilder func view(_ win: Binding<Bool>) -> some View {
    switch self {
    case .proximityPrinciple:
      ProximityPrincipleView(won: win)
    case .similarityPrinciple:
      GenericPrincipleView(image: Image.Game.similarityPrinciple)
    case .commonFatePrinciple:
      GenericPrincipleView(image: Image.Game.commonFatePrinciple)
    case .continuityPrinciple:
      ContinuityPrincipleView()
    case .pastExperiencePrinciple:
      GenericPrincipleView(image: Image.Game.pastExperiencePrinciple)
    case .closurePrinciple:
      GenericPrincipleView(image: Image.Game.closurePrinciple)
    case .figureGroundPrinciple:
      GenericPrincipleView(image: Image.Game.figureGroundPrinciple)
    case .angleIllusion:
      GenericIllusionView(image: Image.Game.angleIllusion, solutionImage: Image.Game.angleIllusionEmpty)
    case .mullerLyerIllusion:
      GenericIllusionView(image: Image.Game.mullerLyerIllusion, solutionImage: Image.Game.mullerLyerIllusionEmpty)
    case .ponzoIllusion:
      GenericIllusionView(image: Image.Game.ponzoIllusion, solutionImage: Image.Game.ponzoIllusionEmpty)
    case .jastrowIllusion:
      JastrowIllusionView()
    case .impossibleTridentIllusion:
      GenericPrincipleView(image: Image.Game.impossibleTrident)
    case .goalGradientIllusion:
      GenericPrincipleView(image: Image.Game.goalGradientEffect)
    }
  }
}

class GameModel: Identifiable, Equatable, ObservableObject {
  let id = UUID()
  
  var unlocked: Bool
  @Published var win: Bool
  var cover: String { type.rawValue }
  var principleDescription: String
  var gameDescription: String
  var backgroundColor: Color
  
  var type: GameViewType
  var titleNumber: Int
  var titlePrincipleName: String
  var instructionTitle: String
  var instructionParagraph: String
  var instructionCheckboxes: [CheckboxModel]?
  
  init(
    unlocked: Bool = false,
    win: Bool = false,
    principleDescription: String = "",
    gameDescription: String = "",
    backgroundColor: Color = Color.white,
    type: GameViewType,
    titleNumber: Int,
    titlePrincipleName: String,
    instructionTitle: String,
    instructionParagraph: String,
    instructionCheckboxes: [CheckboxModel]? = nil
  ) {
    self.unlocked = unlocked
    self.win = win
    self.principleDescription = principleDescription
    self.gameDescription = gameDescription
    self.backgroundColor = backgroundColor
    self.type = type
    self.titleNumber = titleNumber
    self.titlePrincipleName = titlePrincipleName
    self.instructionTitle = instructionTitle
    self.instructionParagraph = instructionParagraph
    self.instructionCheckboxes = instructionCheckboxes
  }
  
  func solveCheckbox() {
    if let instructionCheckboxes {
      self.instructionCheckboxes = instructionCheckboxes.map { cb in
        cb.checked = cb.correct
        return cb
      }
    }
  }
  
  static func == (lhs: GameModel, rhs: GameModel) -> Bool {
    lhs.id == rhs.id
  }
}
