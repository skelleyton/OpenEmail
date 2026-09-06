//
//  Message.swift
//  apple
//
//  Created by Damon Kelley on 9/5/26.
//

import Foundation
import OSLog
import SwiftUI

struct MessageListItem: Identifiable {
  var id: UUID
  var to: String
  var from: String
  var subject: String?
}

struct MessageListItemView: View {
  @State var message: MessageListItem
  @Binding var focusedMessage: UUID?

  @State private var isHovered: Bool = false

  private func getBackgroundState() -> Color {
    if focusedMessage == message.id {
      return Color(.blue).opacity(0.8)
    } else {
      return Color(isHovered ? .blue : .clear).opacity(0.1)
    }
  }

  var body: some View {
    ZStack(alignment: .leading) {
      getBackgroundState()
      VStack(alignment: .leading, spacing: 0) {
        if let subject = message.subject {
          Text(subject)
        } else {
          Text("No Subject")
            .italic()
        }
        Text(message.from)
          .font(.subheadline)
      }
      .padding(.top, 10)
      .padding(.bottom, 10)
      .padding(.leading, 10)
    }
    .onHover { hovered in
      isHovered = hovered
    }
    .onTapGesture {
      focusedMessage = message.id
    }
  }
}

extension MessageListItemView {

}

#Preview {
@Previewable @State var focusedMessage: UUID?
  MessageListItemView(
    message: MessageListItem(
      id: UUID(),
      to: "me",
      from: "jenkins@google.com",
      subject: "Hello",
    ),
    focusedMessage: $focusedMessage
  )
}
