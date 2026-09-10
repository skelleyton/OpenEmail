import Foundation
import SwiftUI
import os

struct MessageListView: View {
  @State var messages: [MessageListItem] = []

  @State private var focusedMessage: UUID?

  private var logger = Logger()

  var body: some View {
    VStack(alignment: .leading, spacing: 0) {
      Text("Messages").font(.system(size: 26))
        .padding(.leading, 10)
      Divider()
      ScrollView {
        LazyVStack(alignment: .leading, spacing: 0) {
          ForEach(messages) { message in
            VStack(alignment: .leading, spacing: 0) {
              MessageListItemView(
                message: message,
                focusedMessage: $focusedMessage
              )

              Divider()
            }
          }
        }
      }
    }
    .frame(minWidth: 200, idealWidth: 250, minHeight: 500)
  }
}

#Preview {
  MessageListView(
    messages: [
      MessageListItem(
        id: UUID(),
        to: "someone",
        from: "bobjones@yahoo.com",
        subject: "Message2",
      ),
      MessageListItem(id: UUID(), to: "me", from: "jenkins@jenkins.com"),
    ]
      + (0...50).map { num in
        MessageListItem(
          id: UUID(),
          to: "me",
          from: "you@google.com",
          subject: "Message\(num)",
        )
      },
  )
}
