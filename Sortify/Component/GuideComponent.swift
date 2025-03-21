
import SwiftUI

//  GuideComponent.swift
//  Sortify
//
//  Created by mido mj on 3/15/25.

struct GuideComponent: View {
  // MARK: - PROPERTIES
  var title: String
  var subtitle: String
  var description: String
  var icon: String
  
  var body: some View {
    HStack(alignment: .center, spacing: 20) {
      Image(systemName: icon)
        .font(.largeTitle)
        .foregroundColor(Color.blue)
      
      VStack(alignment: .leading, spacing: 4) {
        HStack {
          Text(title.uppercased())
            .font(.title)
            .fontWeight(.heavy)
          Spacer()
          Text(subtitle.uppercased())
            .font(.footnote)
            .fontWeight(.heavy)
            .foregroundColor(Color.blue)
        }
        Divider().padding(.bottom, 4)
        Text(description)
          .font(.footnote)
          .foregroundColor(.secondary)
          .fixedSize(horizontal: false, vertical: true)
      }
    }
  }
}

struct GuideComponent_Previews: PreviewProvider {
  static var previews: some View {
    GuideComponent(
      title: "Title",
      subtitle: "Swipe right",
      description: "This is a placeholder sentence. This is a placeholder sentence. This is a placeholder sentence.",
      icon: "heart.circle")
      .previewLayout(.sizeThatFits)
  }
}
