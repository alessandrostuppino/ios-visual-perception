//
//  Visual Perception
//

import Foundation
import SwiftUI

public struct VisualPerception {
  public static func registerFonts() {
    let ext = "ttf"
    CustomFont.allCases.forEach {
      registerFont(bundle: .main, fontName: $0.rawValue, fontExtension: ext)
      registerFont(bundle: .main, fontName: $0.black, fontExtension: ext)
      registerFont(bundle: .main, fontName: $0.bold, fontExtension: ext)
      registerFont(bundle: .main, fontName: $0.extraBold, fontExtension: ext)
      registerFont(bundle: .main, fontName: $0.light, fontExtension: ext)
      registerFont(bundle: .main, fontName: $0.medium, fontExtension: ext)
      registerFont(bundle: .main, fontName: $0.semibold, fontExtension: ext)
    }
  }
  
  fileprivate static func registerFont(bundle: Bundle, fontName: String, fontExtension: String) {
    guard let fontURL = bundle.url(forResource: fontName, withExtension: fontExtension),
          let fontDataProvider = CGDataProvider(url: fontURL as CFURL),
          let font = CGFont(fontDataProvider) else { return }
    
    CTFontManagerRegisterGraphicsFont(font, nil)
  }
}
