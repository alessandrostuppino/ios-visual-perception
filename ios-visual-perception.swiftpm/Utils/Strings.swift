//
//  Visual Perception
//

import Foundation

struct Strings {
  struct Common {
    struct OrientationPremise {
      static let title = "Before starting..."
      static let message = "Be sure to run the App on MacOS (Designed for iPad) or directly on iPad (simulator/physical) in portrait mode for a better experience!"
      static let buttonText = "Gotcha!"
    }
    
    struct ResultPopup {
      static let correctTitle = "Right!"
      static let correctLeftButton = "GO TO READING"
      static let correctRightButton = "NEXT"
      
      static let wrongTitle = "Wrong."
      static let wrongLeftButton = "SOLUTION"
      static let wrongRightButton = "RETRY"
    }
    
    struct BackButton {
      static let back = "BACK"
    }
    
    struct Instructions {
      static let confirmAndVerify = "Confirm and verify"
    }
    
    struct HomePage {
      static let nothingIsAsItSeems = "• Nothing is as it seems •"
      static let start = "START"
    }
    
    struct Congratulations {
      static let congratulations = "Congratulations!"
      static let yourJourneyEndsNow = "Your journey ends now..."
      static let thankYouMessage = "I am really happy you have completed all the games! It means that I made you curious and now you will have an enlarged view on Gestalt principles (German psychological current of the early 20th century) and how the mind behaves in front of some illustrations. In perceptual illusions, the information coming from real stimuli leads to an incorrect interpretation of the object from which the stimulus comes.\nWe can say that visual perception is the process of processing information from the outside world that is processed by our brain and translated into more complex information, available for the cognitive functions of each individual.\n\nAccording to Gestalt psychology, what we perceive is not a sum of elements, but a synthesis of reality. In the perception of the external world, we do not perceive a sum of sensory stimuli, but we perceive the whole, which is different from the sum of several elements. You have now understood that deceiving the mind is much simpler than we think; we are being deceived by illusions by letting us know something that is not present or we incorrectly perceive something that in reality presents itself differently."
    }
    
    struct DescriptionDetail {
      static let gameExplanation = "Game explanation"
    }
  }
  
  struct Game {
    struct GenericIllusion {
      static let show = "Show"
      static let hide = "Hide"
    }
    
    struct ProximityPrinciple {
      static let titlePrincipleName = "Proximity Principle"
      static let instructionTitle = "Hold and drag to create an item"
      static let instructionParagraph = "With the circles you have at your disposal, try to create a square in the center of the image, by holding and dragging the elements from one point to another."
      
      static let principleDescription = "The principle of proximity states that within a composition, elements that are close and similar to each other are considered and grouped as a single element. In our perceptual field, the proximity between each element helps to establish a relationship with objects, translating them from our brain into a single form."
      static let gameDescription = "Once the game is completed, the nine circles that we see, not being placed far from each other, make us perceive a square shape. In our example, since the circles are placed in no order on the page, we perceive them simply as nine circles arranged on the screen. Only when we tend to group them, do we have the impression of creating a square."
    }
    
    struct SimilarityPrinciple {
      static let titlePrincipleName = "Similarity Principle"
      static let instructionTitle = "Observe and analyze"
      static let instructionParagraph = "Look carefully at the image. How many items do you see?"
      
      static let opt1 = "30 items"
      static let opt2 = "6 items"
      static let opt3 = "2 items"
      
      static let principleDescription = "The principle of similarity states that within a composition, the human eye tends to perceive elements similar to each other as related and as unitary elements, even though they are separated from each other. This similarity can be given by shape, color, size, position, orientation, and movement. These can identify items as belonging to the same group."
      static let gameDescription = "In this example, we perceive two lines which are different from each other. The first group is formed by rows of filled circles, and the second is formed by rows of empty squares with only a trace of different colors. Therefore, our brain could count, given the similarity, the 6 lines or 2 total elements, compared to 30."
    }
    
    struct CommonFatePrinciple {
      static let titlePrincipleName = "Common Fate Principle"
      static let instructionTitle = "Observe and analyze"
      static let instructionParagraph = "Look carefully at the image. How many items do you see?"
      
      static let opt1 = "7 items"
      static let opt2 = "10 items"
      static let opt3 = "6 items"
      
      static let principleDescription = "In the principle of common destiny, the elements with same movement to each other and different from the others, are automatically grouped by our brain. They seem to be moving in the same direction. Symmetrical elements are perceived as belonging to the same group."
      static let gameDescription = "In this image, we perceive three vertical columns (six lines in total) and a single oblique line that passes behind it. In reality, these are separate elements (6 vertical lines and 4 oblique lines of various sizes) that we perceive as unique to each other. In our case, the <broken> oblique lines aim to have a single line as a figure. Despite being made up of several elements, we easily perceive a single oblique line."
    }
    
