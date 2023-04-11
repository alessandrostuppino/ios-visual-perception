//
//  Visual Perception
//

import SwiftUI

@main
struct MyApp: App {
  init() {
    VisualPerception.registerFonts()
  }
  
  var body: some Scene {
    WindowGroup {
      HomePageView()
        .edgesIgnoringSafeArea(.bottom)
    }
  }
}
