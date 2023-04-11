//
//  Visual Perception
//

import SwiftUI

struct PickerRadioGroup: View {
  @Binding var win: Bool
  @State var options: [CheckboxModel]
  @State var selected: Int = -1
  
  var body: some View {
    HStack(spacing: 60) {
      ForEach(options) { option in
        let checked: Binding<Bool> = .constant(win ? option.correct : selected == option.index)
        
        CheckboxView(checked: checked, description: option.description) {
          selected = option.index
          win = option.correct
        }
      }
    }
  }
}

struct PickerRadioGroup_Previews: PreviewProvider {
  static var previews: some View {
    PickerRadioGroup(
      win: Binding.constant(false),
      options: [
        CheckboxModel(index: 0, correct: false, description: "Option 1"),
        CheckboxModel(index: 1, correct: true, description: "Option 2"),
        CheckboxModel(index: 2, correct: false, description: "Option 3")
      ]
    )
  }
}
