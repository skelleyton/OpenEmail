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
      Inbox()
    }
    WindowGroup(
      "Message",
      id: "messageView",
      for: ImmutableMessage.self
    ) { $message in
      MessageView(message: message)
    }
    Settings {}
  }
}

struct Inbox: View {
  var body: some View {
    MessageListView()
  }
}

#Preview {
  Inbox()
}
