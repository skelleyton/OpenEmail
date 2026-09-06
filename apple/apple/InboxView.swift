import Foundation
import SwiftUI

struct InboxView: View {
  @State var messages: [Message] = []

  var body: some View {
    VStack(alignment: .leading) {
      Text("Messages")
        .font(.system(size: 26))
      Divider()
      ForEach(messages) { message in
        MessageView(message: message)
      }
      Spacer()
    }
    .frame(minWidth: 500, minHeight: 1000)
  }
}

#Preview {
  InboxView(
    messages: [
      Message(
        id: UUID(),
        to: "me",
        from: "you@google.com",
        subject: "Message",
        body: "Text"
      ),
      Message(
        id: UUID(),
        to: "someone",
        from: "bobjones@yahoo.com",
        subject: "Message2",
        body: "Text2"
      ),
      Message(
        id: UUID(),
        to: "me",
        from: "sandwichJim@gmail.com",
        subject: "Message3",
        body: "Text3"
      ),
      Message(id: UUID(), to: "me", from: "jenkins@jenkins.com"),
    ]
  )
}
