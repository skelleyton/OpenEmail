//
//  App.swift
//  apple
//
//  Created by Damon Kelley on 8/30/26.
//

import Foundation
import SwiftUI

@main
struct app: App {
  var body: some Scene {
    Window("Inbox", id: "inbox" ) {
      PrimaryView()
    }
    Settings {}
  }
}

struct PrimaryView: View {
  var body: some View {
    InboxView()
      .frame(minWidth: 500, minHeight: 1000)
  }
}

#Preview {
  PrimaryView()
}
