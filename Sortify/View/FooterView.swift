//  FooterView.swift
//  Sortify
//
//  Created by mido mj on 3/15/25.

import SwiftUI

struct FooterView: View {
  // MARK: - PROPERTIES
  @Binding var showBookingAlert: Bool
  let haptics = UINotificationFeedbackGenerator()
  
  var body: some View {
    HStack {
        Button {
            playSound(sound: "sound-click", type: "mp3")
            self.haptics.notificationOccurred(.success)
        } label: {
            Image(systemName: "xmark.circle")
              .font(.system(size: 42, weight: .light))
        }

      Spacer()
      
      Button(action: {
        // ACTION
        playSound(sound: "sound-click", type: "mp3")
        self.haptics.notificationOccurred(.success)
        self.showBookingAlert.toggle()
      }) {
        Text("Book Destination".uppercased())
          .font(.system(.subheadline, design: .rounded))
          .fontWeight(.heavy)
          .padding(.horizontal, 20)
          .padding(.vertical, 12)
          .accentColor(Color.blue)
          .background(
            Capsule().stroke(Color.blue, lineWidth: 2)
          )
      }
      
      Spacer()
        Button {
            playSound(sound: "sound-click", type: "mp3")
            self.haptics.notificationOccurred(.success)
        } label: {
            Image(systemName: "heart.circle")
              .font(.system(size: 42, weight: .light))
        }
    }
    .padding()
  }
}

struct FooterView_Previews: PreviewProvider {
  @State static var showAlert: Bool = false
  
  static var previews: some View {
    FooterView(showBookingAlert: $showAlert)
      .previewLayout(.fixed(width: 375, height: 80))
  }
}
