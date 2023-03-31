//
//  Visual Perception
//

import SwiftUI

struct GameManager {
  static let width = UIScreen.main.bounds.width
  static let height = UIScreen.main.bounds.height
  
  static var gamesModel: [GameModel] = [
    GameModel(
      unlocked: true,
      principleDescription: Strings.Game.ProximityPrinciple.principleDescription,
      gameDescription: Strings.Game.ProximityPrinciple.gameDescription,
      backgroundColor: Color(red: 208/255, green: 98/255, blue: 36/255),
      type: .proximityPrinciple,
      titleNumber: 1,
      titlePrincipleName: Strings.Game.ProximityPrinciple.titlePrincipleName,
      instructionTitle: Strings.Game.ProximityPrinciple.instructionTitle,
      instructionParagraph: Strings.Game.ProximityPrinciple.instructionParagraph
    ),
    GameModel(
      principleDescription: Strings.Game.SimilarityPrinciple.principleDescription,
      gameDescription: Strings.Game.SimilarityPrinciple.gameDescription,
      backgroundColor: Color(red: 219/255, green: 107/255, blue: 151/255),
      type: .similarityPrinciple,
      titleNumber: 2,
      titlePrincipleName: Strings.Game.SimilarityPrinciple.titlePrincipleName,
      instructionTitle: Strings.Game.SimilarityPrinciple.instructionTitle,
      instructionParagraph: Strings.Game.SimilarityPrinciple.instructionParagraph,
      instructionCheckboxes: [
        CheckboxModel(index: 0, correct: true, description: Strings.Game.SimilarityPrinciple.opt1),
        CheckboxModel(index: 1, correct: false, description: Strings.Game.SimilarityPrinciple.opt2),
        CheckboxModel(index: 2, correct: false, description: Strings.Game.SimilarityPrinciple.opt3)
      ]
    ),
    GameModel(
      principleDescription: Strings.Game.CommonFatePrinciple.principleDescription,
      gameDescription: Strings.Game.CommonFatePrinciple.gameDescription,
      backgroundColor: Color(red: 242/255, green: 255/255, blue: 233/255),
      type: .commonFatePrinciple,
      titleNumber: 3,
      titlePrincipleName: Strings.Game.CommonFatePrinciple.titlePrincipleName,
      instructionTitle: Strings.Game.CommonFatePrinciple.instructionTitle,
      instructionParagraph: Strings.Game.CommonFatePrinciple.instructionParagraph,
      instructionCheckboxes: [
        CheckboxModel(index: 0, correct: false, description: Strings.Game.CommonFatePrinciple.opt1),
        CheckboxModel(index: 1, correct: true, description: Strings.Game.CommonFatePrinciple.opt2),
        CheckboxModel(index: 2, correct: false, description: Strings.Game.CommonFatePrinciple.opt3)
      ]
    ),
    GameModel(
      principleDescription: Strings.Game.ContinuityPrinciple.principleDescription,
      gameDescription: Strings.Game.ContinuityPrinciple.gameDescription,
      backgroundColor: Color(red: 150/255, green: 187/255, blue: 124/255),
      type: .continuityPrinciple,
      titleNumber: 4,
      titlePrincipleName: Strings.Game.ContinuityPrinciple.titlePrincipleName,
      instructionTitle: Strings.Game.ContinuityPrinciple.instructionTitle,
      instructionParagraph: Strings.Game.ContinuityPrinciple.instructionParagraph,
      instructionCheckboxes: [
        CheckboxModel(index: 0, correct: false, description: Strings.Game.ContinuityPrinciple.opt1),
        CheckboxModel(index: 1, correct: false, description: Strings.Game.ContinuityPrinciple.opt2),
        CheckboxModel(index: 2, correct: true, description: Strings.Game.ContinuityPrinciple.opt3)
      ]
    ),
    GameModel(
      principleDescription: Strings.Game.PastExperiencePrinciple.principleDescription,
      gameDescription: Strings.Game.PastExperiencePrinciple.gameDescription,
      backgroundColor: Color(red: 254/255, green: 126/255, blue: 109/255),
      type: .pastExperiencePrinciple,
      titleNumber: 5,
      titlePrincipleName: Strings.Game.PastExperiencePrinciple.titlePrincipleName,
      instructionTitle: Strings.Game.PastExperiencePrinciple.instructionTitle,
      instructionParagraph: Strings.Game.PastExperiencePrinciple.instructionParagraph,
      instructionCheckboxes: [
        CheckboxModel(index: 0, correct: false, description: Strings.Game.PastExperiencePrinciple.opt1),
        CheckboxModel(index: 1, correct: true, description: Strings.Game.PastExperiencePrinciple.opt2),
        CheckboxModel(index: 2, correct: false, description: Strings.Game.PastExperiencePrinciple.opt3)
      ]
    ),
    GameModel(
      principleDescription: Strings.Game.ClosurePrinciple.principleDescription,
      gameDescription: Strings.Game.ClosurePrinciple.gameDescription,
      backgroundColor: Color(red: 240/255, green: 187/255, blue: 98/255),
      type: .closurePrinciple,
      titleNumber: 6,
      titlePrincipleName: Strings.Game.ClosurePrinciple.titlePrincipleName,
      instructionTitle: Strings.Game.ClosurePrinciple.instructionTitle,
      instructionParagraph: Strings.Game.ClosurePrinciple.instructionParagraph,
      instructionCheckboxes: [
        CheckboxModel(index: 0, correct: true, description: Strings.Game.ClosurePrinciple.opt1),
        CheckboxModel(index: 1, correct: false, description: Strings.Game.ClosurePrinciple.opt2),
        CheckboxModel(index: 2, correct: false, description: Strings.Game.ClosurePrinciple.opt3)
      ]
    ),
    GameModel(
      principleDescription: Strings.Game.FigureGroundPrinciple.principleDescription,
      gameDescription: Strings.Game.FigureGroundPrinciple.gameDescription,
      backgroundColor: Color(red: 238/255, green: 235/255, blue: 221/255),
      type: .figureGroundPrinciple,
      titleNumber: 7,
      titlePrincipleName: Strings.Game.FigureGroundPrinciple.titlePrincipleName,
      instructionTitle: Strings.Game.FigureGroundPrinciple.instructionTitle,
      instructionParagraph: Strings.Game.FigureGroundPrinciple.instructionParagraph,
      instructionCheckboxes: [
        CheckboxModel(index: 0, correct: false, description: Strings.Game.FigureGroundPrinciple.opt1),
        CheckboxModel(index: 1, correct: false, description: Strings.Game.FigureGroundPrinciple.opt2),
        CheckboxModel(index: 2, correct: true, description:  Strings.Game.FigureGroundPrinciple.opt3)
      ]
    ),
    GameModel(
      principleDescription: Strings.Game.AngleIllusion.principleDescription,
      gameDescription: Strings.Game.AngleIllusion.gameDescription,
      backgroundColor: Color(red: 233/255, green: 76/255, blue: 74/255),
      type: .angleIllusion,
      titleNumber: 8,
      titlePrincipleName: Strings.Game.AngleIllusion.titlePrincipleName,
      instructionTitle: Strings.Game.AngleIllusion.instructionTitle,
      instructionParagraph: Strings.Game.AngleIllusion.instructionParagraph,
      instructionCheckboxes: [
        CheckboxModel(index: 0, correct: true, description: Strings.Game.AngleIllusion.opt1),
        CheckboxModel(index: 1, correct: false, description: Strings.Game.AngleIllusion.opt2),
        CheckboxModel(index: 2, correct: false, description: Strings.Game.AngleIllusion.opt3)
      ]
    ),
    GameModel(
      principleDescription: Strings.Game.MullerLyerIllusion.principleDescription,
      gameDescription: Strings.Game.MullerLyerIllusion.gameDescription,
      backgroundColor: Color(red: 76/255, green: 143/255, blue: 226/255),
      type: .mullerLyerIllusion,
      titleNumber: 9,
      titlePrincipleName: Strings.Game.MullerLyerIllusion.titlePrincipleName,
      instructionTitle: Strings.Game.MullerLyerIllusion.instructionTitle,
      instructionParagraph: Strings.Game.MullerLyerIllusion.instructionParagraph,
      instructionCheckboxes: [
        CheckboxModel(index: 0, correct: false, description: Strings.Game.MullerLyerIllusion.opt1),
        CheckboxModel(index: 1, correct: false, description: Strings.Game.MullerLyerIllusion.opt2),
        CheckboxModel(index: 2, correct: true, description: Strings.Game.MullerLyerIllusion.opt3)
      ]
    ),
    GameModel(
      principleDescription: Strings.Game.PonzoIllusion.principleDescription,
      gameDescription: Strings.Game.PonzoIllusion.gameDescription,
      backgroundColor: Color(red: 120/255, green: 222/255, blue: 199/255),
      type: .ponzoIllusion,
      titleNumber: 10,
      titlePrincipleName: Strings.Game.PonzoIllusion.titlePrincipleName,
      instructionTitle: Strings.Game.PonzoIllusion.instructionTitle,
      instructionParagraph: Strings.Game.PonzoIllusion.instructionParagraph,
      instructionCheckboxes: [
        CheckboxModel(index: 0, correct: true, description: Strings.Game.PonzoIllusion.opt1),
        CheckboxModel(index: 1, correct: false, description: Strings.Game.PonzoIllusion.opt2),
        CheckboxModel(index: 2, correct: false, description: Strings.Game.PonzoIllusion.opt3)
      ]
    ),
    GameModel(
      principleDescription: Strings.Game.JastrowIllusion.principleDescription,
      gameDescription: Strings.Game.JastrowIllusion.gameDescription,
      backgroundColor: Color(red: 236/255, green: 219/255, blue: 186/255),
      type: .jastrowIllusion,
      titleNumber: 11,
      titlePrincipleName: Strings.Game.JastrowIllusion.titlePrincipleName,
      instructionTitle: Strings.Game.JastrowIllusion.instructionTitle,
      instructionParagraph: Strings.Game.JastrowIllusion.instructionParagraph,
      instructionCheckboxes: [
        CheckboxModel(index: 0, correct: false, description: Strings.Game.JastrowIllusion.opt1),
        CheckboxModel(index: 1, correct: true, description: Strings.Game.JastrowIllusion.opt2),
        CheckboxModel(index: 2, correct: false, description: Strings.Game.JastrowIllusion.opt3)
      ]
    ),
    GameModel(
      principleDescription: Strings.Game.GoalGradientEffect.principleDescription,
      gameDescription: Strings.Game.GoalGradientEffect.gameDescription,
      backgroundColor: Color(red: 101/255, green: 93/255, blue: 138/255),
      type: .goalGradientIllusion,
      titleNumber: 12,
      titlePrincipleName: Strings.Game.GoalGradientEffect.titlePrincipleName,
      instructionTitle: Strings.Game.GoalGradientEffect.instructionTitle,
      instructionParagraph: Strings.Game.GoalGradientEffect.instructionParagraph,
      instructionCheckboxes: [
        CheckboxModel(index: 0, correct: true, description: Strings.Game.GoalGradientEffect.opt1),
        CheckboxModel(index: 1, correct: false, description: Strings.Game.GoalGradientEffect.opt2)
      ]
    ),
    GameModel(
      principleDescription: Strings.Game.ImpossibleTridentIllusion.principleDescription,
      gameDescription: Strings.Game.ImpossibleTridentIllusion.gameDescription,
      backgroundColor: Color(red: 249/255, green: 223/255, blue: 220/255),
      type: .impossibleTridentIllusion,
      titleNumber: 13,
      titlePrincipleName: Strings.Game.ImpossibleTridentIllusion.titlePrincipleName,
      instructionTitle: Strings.Game.ImpossibleTridentIllusion.instructionTitle,
      instructionParagraph: Strings.Game.ImpossibleTridentIllusion.instructionParagraph,
      instructionCheckboxes: [
        CheckboxModel(index: 0, correct: false, description: Strings.Game.ImpossibleTridentIllusion.opt1),
        CheckboxModel(index: 1, correct: false, description: Strings.Game.ImpossibleTridentIllusion.opt2),
        CheckboxModel(index: 2, correct: true, description: Strings.Game.ImpossibleTridentIllusion.opt3)
      ]
    )
  ]
}

