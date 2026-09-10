//
//  Message.swift
//  apple
//
//  Created by Damon Kelley on 9/6/26.
//

import Foundation

class Message: Codable, Sendable {
  var id: UUID
  var to: [String]
  var from: String
  var cc: [String]?
  var bcc: [String]?
  var subject: String?
  var body: String

  init(from: String, to: [String], body: String) {
    self.id = UUID()
    self.from = from
    self.to = to
    self.body = body
    self.cc = nil
    self.bcc = nil
    self.subject = nil
  }
}

extension Message: Equatable, Hashable {
  static func == (lhs: Message, rhs: Message) -> Bool {
    lhs.id == rhs.id
  }

  func hash(into hasher: inout Hasher) {
    hasher.combine(id)
  }
}

class ImmutableMessage: Message {
}
