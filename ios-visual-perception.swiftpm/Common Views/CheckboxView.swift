//
//  Visual Perception
//

import SwiftUI

struct CheckboxView: View {
  @Binding var checked: Bool
  @State var description: String
  @State var checkboxDidPressed: () -> Void
  
  var body: some View {
    HStack(spacing: 20) {
      checked ? Image.checked : Image.unchecked
      
      Text(description)
        .customFont(CustomFont.fraunces.regular, size: 19)
        .foregroundColor(.lightBlack)
    }
    .onTapGesture {
      checkboxDidPressed()
    }
  }
}

class CheckboxModel: Identifiable, Equatable, ObservableObject {
  let id = UUID()
  let index: Int
  @Published var checked: Bool = false
  var description: String
  let correct: Bool
  
  init(index: Int, checked: Bool = false, correct: Bool, description: String) {
    self.index = index
    self.checked = checked
    self.correct = correct
    self.description = description
  }
  
  static func == (lhs: CheckboxModel, rhs: CheckboxModel) -> Bool {
    return lhs.id == rhs.id
  }
}

struct CheckboxView_Previews: PreviewProvider {
  static var previews: some View {
    CheckboxView(
      checked: Binding.constant(false),
      description: "Option",
      checkboxDidPressed: { }
    )
  }
}
