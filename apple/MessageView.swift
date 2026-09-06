//
//  Message.swift
//  apple
//
//  Created by Damon Kelley on 9/5/26.
//

import Foundation
import SwiftUI

struct Message: Identifiable {
  var id: UUID
  var to: String
  var from: String
  var subject: String?
  var body: String?
}

struct MessageView: View {
  @State var message: Message

  var body: some View {
    VStack(alignment: .leading) {
      if let subject = message.subject {
        Text(subject)
      } else {
        Text("No Subject")
          .italic()
      }
      Text(message.from)
        .font(.subheadline)
    }
    .padding(.bottom, 10)

    if let body = message.body {
      Text(body)
    } else {
      Text("No Body")
        .italic()
    }
    Divider()
  }
}

#Preview {
    MessageView(
      message: Message(
        id: UUID(),
        to: "me",
        from: "jenkins@google.com",
        subject: "Hello",
        body: "This is a new e-mail"
      )
    )
}
