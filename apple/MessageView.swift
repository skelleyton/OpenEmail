//
//  MessageView.swift
//  apple
//
//  Created by Damon Kelley on 9/6/26.
//

import Foundation
import SwiftUI

struct MessageView: View {
  @State var message: ImmutableMessage? = nil

  var body: some View {
    if let message {
      VStack {
        VStack(alignment: .leading, spacing: 0) {
          Text("From: \(message.from)")
          Divider()
          Text("To: \(message.to.joined(separator: ", "))")
          Divider()
          Text("Cc: \(message.cc?.joined(separator: ", ") ?? "")")
          Divider()
          Text("Bcc: \(message.bcc?.joined(separator: ", ") ?? "")")
          Divider()
        }
        .padding()
        Divider()
        Text(message.body)
      }
      .padding(.bottom, 10)
    } else {
      Text("No Message Selected")
        .frame(minWidth: 200, minHeight: 50)
    }
  }
}

#Preview {
  let message = ImmutableMessage(
    from: "googleman@google.com",
    to: ["me@me.com"],
    body: "another one bites the dust"
  )
  MessageView(message: message)
}

#Preview {
  MessageView()
}