    struct ContinuityPrinciple {
      static let titlePrincipleName = "Continuity Principle"
      static let instructionTitle = "First observe, then drag"
      static let instructionParagraph = "Before dragging items, think about how many of them you see. Then move pieces to other points in the box. How many elements could the image have?"
      
      static let opt1 = "2 items"
      static let opt2 = "4 items"
      static let opt3 = "Both of the previous"
      
      static let principleDescription = "In the principle of continuity, similar elements (in shape, size, color, or placed one behind the other) are joined according to their direction, this happens because our mind is constantly looking for a direction, even if the figures we see are detached. This generates an idea of very high unity. Therefore, all the elements linked together we perceive as a single continuous group."
      static let gameDescription = "In this image, we immediately notice two curved lines, but they could easily be considered as four pieces separated from each other but placed at the same point."
    }
    
    struct PastExperiencePrinciple {
      static let titlePrincipleName = "Past experience Principle"
      static let instructionTitle = "Observe and remember"
      static let instructionParagraph = "Your mind may help you remember which element is illustrated. What do you remember?"
      
      static let opt1 = "Some lines"
      static let opt2 = "Letter E"
      static let opt3 = "Letter F"
      
      static let principleDescription = "According to the principle of experience, in an undefined composition, the brain tends to recall, through the properties of the various elements, something already known. Through the visual experience we store information in our memory, this helps the mind to recompose the image, recalculating it into elements we have already seen during our life."
      static let gameDescription = "In our case, the mind stimulates our memory, autonomously elaborates the various pieces, groups them and finally draws the letter E, despite the lack of essential elements to be able to define it. In fact, in this example, we do not see the three elements as settlers, but as a single whole resulting from a single element."
    }
    
    struct ClosurePrinciple {
      static let titlePrincipleName = "Closure Principle"
      static let instructionTitle = "Observe and analyze"
      static let instructionParagraph = "Look carefully at the picture. Which elements do you see?"
      
      static let opt1 = "Neither"
      static let opt2 = "4 circles"
      static let opt3 = "A square"
      
      static let principleDescription = "According to the principle of closure or completion, we tend to perceive and prefer more closed forms even if they do not exist. Even when a shape is not closed, our brain completes it automatically, reconstructing the missing part because in this way our composition will take on a more coherent and simplified meaning."
      static let gameDescription = "In this image, we automatically process the figure of a nonexistent-square placed around four circles, which in reality do not even exist since they are not complete. We do not see green circles and a yellow space in the center, so we can describe the example as an invisible square placed above four circles arranged respectively at the four corners."
    }
    
    struct FigureGroundPrinciple {
      static let titlePrincipleName = "Figure-ground Principle"
      static let instructionTitle = "Observe and distinguish"
      static let instructionParagraph = "Look at the image and distinguish the two subjects. Which of the two is in the foreground?"
      
      static let opt1 = "The chalice"
      static let opt2 = "The two faces"
      static let opt3 = "Both can be"
      
      static let principleDescription = "According to the figure/ground principle, in a composition, we tend to perceive some shapes as figures and others as a background. All of this is exactly what happens in nature too. When we see a portrait, we can distinguish the subject in the foreground against the ground, arranged in the background. The first focus of a subject, as in the case of this image, concerning the other, depends on each individual, it is a completely psychological discourse."
      static let gameDescription = "The figure is represented by the optical illusion of the Rubin Vase, that is, the two profiles that become a chalice, depending on which of the two colors we consider as a figure. All figures of this kind can always be interpreted in two ways: one of the two figures is focused on a subject, and the other, on the other hand, interprets the function of the background."
    }
    
    struct AngleIllusion {
      static let titlePrincipleName = "Angle illusion"
      static let instructionTitle = "Observe and show/hide"
      static let instructionParagraph = "Looking at the image, which of the two green corners seems to have the widest opening? Before answering you can tap the button to show and hide the black elements."
      
      static let opt1 = "They're the same"
      static let opt2 = "Left corner"
      static let opt3 = "Right corner"
      
      static let principleDescription = "We have the perception that the green corner marked on the left seems to be larger than the green corner on the right."
      static let gameDescription = "We can affirm and assure that they are the same size. Our brain is fooled by the fact that the one on the left is enclosed by a larger black corner than the one on the right."
    }
    
    struct MullerLyerIllusion {
      static let titlePrincipleName = "Muller-Lyer illusion"
      static let instructionTitle = "Observe and show/hide"
      static let instructionParagraph = "Looking at the image, which of the two horizontal lines seems to have the greatest length? Before answering you can tap the button to show and hide the black elements."
      
