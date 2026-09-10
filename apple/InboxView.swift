//
//  InboxView.swift
//  OpenEmail
//
//  Created by Damon Kelley on 9/7/26.
//

import Foundation
import SwiftUI

struct InboxView: View {
  var body: some View {
    HStack {
      MessageListView()
      Divider()
      MessageView()
    }
  }
}

#Preview {
  InboxView()
}
