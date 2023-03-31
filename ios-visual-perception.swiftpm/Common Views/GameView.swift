//
//  Visual Perception
//

import SwiftUI

struct GameView<Content: View>: View {
    @State var color: Color
    @ViewBuilder var content: Content
    
    var body: some View {
        VStack {
            ZStack {
                color
                content
                    .padding(.top, GameManager.height*0.06)
            }
            .frame(height: GameManager.height*0.7)
            
            Spacer()
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(color: .red, content: { Text("test") })
    }
}