      static let opt1 = "Bottom line"
      static let opt2 = "Top line"
      static let opt3 = "They're the same"
      
      static let principleDescription = "The two orange lines with arrows at each end appear to be of different lengths, but in reality, no line is longer than the other. Both lines are of equal size. It is considered that lines exploit our brain's notion of perspective. Our visual system gives us a distorted perception of reality but this does not mean that we can speak of brain error. Rather we are faced with a case in which there is an inconsistency between percept and the result of a measurement of quantities."
      static let gameDescription = "Our visual system encodes the information relating to these two figures in such a way as to make us perceive one line as shorter than the other. As the upper drawing line is perceived to be further away, the brain assumes that it is longer. The segments in the final part of the lines give the appearance of arrows, which, going in opposite directions, deceive our perception by making the respective lines appear with a different dimension."
    }
    
    struct PonzoIllusion {
      static let titlePrincipleName = "Ponzo illusion"
      static let instructionTitle = "Observe and show/hide"
      static let instructionParagraph = "Looking at the image, which of the two vertical lines seems to have the greatest length? Before answering you can tap the button to show and hide the black elements."
      
      static let opt1 = "They're the same"
      static let opt2 = "Left line"
      static let opt3 = "Right line"
      
      static let principleDescription = "According to Ponzo's illusion, the human mind judges an object based on what is around it. The pink line on the left appears larger than the one on the right, although the first is the same as the other."
      static let gameDescription = "Why does it seem that we have two different sizes? The reason is that the two vertical segments are intersected by two other lines. Although they are of the same size, they appear one longer than the other based on the distance of the external converging lines. This optical effect also depends on the fact that every time our eyes observes something, they try to give it perspective and to place it correctly in space."
    }
    
    struct JastrowIllusion {
      static let titlePrincipleName = "Jastrow illusion"
      static let instructionTitle = "Drag and rotate"
      static let instructionParagraph = "Which of the two figures is larger? Try to move the lower figure and rotate it to your liking."
      
      static let opt1 = "Top figure"
      static let opt2 = "They're the same"
      static let opt3 = "Bottom figure"
      
      static let principleDescription = "The geometric figures presented are identical, although it seems quite clear that the figure below is higher in size than the upper one. This illusion arises due to the simple fact that the two figures are aligned not at the ends but contiguous to an inclination."
      static let gameDescription = "The illusion is created by the fact that the two left edges are placed one under the other but in continuity with each other, this creates an illusion and a staggered perception of size. While reversing the order of the two elements, the one below will always seem longer. If, on the other hand, we arrange the two pieces on top of each other, we immediately notice that the two overlapping pieces are perfectly identical."
    }
    
    struct GoalGradientEffect {
      static let titlePrincipleName = "Goal-Gradient Effect"
      static let instructionTitle = "Observe and analyze"
      static let instructionParagraph = "These illustrations represent two paths to reach the same goal. Looking at the two figures, which one seems closer to achieving it?"
      
      static let opt1 = "Top figure"
      static let opt2 = "Bottom figure"
      
      static let principleDescription = "As the achievement of a goal approaches, we naturally need to reach it as soon as possible. We are motivated by the illusion of progress and what we have left to achieve our goal, not by how far we have traveled to achieve it. Providing artificial progress towards a goal will help ensure that people are more likely to have the motivation to complete that task."
      static let gameDescription = "In our first image, we have a box containing 12 total circles, of which the first 2 are already <full>. In the second image, however, there are only 10 empty circles. Although both figures have the same number of circles to <fill in> again, the first box gives us the impression that a challenge is already underway for the total completion of the remaining circles. Providing a clear indication of progress generates motivation for people to complete tasks and achieve their goals."
    }
    
    struct ImpossibleTridentIllusion {
      static let titlePrincipleName = "Impossible trident illusion"
      static let instructionTitle = "Observe and analyze"
      static let instructionParagraph = "Try to count the pillars of this image by focusing on both the upper and lower parts. How many do you count?"
      
      static let opt1 = "It has 2 pillars"
      static let opt2 = "It has 3 pillars"
      static let opt3 = "Impossible to count"
      
      static let principleDescription = "The impossible trident depicts an object that may not exist. It appears to have, three cylindrical prongs at one end, which then, mysteriously transform, into two rectangular prongs at the other end. Covering the bottom side of the trident, it appears as an object with only two prongs. But, by covering the top side, it appears as an object with three prongs, not two. When the entire object is viewed at once, the object seems to switch between having two, and three prongs. "
      static let gameDescription = "The object seems to change its properties depending on how it is viewed. Our brain analyzes the shape of the trident and tries to count the pillars but we realize that this object is impossible. When an observer views a two-dimensional picture on paper, they often interpret it as a three-dimensional figure. Which can create optical illusions."
    }
  }
}
