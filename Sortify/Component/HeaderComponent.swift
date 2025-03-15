//  HeaderComponent.swift
//  Sortify
//
//  Created by mido mj on 3/15/25.

import SwiftUI

struct HeaderComponent: View {
  var body: some View {
    VStack(alignment: .center, spacing: 20) {
      Capsule()
        .frame(width: 120, height: 6)
        .foregroundColor(Color.secondary)
        .opacity(0.2)

        Text("Sortify")
            .font(.largeTitle)
            .bold()
            .foregroundStyle(.secondary)
    }
  }
}

struct HeaderComponent_Previews: PreviewProvider {
  static var previews: some View {
    HeaderComponent()
      .previewLayout(.fixed(width: 375, height: 128))
  }
}
